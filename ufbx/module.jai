#scope_file
#import "Basic";
#import "Math";

#scope_module
Ptrdiff_T :: s64;
ufbx_vec2 :: Vector2;
ufbx_vec3 :: Vector3;
ufbx_vec4 :: Vector4;
ufbx_quat :: Quaternion;
size_t :: u64;

#if OS == .WINDOWS
{
    #load "windows.jai";
}
#scope_export

to_string :: ( s: Ufbx_String ) -> string
{
    result: string;
    result.data = s.data;
    result.count = xx s.length;
    return result;
}

to_matrix :: (m: Ufbx_Matrix) -> Matrix4
{
    r: Matrix4 = ---;

    r._11 = m.m00;
    r._21 = m.m10;
    r._31 = m.m20;
    r._41 = 0;

    r._12 = m.m01;
    r._22 = m.m11;
    r._32 = m.m21;
    r._42 = 0;

    r._13 = m.m02;
    r._23 = m.m12;
    r._33 = m.m22;
    r._43 = 0;

    r._14 = m.m03;
    r._24 = m.m13;
    r._34 = m.m23;
    r._44 = 1;

    return r;
}

ufbx_load_file :: ( filename: string, opts: *Ufbx_Load_Opts ) -> *Ufbx_Scene, Ufbx_Error
{
    error: Ufbx_Error;
    scene := ufbx_load_file( to_c_string( filename,, temp ), opts, *error );
    return scene, error;
}

ufbx_get_vertex_real :: inline ( v: *Ufbx_Vertex_Real, index: size_t ) -> Ufbx_Real
{
    assert( index < v.indices.count );
    return v.values.data[ cast( s32 )v.indices.data[ index ] ];
}

ufbx_get_vertex_vec2 :: inline ( v: *Ufbx_Vertex_Vec2, index: size_t ) -> ufbx_vec2
{
    assert( index < v.indices.count );
    return v.values.data[ cast( s32 )v.indices.data[ index ] ];
}

ufbx_get_vertex_vec3 :: inline ( v: *Ufbx_Vertex_Vec3, index: size_t ) -> ufbx_vec3
{
    assert( index < v.indices.count );
    return v.values.data[ cast( s32 )v.indices.data[ index ] ];
}

ufbx_get_vertex_vec4 :: inline ( v: *Ufbx_Vertex_Vec4, index: size_t ) -> ufbx_vec4
{
    assert( index < v.indices.count );
    return v.values.data[ cast( s32 )v.indices.data[ index ] ];
}

ufbx_get_skin_vertex_matrix :: inline ( skin: *Ufbx_Skin_Deformer, vertex: size_t, fallback: *Ufbx_Matrix ) -> Ufbx_Matrix
{
    return ufbx_catch_get_skin_vertex_matrix( null, skin, vertex, fallback );
}
#load "lists.jai";
