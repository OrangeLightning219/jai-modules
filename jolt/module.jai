#module_parameters( Object_Layer: Type, Broad_Phase_Layer: Type, LINK_STATIC := false );
#assert type_info( Object_Layer ).type == .ENUM;
#assert type_info( Broad_Phase_Layer ).type == .ENUM;
#assert type_info( Object_Layer ).internal_type.signed == false;
#assert type_info( Object_Layer ).internal_type.runtime_size == 4;
#assert type_info( Broad_Phase_Layer ).internal_type.signed == false;
#assert type_info( Broad_Phase_Layer ).internal_type.runtime_size == 4;

#scope_file
#import "Basic";
#import "Math";

#if LINK_STATIC
{
    jolt :: #library,link_always,no_dll "./windows/static/Jolt";
}
else
{
    jolt :: #library,link_always "./windows/dynamic/Jolt";
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

    dt: float;
}

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

_Shape :: struct
{
    position: Vector3;
    rotation: Quaternion = .{ 0, 0, 0, 1 };
    motion_type: MotionType = .STATIC;
    layer: Object_Layer;
}

Box_Shape :: struct
{
    #as using shape: _Shape;
    extent: Vector3;
}

add_box :: ( box: Box_Shape, activation := Activation.DONT_ACTIVATE ) -> BodyID
{
    state := context.physics;

    half_extent := box.extent * 0.5;
    shape := BoxShape_Create( *half_extent, JPH_DEFAULT_CONVEX_RADIUS );

    settings := BodyCreationSettings_Create3( xx shape, *box.position, *box.rotation, box.motion_type, box.layer );

    id := BodyInterface_CreateAndAddBody( state.body_interface, settings, activation );

    BodyCreationSettings_Destroy( settings );
    return id;
}

Sphere_Shape :: struct
{
    #as using shape: _Shape;
    radius: float;
}

add_sphere :: ( sphere: Sphere_Shape, activation := Activation.DONT_ACTIVATE ) -> BodyID
{
    state := context.physics;

    shape := SphereShape_Create( sphere.radius );
    settings := BodyCreationSettings_Create3( xx shape, *sphere.position, *sphere.rotation, sphere.motion_type, sphere.layer );

    id := BodyInterface_CreateAndAddBody( state.body_interface, settings, activation );

    BodyCreationSettings_Destroy( settings );
    return id;
}

remove_and_destroy_body :: inline ( body: BodyID )
{
    state := context.physics;
    BodyInterface_RemoveAndDestroyBody( state.body_interface, body );
}

remove_body :: inline ( body: BodyID )
{
    state := context.physics;
    BodyInterface_RemoveBody( state.body_interface, body );
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

// Process character input
// Pre physics update:
//  - Set entity velocities and rotations
//  - Set character velocities and rotations
//  - Call Character::ExtendedUpdate
// Optional post physics update   // Step physics
