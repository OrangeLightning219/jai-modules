#import "Basic";
using Box2D :: #import,file "module.jai";

main :: ()
{
    world_def := DefaultWorldDef();
    world_def.gravity = .{0, -10.0};
    world_id := CreateWorld(*world_def);

    ground_body_def := DefaultBodyDef();
    ground_body_def.position = .{0, -10.0};
    ground_id := CreateBody(world_id, *ground_body_def);

    ground_box := MakeBox(50.0, 10.0);
    ground_shape_def := DefaultShapeDef();
    CreatePolygonShape(ground_id, *ground_shape_def, *ground_box);

    body_def := DefaultBodyDef();
    body_def.type = .DYNAMIC_BODY;
    body_def.position = .{0, 4.0};
    body_id := CreateBody(world_id, *body_def);

    dynamic_box := MakeBox(1, 1);
    shape_def := DefaultShapeDef();
    shape_def.density = 1;
    shape_def.material.friction = 0.3;
    CreatePolygonShape(body_id, *shape_def, *dynamic_box);

    dt := 1.0 / 60.0;
    sub_steps :s32= 4;

    for 1..90
    {
        World_Step(world_id, dt, sub_steps);
        position := Body_GetPosition(body_id);
        rotation := Body_GetRotation(body_id);
        print("pos: %, angle: %\n", position, GetAngle(rotation));
    }

    DestroyWorld(world_id);
}