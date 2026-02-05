#scope_file
#import "Basic";
#import "Math";
#import "Hash_Table";

#scope_module
Vec2 :: Vector2;

#scope_export

GetAngle :: (q: Rot) -> float
{
    return Atan2(q.s, q.c);
}

#if OS == .WINDOWS
{
    #load "windows.jai";
}

Physics_State :: struct
{
    world: WorldId;
    dt: float;
}
#add_context physics: *Physics_State;

init :: (gravity: Vector2 = .{0, -10.0}) -> bool
{
    result: bool;

    state := New(Physics_State);
    context.physics = state;

    world_def := DefaultWorldDef();
    world_def.gravity = gravity;
    state.world = CreateWorld(*world_def);
    result = World_IsValid(state.world);

    return result;
}

Collision_Shape_Type :: enum
{
    NONE;
    BOX;
    CIRCLE;
    CAPSULE;
}

Collider :: struct
{
    enabled: bool;
    body: BodyID;

    position: Vector2;
    rotation: float;
    rot: Rot;

    previous_position: Vector2;
    previous_rotation: float;
    previous_rot: Rot;

    body_type: BodyType = .STATIC_BODY;

    type: Collision_Shape_Type;
    union
    {
        extent: Vector2; // NOTE: For Box
        using capsule: struct
        {
            radius: float; // NOTE: Also used for sphere radius
            height: float; // NOTE: This is only the height of the cylinder part not the entire capsule. The height of the entire capsule is height + 2 * radius.
        }
    }

    // TODO: Callbacks
}

make_body :: (position: Vector2, type: BodyType) -> BodyID
{
    state := context.physics;
    body_def := DefaultBodyDef();
    body_def.type = type;
    body_def.position = position;
    body_id := CreateBody(state.world, *body_def);
    return body_id;
}
