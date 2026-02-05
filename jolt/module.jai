#module_parameters( Object_Layer: Type, Broad_Phase_Layer: Type, Entity_Handle: Type, Entity: Type, LINK_STATIC := false );
#assert type_info( Object_Layer ).type == .ENUM;
#assert type_info( Broad_Phase_Layer ).type == .ENUM;
#assert type_info( Object_Layer ).internal_type.signed == false;
#assert type_info( Object_Layer ).internal_type.runtime_size == 4;
#assert type_info( Broad_Phase_Layer ).internal_type.signed == false;
#assert type_info( Broad_Phase_Layer ).internal_type.runtime_size == 4;

#scope_file
#import "Basic";
#import "Math";
#import "Hash_Table";

#if LINK_STATIC
{
    jolt :: #library,link_always,no_dll "./windows/static/Jolt";
}

libcpmt :: #library,link_always,system "libcpmt";

#scope_module
Vec3 :: Vector3;
Vec4 :: Vector4;
Quat :: Quaternion;
Matrix4x4 :: Matrix4;
ObjectLayer :: Object_Layer;
BroadPhaseLayer :: Broad_Phase_Layer;

#scope_export

#if OS == .WINDOWS
{
    #load "windows.jai";
}

trace :: ( m: *u8 ) -> void #c_call
{
    write_string( to_string( m ) );
}

Physics_State :: struct
{
    job_system: *JobSystem;
    object_layer_pair_filter: *ObjectLayerPairFilter;
    broad_phase_interface: *BroadPhaseLayerInterface;
    object_vs_broad_phase_filter: *ObjectVsBroadPhaseLayerFilter;
    physics_system: *PhysicsSystem;
    body_interface: *BodyInterface;

    character_vs_character_collision: *CharacterVsCharacterCollision;
    character_contact_listener: *CharacterContactListener;
    contact_listener: *ContactListener;

    body_colliders: Table( BodyID, *Collider );
    character_controllers: Table( CharacterID, Character_Controller );

    dt: float;
}

Motion_Type :: MotionType;

#add_context physics: *Physics_State;

Map_Collisions_Proc :: #type ();
init :: ( map_collisions: Map_Collisions_Proc, trace_handler: TraceFunc = trace ) -> bool
{
    if !Init()
    {
        log_error( "Failed to initialize Jolt" );
        return false;
    }

    assert( context.physics == null );

    SetTraceHandler( trace_handler );

    result := New( Physics_State );
    context.physics = result;
    callback_context = context;

    result.job_system = JobSystemThreadPool_Create( null );
    assert( result.job_system != null );

    object_layer_count: u32 = xx type_info( Object_Layer ).values.count;
    broad_phase_layer_count: u32 = xx type_info( Broad_Phase_Layer ).values.count;

    result.object_layer_pair_filter = ObjectLayerPairFilterTable_Create( object_layer_count );
    assert( result.object_layer_pair_filter != null );

    result.broad_phase_interface = BroadPhaseLayerInterfaceTable_Create( object_layer_count, broad_phase_layer_count );
    assert( result.broad_phase_interface != null );

    map_collisions();

    result.object_vs_broad_phase_filter = ObjectVsBroadPhaseLayerFilterTable_Create( result.broad_phase_interface, broad_phase_layer_count, result.object_layer_pair_filter, object_layer_count );
    assert( result.object_vs_broad_phase_filter != null );

    s: PhysicsSystemSettings;
    s.maxBodies = 65536;
    s.numBodyMutexes = 0;
    s.maxBodyPairs = 65536;
    s.maxContactConstraints = 65536;
    s.broadPhaseLayerInterface = result.broad_phase_interface;
    s.objectLayerPairFilter = result.object_layer_pair_filter;
    s.objectVsBroadPhaseLayerFilter = result.object_vs_broad_phase_filter;
    result.physics_system = PhysicsSystem_Create( *s );
    result.body_interface = PhysicsSystem_GetBodyInterface( result.physics_system );

    result.character_vs_character_collision = CharacterVsCharacterCollision_CreateSimple();

    cp := New( CharacterContactListener_Procs );
    cp.OnContactAdded = on_character_body_contact_added;
    cp.OnContactRemoved = on_character_body_contact_removed;
    cp.OnCharacterContactAdded = on_character_character_contact_added;
    cp.OnCharacterContactRemoved = on_character_character_contact_removed;
    CharacterContactListener_SetProcs( cp );
    // TODO: Add user_data?
    result.character_contact_listener = CharacterContactListener_Create( null );

    p := New( ContactListener_Procs );
    p.OnContactAdded = on_contact_added;
    p.OnContactRemoved = on_contact_removed;
    ContactListener_SetProcs( p );
    // TODO: Add user_data?
    result.contact_listener = ContactListener_Create( null );
    PhysicsSystem_SetContactListener( result.physics_system, result.contact_listener );

    return true;
}

