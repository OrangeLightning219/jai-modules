#import "Basic";
#import "Math";

Jolt :: #import,file "module.jai"( Layers, Broad_Phase_Layer );

Layers :: enum u32
{
    NON_MOVING :: 0;
    MOVING :: 1;
}

Broad_Phase_Layer :: enum u32
{
    NON_MOVING :: 0;
    MOVING :: 1;
}

main :: ()
{
    map_collisions :: ()
    {
        Jolt.enable_collision( .NON_MOVING, .MOVING );

        Jolt.map_object_to_broad_phase_layer( .NON_MOVING, .NON_MOVING );
        Jolt.map_object_to_broad_phase_layer( .MOVING, .MOVING );
    }

    ok := Jolt.init( map_collisions );
    assert( ok );

    box: Jolt.Box_Shape;
    box.layer = .NON_MOVING;
    box.position = .{ 0, -1, 0 };
    box.extent = .{ 200, 2, 200 };
    floor := Jolt.add_box( box );

    s: Jolt.Sphere_Shape;
    s.layer = .MOVING;
    s.motion_type = .DYNAMIC;
    s.position = .{ 0, 2, 0 };
    s.radius = 0.5;
    sphere := Jolt.add_sphere( s, .ACTIVATE );

    sphere_velocity := Vector3.{ 0, -5, 0 };
    Jolt.set_velocity( sphere, sphere_velocity );

    dt := 1.0 / 60.0;

    Jolt.optimize_broad_phase();

    step := 0;
    while Jolt.is_active( sphere )
    {
        step += 1;
        Jolt.set_dt( dt );

        position := Jolt.get_position( sphere );
        velocity := Jolt.get_velocity( sphere );
        print( "Step %: Position = %, Velocity = %\n", step, position, velocity );

        collision_steps: s32 = 1;
        Jolt.update( collision_steps );
    }

    Jolt.remove_and_destroy_body( sphere );
    Jolt.remove_and_destroy_body( floor );

    Jolt.deinit();
}
