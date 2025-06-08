Mikk_Interface :: struct
{
    get_num_faces: ( c: *Mikk_Context ) -> s32 #c_call;
    get_num_vertices_of_face: ( c: *Mikk_Context, face_index: s32 ) -> s32 #c_call;
    get_position: ( c: *Mikk_Context, out_position: *float, face_index: s32, vertex_index: s32 ) #c_call;
    get_normal: ( c: *Mikk_Context, out_normal: *float, face_index: s32, vertex_index: s32 ) #c_call;
    get_tex_coord: ( c: *Mikk_Context, out_tex_coord: *float, face_index: s32, vertex_index: s32 ) #c_call;

    set_tangent_space_basic: ( c: *Mikk_Context, tangent: *float, sign: float, face_index: s32, vertex_index: s32 ) #c_call;
    set_tangent_space: ( c: *Mikk_Context, tangent: *float, bitangent: *float, mag_s: float, mag_t: float, is_orientation_preserving: s32, face_index: s32, vertex_index: s32 ) #c_call;
}

Mikk_Context :: struct
{
    _interface: *Mikk_Interface;
    user_data: *void;
}

genTangSpaceDefault :: ( c: *Mikk_Context ) -> s32 #foreign mikktspace;

generate_tangent_space :: inline ( c: *Mikk_Context ) -> bool
{
    return xx genTangSpaceDefault( c );
}

#if OS == .WINDOWS
{
    mikktspace :: #library,no_dll "windows/mikktspace";
}