set_dt :: ( dt: float )
{
    context.physics.dt = dt;
}

deinit :: ()
{
    state := context.physics;
    JobSystem_Destroy( state.job_system );
    PhysicsSystem_Destroy( state.physics_system );
    Shutdown();
}

enable_collision :: inline ( layer1: Object_Layer, layer2: Object_Layer )
{
    state := context.physics;
    ObjectLayerPairFilterTable_EnableCollision( state.object_layer_pair_filter, layer1, layer2 );
    ObjectLayerPairFilterTable_EnableCollision( state.object_layer_pair_filter, layer2, layer1 );
}

map_object_to_broad_phase_layer :: ( object_layer: Object_Layer, broad_phase_layer: Broad_Phase_Layer )
{
    state := context.physics;
    BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer( state.broad_phase_interface, object_layer, broad_phase_layer );
}

Collision_Shape_Type :: enum
{
    NONE;
    BOX;
    SPHERE;
    CAPSULE;
}

Collision_Shape :: struct
{
    position: Vector3;
    rotation: Quaternion = .{ 0, 0, 0, 1 };
    previous_position: Vector3;
    previous_rotation: Quaternion = .{ 0, 0, 0, 1 };

    motion_type: MotionType = .STATIC;
    layer: Object_Layer;

    type: Collision_Shape_Type;
    union
    {
        extent: Vector3; // NOTE: For Box
        using capsule: struct
        {
            radius: float; // NOTE: Also used for sphere radius
            height: float; // NOTE: This is only the height of the cylinder part not the entire capsule. The height of the entire capsule is height + 2 * radius.
        }
    }
}

make_box :: inline ( box: Collision_Shape ) -> *Shape
{
    assert( box.type == .BOX );
    half_extent := box.extent * 0.5;
    shape := BoxShape_Create( *half_extent, JPH_DEFAULT_CONVEX_RADIUS );
    return xx shape;
}

make_sphere :: inline ( sphere: Collision_Shape ) -> *Shape
{
    assert( sphere.type == .SPHERE );
    shape := SphereShape_Create( sphere.radius );
    return xx shape;
}

make_capsule :: inline ( capsule: Collision_Shape ) -> *Shape
{
    assert( capsule.type == .CAPSULE );
    shape := CapsuleShape_Create( capsule.height * 0.5, capsule.radius );
    return xx shape;
}

On_Contact_Added_Proc :: #type ( e: Collision_Event );
On_Contact_Removed_Proc :: #type ( e: Collision_Event );

Collision_Event :: struct
{
    self: Entity_Handle( Entity );
    other: Entity_Handle( Entity );
}

Collider :: struct
{
    enabled: bool;
    // TODO: Is using the starting activation here ok? What if we add a body with DONT_ACTIVATE, it becomes activated, it's disabled and then it's enabled again? Should it be enabled with DONT_ACTIVATE or ACTIVATE?
    // NOTE: Used only when reenabling colliders
    activation: Activation;
    // NOTE: shape is updated every frame with current position and rotation
    using shape: Collision_Shape;
    body: BodyID;

    entity_handle: Entity_Handle( Entity );
    on_contact_added: On_Contact_Added_Proc;
    on_contact_removed: On_Contact_Removed_Proc;
}

