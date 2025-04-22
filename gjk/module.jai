#module_parameters ( Collider_Type: Type );

#if OS == .WINDOWS
{
    gjk :: #library,no_dll "windows/gjk";
}

GJK_MAX_ITERATIONS :: 20;

Support :: struct 
{
    a_index, b_index: s32; /* in */
    a: Vector3; /* in */
    b: Vector3; /* in */
    da: Vector3; /* out */
    db: Vector3; /* out */
}

Simplex :: struct 
{
    max_iter, iter: s32;
    hit, cnt: s32;
    v: [ 4 ]Vertex;
    bc: Vector4;
    D: float;
    
    Vertex :: struct 
    {
        a: Vector3;
        b: Vector3;
        p: Vector3;
        a_index, b_index: s32;
    }
}

Result :: struct 
{
    using c_result: C_Result;
    normal_on_b: Vector3;
    distance: float;
}

run :: ( s: *Simplex, sup: *Support ) -> s32 #foreign gjk "gjk";
analyze :: ( res: *C_Result, s: *Simplex ) #foreign gjk "gjk_analyze";
quad :: ( res: *C_Result, a_radius: float, b_radius: float ) #foreign gjk "gjk_quad";

set_procs :: ( support_proc: Support_Proc, get_radius_proc: Get_Radius_Proc )
{
    support = support_proc;
    get_radius = get_radius_proc;
}

check_collision :: ( shape_a: Collider_Type, shape_b: Collider_Type, initial_direction: Vector3 ) -> Result
{
    s: Support;
    s.a, s.a_index = support( shape_a, initial_direction );
    s.b, s.b_index = support( shape_b, -initial_direction );
    
    simplex: Simplex;
    while run( *simplex, *s )
    {
        s.a, s.a_index = support( shape_a, s.da );
        s.b, s.b_index = support( shape_b, s.db );
    }
    
    result: Result;
    analyze( *result.c_result, *simplex );
    quad( *result.c_result, get_radius( shape_a ), get_radius( shape_b ) );
    result.normal_on_b = normalize( result.point_on_a - result.point_on_b );
    // result.distance = sqrt( result.distance_squared );
    result.distance = length(result.point_on_b - result.point_on_a);
    return result;
}

Support_Proc :: #type ( shape: Collider_Type, direction: Vector3 ) -> Vector3, s32;
Get_Radius_Proc :: #type ( shape: Collider_Type ) -> float;

#scope_module 
support: Support_Proc;
get_radius: Get_Radius_Proc;

C_Result :: struct 
{
    hit: s32;
    point_on_a: Vector3;
    point_on_b: Vector3;
    distance_squared: float;
    iterations: s32;
}

#import "Basic";
#import "Math";
