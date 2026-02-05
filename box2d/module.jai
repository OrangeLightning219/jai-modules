#module_parameters( Collision_Layer: Type, ENABLE_ASSERT := true );

#scope_file
#import "Basic";
#import "Math";

#scope_module
Vec2 :: Vector2;

#scope_export
MAX_POLYGON_VERTICES :: B2_MAX_POLYGON_VERTICES;

GetAngle :: ( q: Rot ) -> float
{
    return Atan2( q.s, q.c );
}

MakeRot :: ( radians: float ) -> Rot
{
    cs := ComputeCosSin( radians );
    return .{ cs.cosine, cs.sine };
}

DefaultTransform :: () -> Transform
{
    return .{ .{}, MakeRot( 0 ) };
}

#if OS == .WINDOWS
{
    #if ENABLE_ASSERT
    {
        #load "windows_debug.jai";
    }
    else
    {
        #load "windows.jai";
    }
}

// The query filter is used to filter collisions between queries and shapes. For example,
// you may want a ray-cast representing a projectile to hit players and the static environment
// but not debris.
// @ingroup shape
QueryFilter :: struct
{
    // The collision category bits of this query. Normally you would just set one bit.
    categoryBits: Collision_Layer;

    // The collision mask bits. This states the shape categories that this
    // query would accept for collision.
    maskBits: Collision_Layer;
}
#assert type_info( Collision_Layer ).type == .ENUM;
#assert type_info( Collision_Layer ).internal_type.signed == false;
#assert type_info( Collision_Layer ).internal_type.runtime_size == 8;