init_collider :: ( collider: *Collider, shape: Collision_Shape,
                   entity_handle: Entity_Handle, entity_position: Vector3, relative_position: Vector3,
                   activation: Activation )
{
    collider.shape = shape;
    collider.shape.position = entity_position + relative_position;
    collider.shape.previous_position = collider.position;
    collider.activation = activation;
    collider.entity_handle = entity_handle;

    s: *Shape;
    if shape.type ==
    {
    case .BOX;
        s = make_box( collider.shape );
    case .SPHERE;
        s = make_sphere( collider.shape );
    case .CAPSULE;
        s = make_capsule( collider.shape );
    case; assert( false );
    }

    settings := BodyCreationSettings_Create3( s, *collider.shape.position, *collider.shape.rotation, shape.motion_type, shape.layer );

    body := create_body( settings );
    collider.body = Body_GetID( body );

    BodyCreationSettings_Destroy( settings );

    activate_collider( collider );
}

activate_collider :: ( collider: *Collider )
{
    state := context.physics;
    if !collider.enabled
    {
        collider.enabled = true;
        add_body( collider.body, collider.activation );
        table_add( *state.body_colliders, collider.body, collider );
    }
    else
    {
        assert( false );
    }
}

deactivate_collider :: ( collider: *Collider )
{
    state := context.physics;
    if collider.enabled
    {
        collider.enabled = false;
        remove_body( collider.body );
        table_remove( *state.body_colliders, collider.body );
    }
    else
    {
        assert( false );
    }
}

deactivate_and_destroy_collider :: ( collider: *Collider )
{
    if collider.enabled
    {
        deactivate_collider( collider );
    }
    destroy_body( collider.body );
}

create_body :: inline ( settings: *BodyCreationSettings ) -> *Body
{
    state := context.physics;
    return BodyInterface_CreateBody( state.body_interface, settings );
}

add_body :: inline ( body: BodyID, activation := Activation.DONT_ACTIVATE )
{
    state := context.physics;
    BodyInterface_AddBody( state.body_interface, body, activation );
}

create_and_add_body :: inline ( settings: *BodyCreationSettings, activation := Activation.DONT_ACTIVATE ) -> BodyID
{
    body := create_body( settings );
    id := Body_GetID( body );
    add_body( id, activation );
    return id;
}

destroy_body :: inline ( body: BodyID )
{
    state := context.physics;
    BodyInterface_DestroyBody( state.body_interface, body );
}

remove_body :: inline ( body: BodyID )
{
    state := context.physics;
    BodyInterface_RemoveBody( state.body_interface, body );
}

remove_and_destroy_body :: inline ( body: BodyID )
{
    state := context.physics;
    remove_body( body );
    destroy_body( body );
}

Character_Controller :: struct
{
    shape: Collision_Shape;
    shape_offset: Vector3;
    character_id: CharacterID;
    character: *CharacterVirtual;
    settings: CharacterVirtualSettings;

    entity_handle: Entity_Handle( Entity );
    on_contact_added: On_Contact_Added_Proc;
    on_contact_removed: On_Contact_Removed_Proc;
}

