for_expansion :: ( list: Ufbx_Void_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Void;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Bool_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Bool;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Uint32_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Uint32;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Real_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Real;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Vec2_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Vec2;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Vec3_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Vec3;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Vec4_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Vec4;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_String_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_String;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Dom_Node_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Dom_Node;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Dom_Value_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Dom_Value;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Prop_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Prop;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Element_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Element;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Unknown_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Unknown;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Node_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Node;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Mesh_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Mesh;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Light_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Light;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Camera_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Camera;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Bone_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Bone;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Empty_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Empty;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Line_Curve_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Line_Curve;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Nurbs_Curve_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Nurbs_Curve;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Nurbs_Surface_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Nurbs_Surface;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Nurbs_Trim_Surface_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Nurbs_Trim_Surface;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Nurbs_Trim_Boundary_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Nurbs_Trim_Boundary;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Procedural_Geometry_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Procedural_Geometry;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Stereo_Camera_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Stereo_Camera;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Camera_Switcher_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Camera_Switcher;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Marker_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Marker;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Lod_Group_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Lod_Group;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Skin_Deformer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Skin_Deformer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Skin_Cluster_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Skin_Cluster;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Blend_Deformer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Blend_Deformer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Blend_Channel_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Blend_Channel;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Blend_Shape_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Blend_Shape;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Cache_Deformer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Cache_Deformer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Cache_File_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Cache_File;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Material_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Material;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Texture_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Texture;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Video_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Video;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Shader_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Shader;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Shader_Binding_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Shader_Binding;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Anim_Stack_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Anim_Stack;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Anim_Layer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Anim_Layer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Anim_Value_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Anim_Value;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Anim_Curve_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Anim_Curve;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Display_Layer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Display_Layer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Selection_Set_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Selection_Set;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Selection_Node_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Selection_Node;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Character_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Character;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Constraint_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Constraint;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Audio_Layer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Audio_Layer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Audio_Clip_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Audio_Clip;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Pose_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Pose;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Metadata_Object_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []*Ufbx_Metadata_Object;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Connection_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Connection;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Uv_Set_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Uv_Set;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Color_Set_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Color_Set;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Edge_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Edge;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Face_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Face;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Mesh_Part_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Mesh_Part;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Face_Group_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Face_Group;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Subdivision_Weight_Range_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Subdivision_Weight_Range;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Subdivision_Weight_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Subdivision_Weight;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Line_Segment_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Line_Segment;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Lod_Level_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Lod_Level;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Skin_Vertex_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Skin_Vertex;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Skin_Weight_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Skin_Weight;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Blend_Keyframe_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Blend_Keyframe;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Cache_Frame_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Cache_Frame;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Cache_Channel_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Cache_Channel;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Material_Texture_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Material_Texture;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Texture_Layer_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Texture_Layer;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Shader_Texture_Input_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Shader_Texture_Input;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Texture_File_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Texture_File;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Shader_Prop_Binding_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Shader_Prop_Binding;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Prop_Override_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Prop_Override;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Transform_Override_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Transform_Override;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Anim_Prop_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Anim_Prop;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Keyframe_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Keyframe;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Constraint_Target_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Constraint_Target;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Bone_Pose_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Bone_Pose;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Name_Element_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Name_Element;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Warning_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Warning;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Baked_Vec3_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Baked_Vec3;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Baked_Quat_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Baked_Quat;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Baked_Node_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Baked_Node;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Baked_Prop_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Baked_Prop;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Baked_Element_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Baked_Element;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Const_Uint32_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Const_Uint32;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Const_Real_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Const_Real;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Const_Prop_Override_Desc_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Const_Prop_Override_Desc;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

for_expansion :: ( list: Ufbx_Const_Transform_Override_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []Ufbx_Const_Transform_Override;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}