add_character :: ( entity_handle: Entity_Handle, capsule: Collision_Shape, position: Vector3, shape_offset: Vector3, max_slope_angle := 45.0 ) -> *Character_Controller
{
    assert( capsule.type == .CAPSULE );
    state := context.physics;

    result: Character_Controller;
    result.entity_handle = xx,force entity_handle;
    result.shape = capsule;
    result.shape_offset = shape_offset;

    capsule_shape := CapsuleShape_Create( capsule.height * 0.5, capsule.radius );
    shape_settings := RotatedTranslatedShapeSettings_Create2( *shape_offset, *capsule.rotation, xx capsule_shape );

    shape := RotatedTranslatedShapeSettings_CreateShape( shape_settings );
    ShapeSettings_Destroy( xx shape_settings );

    settings: CharacterVirtualSettings;
    CharacterVirtualSettings_Init( *settings );

    settings.base.maxSlopeAngle = degrees_to_radians( max_slope_angle );
    settings.base.shape = xx shape;
    settings.base.supportingVolume = .{ .{ 0, 1, 0 }, -capsule.radius };

    result.character = CharacterVirtual_Create( *settings, *position, *capsule.rotation, 0, state.physics_system );
    result.settings = settings;

    CharacterVirtual_SetCharacterVsCharacterCollision( result.character, state.character_vs_character_collision );
    CharacterVsCharacterCollisionSimple_AddCharacter( state.character_vs_character_collision, result.character );

    set_up( *result, .{ 0, 1, 0 } );
    set_rotation( *result, .{ 0, 0, 0, 1 } );

    CharacterVirtual_SetListener( result.character, state.character_contact_listener );

    result.character_id = CharacterVirtual_GetID( result.character );

    return table_add( *state.character_controllers, result.character_id, result );
}

remove_character :: ( controller: *Character_Controller )
{
    if !controller then return;

    state := context.physics;
    CharacterVsCharacterCollisionSimple_RemoveCharacter( state.character_vs_character_collision, controller.character );
    CharacterBase_Destroy( xx controller.character );
    Shape_Destroy( controller.settings.base.shape );
    table_remove( *state.character_controllers, controller.character_id );
}

update_character_controller :: ( controller: *Character_Controller ) -> Vector3
{
    if !controller then return .{};

    state := context.physics;
    settings: ExtendedUpdateSettings;
    settings.stickToFloorStepDown = .{ 0, -0.5, 0 };
    settings.walkStairsStepUp = .{ 0, 0.4, 0 };
    settings.walkStairsMinStepForward = 0.02;
    settings.walkStairsStepForwardTest = 0.15;
    settings.walkStairsCosAngleForwardContact = cos( degrees_to_radians( 75 ) );
    settings.walkStairsStepDownExtra = .{};

    previous_position := get_position( controller );

    CharacterVirtual_ExtendedUpdate( controller.character, state.dt, *settings, controller.shape.layer, state.physics_system, null, null );

    position := get_position( controller );
    controller.shape.previous_position = controller.shape.position;
    controller.shape.position = position + controller.shape_offset;
    return position - previous_position;
}

update_ground_velocity :: inline ( controller: *Character_Controller )
{
    CharacterVirtual_UpdateGroundVelocity( controller.character );
}

get_ground_velocity :: inline ( controller: *Character_Controller ) -> Vector3
{
    result: Vector3;
    CharacterBase_GetGroundVelocity( xx controller.character, *result );
    return result;
}

get_ground_state :: inline ( controller: *Character_Controller ) -> GroundState
{
    return CharacterBase_GetGroundState( xx controller.character );
}

get_velocity :: inline ( controller: *Character_Controller ) -> Vector3
{
    result: Vector3;
    CharacterVirtual_GetLinearVelocity( controller.character, *result );
    return result;
}

set_velocity :: inline ( controller: *Character_Controller, velocity: Vector3 )
{
    CharacterVirtual_SetLinearVelocity( controller.character, *velocity );
}

set_position :: inline ( controller: *Character_Controller, position: Vector3 )
{
    CharacterVirtual_SetPosition( controller.character, *position );
}

get_up :: inline ( controller: *Character_Controller ) -> Vector3
{
    result: Vector3;
    CharacterBase_GetUp( xx controller.character, *result );
    return result;
}

set_up :: inline ( controller: *Character_Controller, up: Vector3 )
{
    CharacterBase_SetUp( xx controller.character, *up );
}

set_rotation :: inline ( controller: *Character_Controller, rotation: Quaternion )
{
    CharacterVirtual_SetRotation( controller.character, *rotation );
}

get_rotation :: ( controller: *Character_Controller ) -> Quaternion
{
    result: Quaternion;
    CharacterVirtual_GetRotation( controller.character, *result );
    return result;
}

get_position :: ( controller: *Character_Controller ) -> Vector3
{
    result: Vector3;
    CharacterVirtual_GetPosition( controller.character, *result );
    return result;
}

get_gravity :: inline () -> Vector3
{
    state := context.physics;
    result: Vector3;
    PhysicsSystem_GetGravity( state.physics_system, *result );
    return result;
}

optimize_broad_phase :: inline ()
{
    state := context.physics;
    PhysicsSystem_OptimizeBroadPhase( state.physics_system );
}

is_active :: inline ( body: BodyID ) -> bool
{
    state := context.physics;
    return BodyInterface_IsActive( state.body_interface, body );
}

get_position :: inline ( body: BodyID ) -> Vector3
{
    state := context.physics;
    result: Vector3;
    BodyInterface_GetCenterOfMassPosition( state.body_interface, body, *result );
    return result;
}

get_rotation :: inline ( body: BodyID ) -> Quaternion
{
    state := context.physics;
    result: Quaternion;
    BodyInterface_GetRotation( state.body_interface, body, *result );
    return result;
}

get_velocity :: inline ( body: BodyID ) -> Vector3
{
    state := context.physics;
    result: Vector3;
    BodyInterface_GetLinearVelocity( state.body_interface, body, *result );
    return result;
}

set_velocity :: inline ( body: BodyID, velocity: Vector3 )
{
    state := context.physics;
    BodyInterface_SetLinearVelocity( state.body_interface, body, *velocity );
}

move_kinematic :: inline ( body: BodyID, target_position: Vector3, target_rotation: Quaternion = .{ 0, 0, 0, 1 } )
{
    state := context.physics;
    BodyInterface_MoveKinematic( state.body_interface, body, *target_position, *target_rotation, state.dt );
}

update :: inline ( steps: int )
{
    state := context.physics;
    PhysicsSystem_Update( state.physics_system, state.dt, xx steps, state.job_system );
}

#scope_file

callback_context: #Context;

on_contact_added :: ( user_data: *void, body1: *Body, body2: *Body,
                      manifold: *ContactManifold,
                      settings: *ContactSettings ) -> void #c_call
{
    push_context callback_context
    {
        // log_warning( "normal contact added" );
        state := context.physics;

        ok, collider := table_find_new( *state.body_colliders, Body_GetID( body1 ) );
        assert( ok );
        ok=, other_collider := table_find_new( *state.body_colliders, Body_GetID( body2 ) );
        assert( ok );

        e: Collision_Event;
        e.self = collider.entity_handle;
        e.other = other_collider.entity_handle;
        if collider.on_contact_added
        {
            collider.on_contact_added( e );
        }

        if other_collider.on_contact_added
        {
            other_collider.on_contact_added( e );
        }
    }
}

on_contact_removed :: ( user_data: *void, sub_shape_pair: *SubShapeIDPair ) -> void #c_call
{
    push_context callback_context
    {
        // log_warning( "normal contact removed" );
        state := context.physics;

        ok, collider := table_find_new( *state.body_colliders, sub_shape_pair.Body1ID );
        assert( ok );
        ok=, other_collider := table_find_new( *state.body_colliders, sub_shape_pair.Body2ID );
        assert( ok );

        e: Collision_Event;
        e.self = collider.entity_handle;
        e.other = other_collider.entity_handle;
        if collider.on_contact_removed
        {
            collider.on_contact_removed( e );
        }

        if other_collider.on_contact_removed
        {
            other_collider.on_contact_removed( e );
        }
    }
}

on_character_body_contact_added :: ( user_data: *void, character: *CharacterVirtual,
                                     body_id: BodyID, sub_shape_id: SubShapeID,
                                     position: *Vector3, normal: *Vector3,
                                     io_settings: *CharacterContactSettings ) #c_call
{
    push_context callback_context
    {
        // log_warning( "character body contact added" );
        state := context.physics;
        controller := table_find_pointer( *state.character_controllers, CharacterVirtual_GetID( character ) );
        assert( controller != null );
        ok, collider := table_find_new( *state.body_colliders, body_id );
        assert( ok );

        e: Collision_Event;
        e.self = controller.entity_handle;
        e.other = collider.entity_handle;

        if controller.on_contact_added
        {
            controller.on_contact_added( e );
        }

        if collider.on_contact_added
        {
            collider.on_contact_added( e );
        }
    }
}

on_character_body_contact_removed :: ( user_data: *void, character: *CharacterVirtual,
                                       body_id: BodyID, sub_shape_id: SubShapeID ) #c_call
{
    push_context callback_context
    {
        // log_warning( "character body contact removed" );
        state := context.physics;
        controller := table_find_pointer( *state.character_controllers, CharacterVirtual_GetID( character ) );
        assert( controller != null );
        ok, collider := table_find_new( *state.body_colliders, body_id );
        assert( ok );

        e: Collision_Event;
        e.self = controller.entity_handle;
        e.other = collider.entity_handle;

        if controller.on_contact_removed
        {
            controller.on_contact_removed( e );
        }

        if collider.on_contact_removed
        {
            collider.on_contact_removed( e );
        }
    }
}

on_character_character_contact_added :: ( user_data: *void, character: *CharacterVirtual,
                                          other_character: *CharacterVirtual, sub_shape_id2: SubShapeID,
                                          contact_position: *RVec3, contact_normal: *Vec3,
                                          io_settings: *CharacterContactSettings ) -> void #c_call
{
    push_context callback_context
    {
        // log_warning( "character character contact added" );
        state := context.physics;
        controller := table_find_pointer( *state.character_controllers, CharacterVirtual_GetID( character ) );
        assert( controller != null );
        other_controller := table_find_pointer( *state.character_controllers, CharacterVirtual_GetID( other_character ) );
        assert( other_controller != null );

        e: Collision_Event;
        e.self = controller.entity_handle;
        e.other = other_controller.entity_handle;

        if controller.on_contact_added
        {
            controller.on_contact_added( e );
        }

        if other_controller.on_contact_added
        {
            other_controller.on_contact_added( e );
        }
    }
}

on_character_character_contact_removed :: ( user_data: *void, character: *CharacterVirtual,
                                            other_character_id: CharacterID,
                                            sub_shape_id2: SubShapeID ) -> void #c_call
{
    push_context callback_context
    {
        // log_warning( "character character contact removed" );
        state := context.physics;
        controller := table_find_pointer( *state.character_controllers, CharacterVirtual_GetID( character ) );
        assert( controller != null );
        other_controller := table_find_pointer( *state.character_controllers, other_character_id );
        assert( other_controller != null );

        e: Collision_Event;
        e.self = controller.entity_handle;
        e.other = other_controller.entity_handle;

        if controller.on_contact_removed
        {
            controller.on_contact_removed( e );
        }

        if other_controller.on_contact_removed
        {
            other_controller.on_contact_removed( e );
        }
    }
}

degrees_to_radians :: inline ( degrees: float ) -> float
{
    return degrees * PI / 180.0;
}

radians_to_degrees :: inline ( radians: float ) -> float
{
    return radians * 180.0 / PI;
}

log_warning :: ( format_string: string, args: ..Any, loc := #caller_location, flags := Log_Flags.NONE, user_flags: u32 = 0, section: *Log_Section = null )
{
    new_flags := flags | .WARNING;
    log( format_string, ..args, loc, new_flags, user_flags, section );
} @PrintLike
