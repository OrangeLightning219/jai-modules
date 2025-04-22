//
// This file was auto-generated using the following command:
//
// jai generate_bindings.jai
//



UFBX_REAL_IS_FLOAT :: 1;
UFBX_CPP :: 0;

UFBX_PLATFORM_GNUC :: 0;

UFBX_CPP11 :: 0;

UFBX_ERROR_STACK_MAX_DEPTH :: 8;
UFBX_PANIC_MESSAGE_LENGTH :: 128;
UFBX_ERROR_INFO_LENGTH :: 256;

UFBX_THREAD_GROUP_COUNT :: 4;

UFBX_HAS_FORCE_32BIT :: 1;

UFBX_NO_INDEX :: cast,trunc(u32) ~0;

UFBX_Lcl_Translation :: "Lcl Translation";

UFBX_Lcl_Rotation :: "Lcl Rotation";

UFBX_Lcl_Scaling :: "Lcl Scaling";

UFBX_RotationOrder :: "RotationOrder";

UFBX_ScalingPivot :: "ScalingPivot";

UFBX_RotationPivot :: "RotationPivot";

UFBX_ScalingOffset :: "ScalingOffset";

UFBX_RotationOffset :: "RotationOffset";

UFBX_PreRotation :: "PreRotation";

UFBX_PostRotation :: "PostRotation";

UFBX_Visibility :: "Visibility";

UFBX_Weight :: "Weight";

UFBX_DeformPercent :: "DeformPercent";

// Main floating point type used everywhere in ufbx, defaults to `double`.
// If you define `UFBX_REAL_IS_FLOAT` to any value, `ufbx_real` will be defined
// as `float` instead.
// You can also manually define `UFBX_REAL_TYPE` to any floating point type.
Ufbx_Real :: float;

// Null-terminated UTF-8 encoded string within an FBX file
Ufbx_String :: struct {
    data:   *u8;
    length: u64;
}

// Opaque byte buffer blob
Ufbx_Blob :: struct {
    data: *void;
    size: u64;
}

// Order in which Euler-angle rotation axes are applied for a transform
// NOTE: The order in the name refers to the order of axes *applied*,
// not the multiplication order: eg. `UFBX_ROTATION_ORDER_XYZ` is `Z*Y*X`
// [TODO: Figure out what the spheric rotation order is...]
Ufbx_Rotation_Order :: enum s32 {
    XYZ         :: 0;
    XZY         :: 1;
    YZX         :: 2;
    YXZ         :: 3;
    ZXY         :: 4;
    ZYX         :: 5;
    SPHERIC     :: 6;

    FORCE_32BIT :: 2147483647;

    UFBX_ROTATION_ORDER_XYZ         :: XYZ;
    UFBX_ROTATION_ORDER_XZY         :: XZY;
    UFBX_ROTATION_ORDER_YZX         :: YZX;
    UFBX_ROTATION_ORDER_YXZ         :: YXZ;
    UFBX_ROTATION_ORDER_ZXY         :: ZXY;
    UFBX_ROTATION_ORDER_ZYX         :: ZYX;
    UFBX_ROTATION_ORDER_SPHERIC     :: SPHERIC;

    UFBX_ROTATION_ORDER_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum :: enum s32 {
    UFBX_ROTATION_ORDER_COUNT :: 7;
}

// Explicit translation+rotation+scale transformation.
// NOTE: Rotation is a quaternion, not Euler angles!
Ufbx_Transform :: struct {
    translation: ufbx_vec3;
    rotation:    ufbx_quat;
    scale:       ufbx_vec3;
}

// 4x3 matrix encoding an affine transformation.
// `cols[0..2]` are the X/Y/Z basis vectors, `cols[3]` is the translation
Ufbx_Matrix :: struct {
    union {
        struct {
            m00: Ufbx_Real;
            m10: Ufbx_Real;
            m20: Ufbx_Real;
            m01: Ufbx_Real;
            m11: Ufbx_Real;
            m21: Ufbx_Real;
            m02: Ufbx_Real;
            m12: Ufbx_Real;
            m22: Ufbx_Real;
            m03: Ufbx_Real;
            m13: Ufbx_Real;
            m23: Ufbx_Real;
        }

        cols: [4] ufbx_vec3;
        v:    [12] Ufbx_Real;
    }
}

Ufbx_Void_List :: struct {
    data:  *void;
    count: u64;
}

Ufbx_Bool_List :: struct {
    data:  *bool;
    count: u64;
}
Ufbx_Uint32_List :: struct {
    data:  *u32;
    count: u64;
}
Ufbx_Real_List :: struct {
    data:  *Ufbx_Real;
    count: u64;
}
Ufbx_Vec2_List :: struct {
    data:  *ufbx_vec2;
    count: u64;
}
Ufbx_Vec3_List :: struct {
    data:  *ufbx_vec3;
    count: u64;
}
Ufbx_Vec4_List :: struct {
    data:  *ufbx_vec4;
    count: u64;
}
Ufbx_String_List :: struct {
    data:  *Ufbx_String;
    count: u64;
}

// -- Document object model
Ufbx_Dom_Value_Type :: enum s32 {
    NUMBER           :: 0;
    STRING           :: 1;
    ARRAY_I8         :: 2;
    ARRAY_I32        :: 3;
    ARRAY_I64        :: 4;
    ARRAY_F32        :: 5;
    ARRAY_F64        :: 6;
    ARRAY_RAW_STRING :: 7;
    ARRAY_IGNORED    :: 8;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_DOM_VALUE_NUMBER           :: NUMBER;
    UFBX_DOM_VALUE_STRING           :: STRING;
    UFBX_DOM_VALUE_ARRAY_I8         :: ARRAY_I8;
    UFBX_DOM_VALUE_ARRAY_I32        :: ARRAY_I32;
    UFBX_DOM_VALUE_ARRAY_I64        :: ARRAY_I64;
    UFBX_DOM_VALUE_ARRAY_F32        :: ARRAY_F32;
    UFBX_DOM_VALUE_ARRAY_F64        :: ARRAY_F64;
    UFBX_DOM_VALUE_ARRAY_RAW_STRING :: ARRAY_RAW_STRING;
    UFBX_DOM_VALUE_ARRAY_IGNORED    :: ARRAY_IGNORED;

    UFBX_DOM_VALUE_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_1 :: enum s32 {
    UFBX_DOM_VALUE_TYPE_COUNT :: 9;
}

Ufbx_Dom_Value :: struct {
    type:        Ufbx_Dom_Value_Type;
    value_str:   Ufbx_String;
    value_blob:  Ufbx_Blob;
    value_int:   s64;
    value_float: float64;
}

Ufbx_Dom_Node_List :: struct {
    data:  **Ufbx_Dom_Node;
    count: u64;
}
Ufbx_Dom_Value_List :: struct {
    data:  *Ufbx_Dom_Value;
    count: u64;
}

Ufbx_Dom_Node :: struct {
    name:     Ufbx_String;
    children: Ufbx_Dom_Node_List;
    values:   Ufbx_Dom_Value_List;
}

// Data type contained within the property. All the data fields are always
// populated regardless of type, so there's no need to switch by type usually
// eg. `prop->value_real` and `prop->value_int` have the same value (well, close)
// if `prop->type == UFBX_PROP_INTEGER`. String values are not converted from/to.
Ufbx_Prop_Type :: enum s32 {
    UNKNOWN          :: 0;
    BOOLEAN          :: 1;
    INTEGER          :: 2;
    NUMBER           :: 3;
    VECTOR           :: 4;
    COLOR            :: 5;
    COLOR_WITH_ALPHA :: 6;
    STRING           :: 7;
    DATE_TIME        :: 8;
    TRANSLATION      :: 9;
    ROTATION         :: 10;
    SCALING          :: 11;
    DISTANCE         :: 12;
    COMPOUND         :: 13;
    BLOB             :: 14;
    REFERENCE        :: 15;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_PROP_UNKNOWN          :: UNKNOWN;
    UFBX_PROP_BOOLEAN          :: BOOLEAN;
    UFBX_PROP_INTEGER          :: INTEGER;
    UFBX_PROP_NUMBER           :: NUMBER;
    UFBX_PROP_VECTOR           :: VECTOR;
    UFBX_PROP_COLOR            :: COLOR;
    UFBX_PROP_COLOR_WITH_ALPHA :: COLOR_WITH_ALPHA;
    UFBX_PROP_STRING           :: STRING;
    UFBX_PROP_DATE_TIME        :: DATE_TIME;
    UFBX_PROP_TRANSLATION      :: TRANSLATION;
    UFBX_PROP_ROTATION         :: ROTATION;
    UFBX_PROP_SCALING          :: SCALING;
    UFBX_PROP_DISTANCE         :: DISTANCE;
    UFBX_PROP_COMPOUND         :: COMPOUND;
    UFBX_PROP_BLOB             :: BLOB;
    UFBX_PROP_REFERENCE        :: REFERENCE;

    UFBX_PROP_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_2 :: enum s32 {
    UFBX_PROP_TYPE_COUNT :: 16;
}

// Property flags: Advanced information about properties, not usually needed.
Ufbx_Prop_Flags :: enum s32 {
    FLAG_ANIMATABLE   :: 1;

    FLAG_USER_DEFINED :: 2;

    FLAG_HIDDEN       :: 4;

    FLAG_LOCK_X       :: 16;
    FLAG_LOCK_Y       :: 32;
    FLAG_LOCK_Z       :: 64;
    FLAG_LOCK_W       :: 128;

    FLAG_MUTE_X       :: 256;
    FLAG_MUTE_Y       :: 512;
    FLAG_MUTE_Z       :: 1024;
    FLAG_MUTE_W       :: 2048;

    FLAG_SYNTHETIC    :: 4096;

    FLAG_ANIMATED     :: 8192;

    FLAG_NOT_FOUND    :: 16384;

    FLAG_CONNECTED    :: 32768;

    FLAG_NO_VALUE     :: 65536;

    FLAG_OVERRIDDEN   :: 131072;

    FLAG_VALUE_REAL   :: 1048576;
    FLAG_VALUE_VEC2   :: 2097152;
    FLAG_VALUE_VEC3   :: 4194304;
    FLAG_VALUE_VEC4   :: 8388608;
    FLAG_VALUE_INT    :: 16777216;
    FLAG_VALUE_STR    :: 33554432;
    FLAG_VALUE_BLOB   :: 67108864;

    FLAGS_FORCE_32BIT :: 2147483647;

    UFBX_PROP_FLAG_ANIMATABLE   :: FLAG_ANIMATABLE;

    UFBX_PROP_FLAG_USER_DEFINED :: FLAG_USER_DEFINED;

    UFBX_PROP_FLAG_HIDDEN       :: FLAG_HIDDEN;

    UFBX_PROP_FLAG_LOCK_X       :: FLAG_LOCK_X;
    UFBX_PROP_FLAG_LOCK_Y       :: FLAG_LOCK_Y;
    UFBX_PROP_FLAG_LOCK_Z       :: FLAG_LOCK_Z;
    UFBX_PROP_FLAG_LOCK_W       :: FLAG_LOCK_W;

    UFBX_PROP_FLAG_MUTE_X       :: FLAG_MUTE_X;
    UFBX_PROP_FLAG_MUTE_Y       :: FLAG_MUTE_Y;
    UFBX_PROP_FLAG_MUTE_Z       :: FLAG_MUTE_Z;
    UFBX_PROP_FLAG_MUTE_W       :: FLAG_MUTE_W;

    UFBX_PROP_FLAG_SYNTHETIC    :: FLAG_SYNTHETIC;

    UFBX_PROP_FLAG_ANIMATED     :: FLAG_ANIMATED;

    UFBX_PROP_FLAG_NOT_FOUND    :: FLAG_NOT_FOUND;

    UFBX_PROP_FLAG_CONNECTED    :: FLAG_CONNECTED;

    UFBX_PROP_FLAG_NO_VALUE     :: FLAG_NO_VALUE;

    UFBX_PROP_FLAG_OVERRIDDEN   :: FLAG_OVERRIDDEN;

    UFBX_PROP_FLAG_VALUE_REAL   :: FLAG_VALUE_REAL;
    UFBX_PROP_FLAG_VALUE_VEC2   :: FLAG_VALUE_VEC2;
    UFBX_PROP_FLAG_VALUE_VEC3   :: FLAG_VALUE_VEC3;
    UFBX_PROP_FLAG_VALUE_VEC4   :: FLAG_VALUE_VEC4;
    UFBX_PROP_FLAG_VALUE_INT    :: FLAG_VALUE_INT;
    UFBX_PROP_FLAG_VALUE_STR    :: FLAG_VALUE_STR;
    UFBX_PROP_FLAG_VALUE_BLOB   :: FLAG_VALUE_BLOB;

    UFBX_PROP_FLAGS_FORCE_32BIT :: FLAGS_FORCE_32BIT;
}

// Single property with name/type/value.
Ufbx_Prop :: struct {
    name:          Ufbx_String;

    _internal_key: u32;

    type:          Ufbx_Prop_Type;
    flags:         Ufbx_Prop_Flags;

    value_str:     Ufbx_String;
    value_blob:    Ufbx_Blob;
    value_int:     s64;
    union {
        value_real_arr: [4] Ufbx_Real;
        value_real:     Ufbx_Real;
        value_vec2:     ufbx_vec2;
        value_vec3:     ufbx_vec3;
        value_vec4:     ufbx_vec4;
    }
}

Ufbx_Prop_List :: struct {
    data:  *Ufbx_Prop;
    count: u64;
}

// List of alphabetically sorted properties with potential defaults.
// For animated objects in as scene from `ufbx_evaluate_scene()` this list
// only has the animated properties, the originals are stored under `defaults`.
Ufbx_Props :: struct {
    props:        Ufbx_Prop_List;
    num_animated: u64;

    defaults:     *Ufbx_Props;
}

Ufbx_Element_List :: struct {
    data:  **Ufbx_Element;
    count: u64;
}
Ufbx_Unknown_List :: struct {
    data:  **Ufbx_Unknown;
    count: u64;
}
Ufbx_Node_List :: struct {
    data:  **Ufbx_Node;
    count: u64;
}
Ufbx_Mesh_List :: struct {
    data:  **Ufbx_Mesh;
    count: u64;
}
Ufbx_Light_List :: struct {
    data:  **Ufbx_Light;
    count: u64;
}
Ufbx_Camera_List :: struct {
    data:  **Ufbx_Camera;
    count: u64;
}
Ufbx_Bone_List :: struct {
    data:  **Ufbx_Bone;
    count: u64;
}
Ufbx_Empty_List :: struct {
    data:  **Ufbx_Empty;
    count: u64;
}
Ufbx_Line_Curve_List :: struct {
    data:  **Ufbx_Line_Curve;
    count: u64;
}
Ufbx_Nurbs_Curve_List :: struct {
    data:  **Ufbx_Nurbs_Curve;
    count: u64;
}
Ufbx_Nurbs_Surface_List :: struct {
    data:  **Ufbx_Nurbs_Surface;
    count: u64;
}
Ufbx_Nurbs_Trim_Surface_List :: struct {
    data:  **Ufbx_Nurbs_Trim_Surface;
    count: u64;
}
Ufbx_Nurbs_Trim_Boundary_List :: struct {
    data:  **Ufbx_Nurbs_Trim_Boundary;
    count: u64;
}
Ufbx_Procedural_Geometry_List :: struct {
    data:  **Ufbx_Procedural_Geometry;
    count: u64;
}
Ufbx_Stereo_Camera_List :: struct {
    data:  **Ufbx_Stereo_Camera;
    count: u64;
}
Ufbx_Camera_Switcher_List :: struct {
    data:  **Ufbx_Camera_Switcher;
    count: u64;
}
Ufbx_Marker_List :: struct {
    data:  **Ufbx_Marker;
    count: u64;
}
Ufbx_Lod_Group_List :: struct {
    data:  **Ufbx_Lod_Group;
    count: u64;
}
Ufbx_Skin_Deformer_List :: struct {
    data:  **Ufbx_Skin_Deformer;
    count: u64;
}
Ufbx_Skin_Cluster_List :: struct {
    data:  **Ufbx_Skin_Cluster;
    count: u64;
}
Ufbx_Blend_Deformer_List :: struct {
    data:  **Ufbx_Blend_Deformer;
    count: u64;
}
Ufbx_Blend_Channel_List :: struct {
    data:  **Ufbx_Blend_Channel;
    count: u64;
}
Ufbx_Blend_Shape_List :: struct {
    data:  **Ufbx_Blend_Shape;
    count: u64;
}
Ufbx_Cache_Deformer_List :: struct {
    data:  **Ufbx_Cache_Deformer;
    count: u64;
}
Ufbx_Cache_File_List :: struct {
    data:  **Ufbx_Cache_File;
    count: u64;
}
Ufbx_Material_List :: struct {
    data:  **Ufbx_Material;
    count: u64;
}
Ufbx_Texture_List :: struct {
    data:  **Ufbx_Texture;
    count: u64;
}
Ufbx_Video_List :: struct {
    data:  **Ufbx_Video;
    count: u64;
}
Ufbx_Shader_List :: struct {
    data:  **Ufbx_Shader;
    count: u64;
}
Ufbx_Shader_Binding_List :: struct {
    data:  **Ufbx_Shader_Binding;
    count: u64;
}
Ufbx_Anim_Stack_List :: struct {
    data:  **Ufbx_Anim_Stack;
    count: u64;
}
Ufbx_Anim_Layer_List :: struct {
    data:  **Ufbx_Anim_Layer;
    count: u64;
}
Ufbx_Anim_Value_List :: struct {
    data:  **Ufbx_Anim_Value;
    count: u64;
}
Ufbx_Anim_Curve_List :: struct {
    data:  **Ufbx_Anim_Curve;
    count: u64;
}
Ufbx_Display_Layer_List :: struct {
    data:  **Ufbx_Display_Layer;
    count: u64;
}
Ufbx_Selection_Set_List :: struct {
    data:  **Ufbx_Selection_Set;
    count: u64;
}
Ufbx_Selection_Node_List :: struct {
    data:  **Ufbx_Selection_Node;
    count: u64;
}
Ufbx_Character_List :: struct {
    data:  **Ufbx_Character;
    count: u64;
}
Ufbx_Constraint_List :: struct {
    data:  **Ufbx_Constraint;
    count: u64;
}
Ufbx_Audio_Layer_List :: struct {
    data:  **Ufbx_Audio_Layer;
    count: u64;
}
Ufbx_Audio_Clip_List :: struct {
    data:  **Ufbx_Audio_Clip;
    count: u64;
}
Ufbx_Pose_List :: struct {
    data:  **Ufbx_Pose;
    count: u64;
}
Ufbx_Metadata_Object_List :: struct {
    data:  **Ufbx_Metadata_Object;
    count: u64;
}

Ufbx_Element_Type :: enum s32 {
    UNKNOWN             :: 0;
    NODE                :: 1;
    MESH                :: 2;
    LIGHT               :: 3;
    CAMERA              :: 4;
    BONE                :: 5;
    EMPTY               :: 6;
    LINE_CURVE          :: 7;
    NURBS_CURVE         :: 8;
    NURBS_SURFACE       :: 9;
    NURBS_TRIM_SURFACE  :: 10;
    NURBS_TRIM_BOUNDARY :: 11;
    PROCEDURAL_GEOMETRY :: 12;
    STEREO_CAMERA       :: 13;
    CAMERA_SWITCHER     :: 14;
    MARKER              :: 15;
    LOD_GROUP           :: 16;
    SKIN_DEFORMER       :: 17;
    SKIN_CLUSTER        :: 18;
    BLEND_DEFORMER      :: 19;
    BLEND_CHANNEL       :: 20;
    BLEND_SHAPE         :: 21;
    CACHE_DEFORMER      :: 22;
    CACHE_FILE          :: 23;
    MATERIAL            :: 24;
    TEXTURE             :: 25;
    VIDEO               :: 26;
    SHADER              :: 27;
    SHADER_BINDING      :: 28;
    ANIM_STACK          :: 29;
    ANIM_LAYER          :: 30;
    ANIM_VALUE          :: 31;
    ANIM_CURVE          :: 32;
    DISPLAY_LAYER       :: 33;
    SELECTION_SET       :: 34;
    SELECTION_NODE      :: 35;
    CHARACTER           :: 36;
    CONSTRAINT          :: 37;
    AUDIO_LAYER         :: 38;
    AUDIO_CLIP          :: 39;
    POSE                :: 40;
    METADATA_OBJECT     :: 41;

    TYPE_FIRST_ATTRIB   :: 2;
    TYPE_LAST_ATTRIB    :: 16;

    TYPE_FORCE_32BIT    :: 2147483647;

    UFBX_ELEMENT_UNKNOWN             :: UNKNOWN;
    UFBX_ELEMENT_NODE                :: NODE;
    UFBX_ELEMENT_MESH                :: MESH;
    UFBX_ELEMENT_LIGHT               :: LIGHT;
    UFBX_ELEMENT_CAMERA              :: CAMERA;
    UFBX_ELEMENT_BONE                :: BONE;
    UFBX_ELEMENT_EMPTY               :: EMPTY;
    UFBX_ELEMENT_LINE_CURVE          :: LINE_CURVE;
    UFBX_ELEMENT_NURBS_CURVE         :: NURBS_CURVE;
    UFBX_ELEMENT_NURBS_SURFACE       :: NURBS_SURFACE;
    UFBX_ELEMENT_NURBS_TRIM_SURFACE  :: NURBS_TRIM_SURFACE;
    UFBX_ELEMENT_NURBS_TRIM_BOUNDARY :: NURBS_TRIM_BOUNDARY;
    UFBX_ELEMENT_PROCEDURAL_GEOMETRY :: PROCEDURAL_GEOMETRY;
    UFBX_ELEMENT_STEREO_CAMERA       :: STEREO_CAMERA;
    UFBX_ELEMENT_CAMERA_SWITCHER     :: CAMERA_SWITCHER;
    UFBX_ELEMENT_MARKER              :: MARKER;
    UFBX_ELEMENT_LOD_GROUP           :: LOD_GROUP;
    UFBX_ELEMENT_SKIN_DEFORMER       :: SKIN_DEFORMER;
    UFBX_ELEMENT_SKIN_CLUSTER        :: SKIN_CLUSTER;
    UFBX_ELEMENT_BLEND_DEFORMER      :: BLEND_DEFORMER;
    UFBX_ELEMENT_BLEND_CHANNEL       :: BLEND_CHANNEL;
    UFBX_ELEMENT_BLEND_SHAPE         :: BLEND_SHAPE;
    UFBX_ELEMENT_CACHE_DEFORMER      :: CACHE_DEFORMER;
    UFBX_ELEMENT_CACHE_FILE          :: CACHE_FILE;
    UFBX_ELEMENT_MATERIAL            :: MATERIAL;
    UFBX_ELEMENT_TEXTURE             :: TEXTURE;
    UFBX_ELEMENT_VIDEO               :: VIDEO;
    UFBX_ELEMENT_SHADER              :: SHADER;
    UFBX_ELEMENT_SHADER_BINDING      :: SHADER_BINDING;
    UFBX_ELEMENT_ANIM_STACK          :: ANIM_STACK;
    UFBX_ELEMENT_ANIM_LAYER          :: ANIM_LAYER;
    UFBX_ELEMENT_ANIM_VALUE          :: ANIM_VALUE;
    UFBX_ELEMENT_ANIM_CURVE          :: ANIM_CURVE;
    UFBX_ELEMENT_DISPLAY_LAYER       :: DISPLAY_LAYER;
    UFBX_ELEMENT_SELECTION_SET       :: SELECTION_SET;
    UFBX_ELEMENT_SELECTION_NODE      :: SELECTION_NODE;
    UFBX_ELEMENT_CHARACTER           :: CHARACTER;
    UFBX_ELEMENT_CONSTRAINT          :: CONSTRAINT;
    UFBX_ELEMENT_AUDIO_LAYER         :: AUDIO_LAYER;
    UFBX_ELEMENT_AUDIO_CLIP          :: AUDIO_CLIP;
    UFBX_ELEMENT_POSE                :: POSE;
    UFBX_ELEMENT_METADATA_OBJECT     :: METADATA_OBJECT;

    UFBX_ELEMENT_TYPE_FIRST_ATTRIB   :: TYPE_FIRST_ATTRIB;
    UFBX_ELEMENT_TYPE_LAST_ATTRIB    :: TYPE_LAST_ATTRIB;

    UFBX_ELEMENT_TYPE_FORCE_32BIT    :: TYPE_FORCE_32BIT;
}

Anon_Enum_3 :: enum s32 {
    UFBX_ELEMENT_TYPE_COUNT :: 42;
}

// Connection between two elements.
// Source and destination are somewhat arbitrary but the destination is
// often the "container" like a parent node or mesh containing a deformer.
Ufbx_Connection :: struct {
    src:      *Ufbx_Element;
    dst:      *Ufbx_Element;
    src_prop: Ufbx_String;
    dst_prop: Ufbx_String;
}

Ufbx_Connection_List :: struct {
    data:  *Ufbx_Connection;
    count: u64;
}

// Element "base-class" common to each element.
// Some fields (like `connections_src`) are advanced and not visible
// in the specialized element structs.
// NOTE: The `element_id` value is consistent when loading the
// _same_ file, but re-exporting the file will invalidate them.
Ufbx_Element :: struct {
    name:            Ufbx_String;
    props:           Ufbx_Props;
    element_id:      u32;
    typed_id:        u32;
    instances:       Ufbx_Node_List;
    type:            Ufbx_Element_Type;
    connections_src: Ufbx_Connection_List;
    connections_dst: Ufbx_Connection_List;
    dom_node:        *Ufbx_Dom_Node;
    scene:           *Ufbx_Scene;
}

// -- Unknown
Ufbx_Unknown :: struct {
    // Shared "base-class" header, see `ufbx_element`.
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // FBX format specific type information.
    // In ASCII FBX format:
    //   super_type: ID, "type::name", "sub_type" { ... }
    type:       Ufbx_String;
    super_type: Ufbx_String;
    sub_type:   Ufbx_String;
}

// Inherit type specifies how hierarchial node transforms are combined.
// This only affects the final scaling, as rotation and translation are always
// inherited correctly.
// NOTE: These don't map to `"InheritType"` property as there may be new ones for
// compatibility with various exporters.
Ufbx_Inherit_Mode :: enum s32 {
    NORMAL              :: 0;

    IGNORE_PARENT_SCALE :: 1;

    COMPONENTWISE_SCALE :: 2;

    FORCE_32BIT         :: 2147483647;

    UFBX_INHERIT_MODE_NORMAL              :: NORMAL;

    UFBX_INHERIT_MODE_IGNORE_PARENT_SCALE :: IGNORE_PARENT_SCALE;

    UFBX_INHERIT_MODE_COMPONENTWISE_SCALE :: COMPONENTWISE_SCALE;

    UFBX_INHERIT_MODE_FORCE_32BIT         :: FORCE_32BIT;
}

Anon_Enum_4 :: enum s32 {
    UFBX_INHERIT_MODE_COUNT :: 3;
}

// Axis used to mirror transformations for handedness conversion.
Ufbx_Mirror_Axis :: enum s32 {
    NONE        :: 0;
    X           :: 1;
    Y           :: 2;
    Z           :: 3;

    FORCE_32BIT :: 2147483647;

    UFBX_MIRROR_AXIS_NONE        :: NONE;
    UFBX_MIRROR_AXIS_X           :: X;
    UFBX_MIRROR_AXIS_Y           :: Y;
    UFBX_MIRROR_AXIS_Z           :: Z;

    UFBX_MIRROR_AXIS_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_5 :: enum s32 {
    UFBX_MIRROR_AXIS_COUNT :: 4;
}

// Nodes form the scene transformation hierarchy and can contain attached
// elements such as meshes or lights. In normal cases a single `ufbx_node`
// contains only a single attached element, so using `type/mesh/...` is safe.
Ufbx_Node :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Parent node containing this one if not root.
    //
    // Always non-`NULL` for non-root nodes unless
    // `ufbx_load_opts.allow_nodes_out_of_root` is enabled.
    parent:                       *Ufbx_Node;

    // List of child nodes parented to this node.
    children:                     Ufbx_Node_List;

    // Common attached element type and typed pointers. Set to `NULL` if not in
    // use, so checking `attrib_type` is not required.
    //
    // HINT: If you need less common attributes access `ufbx_node.attrib`, you
    // can use utility functions like `ufbx_as_nurbs_curve(attrib)` to convert
    // and check the attribute in one step.
    mesh:                         *Ufbx_Mesh;
    light:                        *Ufbx_Light;
    camera:                       *Ufbx_Camera;
    bone:                         *Ufbx_Bone;

    // Less common attributes use these fields.
    //
    // Defined even if it is one of the above, eg. `ufbx_mesh`. In case there
    // is multiple attributes this will be the first one.
    attrib:                       *Ufbx_Element;

    // Geometry transform helper if one exists.
    // See `UFBX_GEOMETRY_TRANSFORM_HANDLING_HELPER_NODES`.
    geometry_transform_helper:    *Ufbx_Node;

    // Scale helper if one exists.
    // See `UFBX_INHERIT_MODE_HANDLING_HELPER_NODES`.
    scale_helper:                 *Ufbx_Node;

    // `attrib->type` if `attrib` is defined, otherwise `UFBX_ELEMENT_UNKNOWN`.
    attrib_type:                  Ufbx_Element_Type;

    // List of _all_ attached attribute elements.
    //
    // In most cases there is only zero or one attributes per node, but if you
    // have a very exotic FBX file nodes may have multiple attributes.
    all_attribs:                  Ufbx_Element_List;

    // Local transform in parent, geometry transform is a non-inherited
    // transform applied only to attachments like meshes
    inherit_mode:                 Ufbx_Inherit_Mode;
    original_inherit_mode:        Ufbx_Inherit_Mode;
    local_transform:              Ufbx_Transform;
    geometry_transform:           Ufbx_Transform;

    // Combined scale when using `UFBX_INHERIT_MODE_COMPONENTWISE_SCALE`.
    // Contains `local_transform.scale` otherwise.
    inherit_scale:                ufbx_vec3;

    // Node where scale is inherited from for `UFBX_INHERIT_MODE_COMPONENTWISE_SCALE`
    // and even for `UFBX_INHERIT_MODE_IGNORE_PARENT_SCALE`.
    // For componentwise-scale nodes, this will point to `parent`, for scale ignoring
    // nodes this will point to the parent of the nearest componentwise-scaled node
    // in the parent chain.
    inherit_scale_node:           *Ufbx_Node;

    // Specifies the axis order `euler_rotation` is applied in.
    rotation_order:               Ufbx_Rotation_Order;

    // Rotation around the local X/Y/Z axes in `rotation_order`.
    // The angles are specified in degrees.
    euler_rotation:               ufbx_vec3;

    // Transform from this node to `parent` space.
    // Equivalent to `ufbx_transform_to_matrix(&local_transform)`.
    node_to_parent:               Ufbx_Matrix;

    // Transform from this node to the world space, ie. multiplying all the
    // `node_to_parent` matrices of the parent chain together.
    node_to_world:                Ufbx_Matrix;

    // Transform from the attribute to this node. Does not affect the transforms
    // of `children`!
    // Equivalent to `ufbx_transform_to_matrix(&geometry_transform)`.
    geometry_to_node:             Ufbx_Matrix;

    // Transform from attribute space to world space.
    // Equivalent to `ufbx_matrix_mul(&node_to_world, &geometry_to_node)`.
    geometry_to_world:            Ufbx_Matrix;

    // Transform from this node to world space, ignoring self scaling.
    unscaled_node_to_world:       Ufbx_Matrix;

    adjust_pre_translation:       ufbx_vec3; // < Translation applied between parent and self
    adjust_pre_rotation:          ufbx_quat; // < Rotation applied between parent and self
    adjust_pre_scale:             Ufbx_Real; // < Scaling applied between parent and self
    adjust_post_rotation:         ufbx_quat; // < Rotation applied in local space at the end
    adjust_post_scale:            Ufbx_Real; // < Scaling applied in local space at the end
    adjust_translation_scale:     Ufbx_Real; // < Scaling applied to translation only
    adjust_mirror_axis:           Ufbx_Mirror_Axis; // < Mirror translation and rotation on this axis

    // Materials used by `mesh` or other `attrib`.
    // There may be multiple copies of a single `ufbx_mesh` with different materials
    // in the `ufbx_node` instances.
    materials:                    Ufbx_Material_List;

    // Bind pose
    bind_pose:                    *Ufbx_Pose;

    // Visibility state.
    visible:                      bool;

    // True if this node is the implicit root node of the scene.
    is_root:                      bool;

    // True if the node has a non-identity `geometry_transform`.
    has_geometry_transform:       bool;

    // If `true` the transform is adjusted by ufbx, not enabled by default.
    // See `adjust_pre_rotation`, `adjust_pre_scale`, `adjust_post_rotation`,
    // and `adjust_post_scale`.
    has_adjust_transform:         bool;

    // Scale is adjusted by root scale.
    has_root_adjust_transform:    bool;

    // True if this node is a synthetic geometry transform helper.
    // See `UFBX_GEOMETRY_TRANSFORM_HANDLING_HELPER_NODES`.
    is_geometry_transform_helper: bool;

    // True if the node is a synthetic scale compensation helper.
    // See `UFBX_INHERIT_MODE_HANDLING_HELPER_NODES`.
    is_scale_helper:              bool;

    // Parent node to children that can compensate for parent scale.
    is_scale_compensate_parent:   bool;

    // How deep is this node in the parent hierarchy. Root node is at depth `0`
    // and the immediate children of root at `1`.
    node_depth:                   u32;
}

// Vertex attribute: All attributes are stored in a consistent indexed format
// regardless of how it's actually stored in the file.
//
// `values` is a contiguous array of attribute values.
// `indices` maps each mesh index into a value in the `values` array.
//
// If `unique_per_vertex` is set then the attribute is guaranteed to have a
// single defined value per vertex accessible via:
//   attrib.values.data[attrib.indices.data[mesh->vertex_first_index[vertex_ix]]
Ufbx_Vertex_Attrib :: struct {
    // Is this attribute defined by the mesh.
    exists:            bool;

    // List of values the attribute uses.
    values:            Ufbx_Void_List;

    // Indices into `values[]`, indexed up to `ufbx_mesh.num_indices`.
    indices:           Ufbx_Uint32_List;

    // Number of `ufbx_real` entries per value.
    value_reals:       u64;

    // `true` if this attribute is defined per vertex, instead of per index.
    unique_per_vertex: bool;

    // Optional 4th 'W' component for the attribute.
    // May be defined for the following:
    //   ufbx_mesh.vertex_normal
    //   ufbx_mesh.vertex_tangent / ufbx_uv_set.vertex_tangent
    //   ufbx_mesh.vertex_bitangent / ufbx_uv_set.vertex_bitangent
    // NOTE: This is not loaded by default, set `ufbx_load_opts.retain_vertex_attrib_w`.
    values_w:          Ufbx_Real_List;
}

// 1D vertex attribute, see `ufbx_vertex_attrib` for information
Ufbx_Vertex_Real :: struct {
    exists:            bool;
    values:            Ufbx_Real_List;
    indices:           Ufbx_Uint32_List;
    value_reals:       u64;
    unique_per_vertex: bool;
    values_w:          Ufbx_Real_List;
}

// 2D vertex attribute, see `ufbx_vertex_attrib` for information
Ufbx_Vertex_Vec2 :: struct {
    exists:            bool;
    values:            Ufbx_Vec2_List;
    indices:           Ufbx_Uint32_List;
    value_reals:       u64;
    unique_per_vertex: bool;
    values_w:          Ufbx_Real_List;
}

// 3D vertex attribute, see `ufbx_vertex_attrib` for information
Ufbx_Vertex_Vec3 :: struct {
    exists:            bool;
    values:            Ufbx_Vec3_List;
    indices:           Ufbx_Uint32_List;
    value_reals:       u64;
    unique_per_vertex: bool;
    values_w:          Ufbx_Real_List;
}

// 4D vertex attribute, see `ufbx_vertex_attrib` for information
Ufbx_Vertex_Vec4 :: struct {
    exists:            bool;
    values:            Ufbx_Vec4_List;
    indices:           Ufbx_Uint32_List;
    value_reals:       u64;
    unique_per_vertex: bool;
    values_w:          Ufbx_Real_List;
}

// Vertex UV set/layer
Ufbx_Uv_Set :: struct {
    name:             Ufbx_String;
    index:            u32;

    vertex_uv:        Ufbx_Vertex_Vec2; // < UV / texture coordinates
    vertex_tangent:   Ufbx_Vertex_Vec3; // < (optional) Tangent vector in UV.x direction
    vertex_bitangent: Ufbx_Vertex_Vec3; // < (optional) Tangent vector in UV.y direction
}

// Vertex color set/layer
Ufbx_Color_Set :: struct {
    name:         Ufbx_String;
    index:        u32;

    vertex_color: Ufbx_Vertex_Vec4; // < Per-vertex RGBA color
}

Ufbx_Uv_Set_List :: struct {
    data:  *Ufbx_Uv_Set;
    count: u64;
}
Ufbx_Color_Set_List :: struct {
    data:  *Ufbx_Color_Set;
    count: u64;
}

// Edge between two _indices_ in a mesh
Ufbx_Edge :: struct {
    union {
        struct {
            a: u32;
            b: u32;
        }
        indices: [2] u32;
    }
}

Ufbx_Edge_List :: struct {
    data:  *Ufbx_Edge;
    count: u64;
}

// Polygonal face with arbitrary number vertices, a single face contains a
// contiguous range of mesh indices, eg. `{5,3}` would have indices 5, 6, 7
//
// NOTE: `num_indices` maybe less than 3 in which case the face is invalid!
// [TODO #23: should probably remove the bad faces at load time]
Ufbx_Face :: struct {
    index_begin: u32;
    num_indices: u32;
}

Ufbx_Face_List :: struct {
    data:  *Ufbx_Face;
    count: u64;
}

// Subset of mesh faces used by a single material or group.
Ufbx_Mesh_Part :: struct {
    // Index of the mesh part.
    index:           u32;

    num_faces:       u64; // < Number of faces (polygons)
    num_triangles:   u64; // < Number of triangles if triangulated

    num_empty_faces: u64; // < Number of faces with zero vertices
    num_point_faces: u64; // < Number of faces with a single vertex
    num_line_faces:  u64; // < Number of faces with two vertices

    // Indices to `ufbx_mesh.faces[]`.
    // Always contains `num_faces` elements.
    face_indices:    Ufbx_Uint32_List;
}

Ufbx_Mesh_Part_List :: struct {
    data:  *Ufbx_Mesh_Part;
    count: u64;
}

Ufbx_Face_Group :: struct {
    id:   s32; // < Numerical ID for this group.
    name: Ufbx_String; // < Name for the face group.
}

Ufbx_Face_Group_List :: struct {
    data:  *Ufbx_Face_Group;
    count: u64;
}

Ufbx_Subdivision_Weight_Range :: struct {
    weight_begin: u32;
    num_weights:  u32;
}

Ufbx_Subdivision_Weight_Range_List :: struct {
    data:  *Ufbx_Subdivision_Weight_Range;
    count: u64;
}

Ufbx_Subdivision_Weight :: struct {
    weight: Ufbx_Real;
    index:  u32;
}

Ufbx_Subdivision_Weight_List :: struct {
    data:  *Ufbx_Subdivision_Weight;
    count: u64;
}

Ufbx_Subdivision_Result :: struct {
    result_memory_used:    u64;
    temp_memory_used:      u64;
    result_allocs:         u64;
    temp_allocs:           u64;

    // Weights of vertices in the source model.
    // Defined if `ufbx_subdivide_opts.evaluate_source_vertices` is set.
    source_vertex_ranges:  Ufbx_Subdivision_Weight_Range_List;
    source_vertex_weights: Ufbx_Subdivision_Weight_List;

    // Weights of skin clusters in the source model.
    // Defined if `ufbx_subdivide_opts.evaluate_skin_weights` is set.
    skin_cluster_ranges:   Ufbx_Subdivision_Weight_Range_List;
    skin_cluster_weights:  Ufbx_Subdivision_Weight_List;
}

Ufbx_Subdivision_Display_Mode :: enum s32 {
    DISABLED         :: 0;
    HULL             :: 1;
    HULL_AND_SMOOTH  :: 2;
    SMOOTH           :: 3;

    MODE_FORCE_32BIT :: 2147483647;

    UFBX_SUBDIVISION_DISPLAY_DISABLED         :: DISABLED;
    UFBX_SUBDIVISION_DISPLAY_HULL             :: HULL;
    UFBX_SUBDIVISION_DISPLAY_HULL_AND_SMOOTH  :: HULL_AND_SMOOTH;
    UFBX_SUBDIVISION_DISPLAY_SMOOTH           :: SMOOTH;

    UFBX_SUBDIVISION_DISPLAY_MODE_FORCE_32BIT :: MODE_FORCE_32BIT;
}

Anon_Enum_6 :: enum s32 {
    UFBX_SUBDIVISION_DISPLAY_MODE_COUNT :: 4;
}

Ufbx_Subdivision_Boundary :: enum s32 {
    DEFAULT        :: 0;
    LEGACY         :: 1;

    SHARP_CORNERS  :: 2;

    SHARP_NONE     :: 3;

    SHARP_BOUNDARY :: 4;

    SHARP_INTERIOR :: 5;

    FORCE_32BIT    :: 2147483647;

    UFBX_SUBDIVISION_BOUNDARY_DEFAULT        :: DEFAULT;
    UFBX_SUBDIVISION_BOUNDARY_LEGACY         :: LEGACY;

    UFBX_SUBDIVISION_BOUNDARY_SHARP_CORNERS  :: SHARP_CORNERS;

    UFBX_SUBDIVISION_BOUNDARY_SHARP_NONE     :: SHARP_NONE;

    UFBX_SUBDIVISION_BOUNDARY_SHARP_BOUNDARY :: SHARP_BOUNDARY;

    UFBX_SUBDIVISION_BOUNDARY_SHARP_INTERIOR :: SHARP_INTERIOR;

    UFBX_SUBDIVISION_BOUNDARY_FORCE_32BIT    :: FORCE_32BIT;
}

Anon_Enum_7 :: enum s32 {
    UFBX_SUBDIVISION_BOUNDARY_COUNT :: 6;
}

// Polygonal mesh geometry.
//
// Example mesh with two triangles (x, z) and a quad (y).
// The faces have a constant UV coordinate x/y/z.
// The vertices have _per vertex_ normals that point up/down.
//
//     ^   ^     ^
//     A---B-----C
//     |x /     /|
//     | /  y  / |
//     |/     / z|
//     D-----E---F
//     v     v   v
//
// Attributes may have multiple values within a single vertex, for example a
// UV seam vertex has two UV coordinates. Thus polygons are defined using
// an index that counts each corner of each face polygon. If an attribute is
// defined (even per-vertex) it will always have a valid `indices` array.
//
//   {0,3}    {3,4}    {7,3}   faces ({ index_begin, num_indices })
//   0 1 2   3 4 5 6   7 8 9   index
//
//   0 1 3   1 2 4 3   2 4 5   vertex_indices[index]
//   A B D   B C E D   C E F   vertices[vertex_indices[index]]
//
//   0 0 1   0 0 1 1   0 1 1   vertex_normal.indices[index]
//   ^ ^ v   ^ ^ v v   ^ v v   vertex_normal.data[vertex_normal.indices[index]]
//
//   0 0 0   1 1 1 1   2 2 2   vertex_uv.indices[index]
//   x x x   y y y y   z z z   vertex_uv.data[vertex_uv.indices[index]]
//
// Vertex position can also be accessed uniformly through an accessor:
//   0 1 3   1 2 4 3   2 4 5   vertex_position.indices[index]
//   A B D   B C E D   C E F   vertex_position.data[vertex_position.indices[index]]
//
// Some geometry data is specified per logical vertex. Vertex positions are
// the only attribute that is guaranteed to be defined _uniquely_ per vertex.
// Vertex attributes _may_ be defined per vertex if `unique_per_vertex == true`.
// You can access the per-vertex values by first finding the first index that
// refers to the given vertex.
//
//   0 1 2 3 4 5  vertex
//   A B C D E F  vertices[vertex]
//
//   0 1 4 2 5 9  vertex_first_index[vertex]
//   0 0 0 1 1 1  vertex_normal.indices[vertex_first_index[vertex]]
//   ^ ^ ^ v v v  vertex_normal.data[vertex_normal.indices[vertex_first_index[vertex]]]
//
Ufbx_Mesh :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    num_vertices:               u64; // < Number of logical "vertex" points
    num_indices:                u64; // < Number of combiend vertex/attribute tuples
    num_faces:                  u64; // < Number of faces (polygons) in the mesh
    num_triangles:              u64; // < Number of triangles if triangulated

    // Number of edges in the mesh.
    // NOTE: May be zero in valid meshes if the file doesn't contain edge adjacency data!
    num_edges:                  u64;

    max_face_triangles:         u64; // < Maximum number of triangles in a  face in this mesh

    num_empty_faces:            u64; // < Number of faces with zero vertices
    num_point_faces:            u64; // < Number of faces with a single vertex
    num_line_faces:             u64; // < Number of faces with two vertices

    faces:                      Ufbx_Face_List; // < Face index range
    face_smoothing:             Ufbx_Bool_List; // < Should the face have soft normals
    face_material:              Ufbx_Uint32_List; // < Indices to `ufbx_mesh.materials[]` and `ufbx_node.materials[]`
    face_group:                 Ufbx_Uint32_List; // < Face polygon group index, indices to `ufbx_mesh.face_groups[]`
    face_hole:                  Ufbx_Bool_List; // < Should the face be hidden as a "hole"

    edges:                      Ufbx_Edge_List; // < Edge index range
    edge_smoothing:             Ufbx_Bool_List; // < Should the edge have soft normals
    edge_crease:                Ufbx_Real_List; // < Crease value for subdivision surfaces
    edge_visibility:            Ufbx_Bool_List; // < Should the edge be visible

    // Logical vertices and positions, alternatively you can use
    // `vertex_position` for consistent interface with other attributes.
    vertex_indices:             Ufbx_Uint32_List;
    vertices:                   Ufbx_Vec3_List;

    // First index referring to a given vertex, `UFBX_NO_INDEX` if the vertex is unused.
    vertex_first_index:         Ufbx_Uint32_List;

    vertex_position:            Ufbx_Vertex_Vec3; // < Vertex positions
    vertex_normal:              Ufbx_Vertex_Vec3; // < (optional) Normal vectors, always defined if `ufbx_load_opts.generate_missing_normals`
    vertex_uv:                  Ufbx_Vertex_Vec2; // < (optional) UV / texture coordinates
    vertex_tangent:             Ufbx_Vertex_Vec3; // < (optional) Tangent vector in UV.x direction
    vertex_bitangent:           Ufbx_Vertex_Vec3; // < (optional) Tangent vector in UV.y direction
    vertex_color:               Ufbx_Vertex_Vec4; // < (optional) Per-vertex RGBA color
    vertex_crease:              Ufbx_Vertex_Real; // < (optional) Crease value for subdivision surfaces

    // Multiple named UV/color sets
    // NOTE: The first set contains the same data as `vertex_uv/color`!
    uv_sets:                    Ufbx_Uv_Set_List;
    color_sets:                 Ufbx_Color_Set_List;

    // Materials used by the mesh.
    // NOTE: These can be wrong if you want to support per-instance materials!
    // Use `ufbx_node.materials[]` to get the per-instance materials at the same indices.
    materials:                  Ufbx_Material_List;

    // Face groups for this mesh.
    face_groups:                Ufbx_Face_Group_List;

    // Segments that use a given material.
    // Defined even if the mesh doesn't have any materials.
    material_parts:             Ufbx_Mesh_Part_List;

    // Segments for each face group.
    face_group_parts:           Ufbx_Mesh_Part_List;

    // Order of `material_parts` by first face that refers to it.
    // Useful for compatibility with FBX SDK and various importers using it,
    // as they use this material order by default.
    material_part_usage_order:  Ufbx_Uint32_List;

    // Skinned vertex positions, for efficiency the skinned positions are the
    // same as the static ones for non-skinned meshes and `skinned_is_local`
    // is set to true meaning you need to transform them manually using
    // `ufbx_transform_position(&node->geometry_to_world, skinned_pos)`!
    skinned_is_local:           bool;
    skinned_position:           Ufbx_Vertex_Vec3;
    skinned_normal:             Ufbx_Vertex_Vec3;

    // Deformers
    skin_deformers:             Ufbx_Skin_Deformer_List;
    blend_deformers:            Ufbx_Blend_Deformer_List;
    cache_deformers:            Ufbx_Cache_Deformer_List;
    all_deformers:              Ufbx_Element_List;

    // Subdivision
    subdivision_preview_levels: u32;
    subdivision_render_levels:  u32;
    subdivision_display_mode:   Ufbx_Subdivision_Display_Mode;
    subdivision_boundary:       Ufbx_Subdivision_Boundary;
    subdivision_uv_boundary:    Ufbx_Subdivision_Boundary;

    // The winding of the faces has been reversed.
    reversed_winding:           bool;

    // Normals have been generated instead of evaluated.
    // Either from missing normals (via `ufbx_load_opts.generate_missing_normals`), skinning,
    // tessellation, or subdivision.
    generated_normals:          bool;

    // Subdivision (result)
    subdivision_evaluated:      bool;
    subdivision_result:         *Ufbx_Subdivision_Result;

    // Tessellation (result)
    from_tessellated_nurbs:     bool;
}

// The kind of light source
Ufbx_Light_Type :: enum s32 {
    POINT            :: 0;

    DIRECTIONAL      :: 1;

    SPOT             :: 2;

    AREA             :: 3;

    VOLUME           :: 4;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_LIGHT_POINT            :: POINT;

    UFBX_LIGHT_DIRECTIONAL      :: DIRECTIONAL;

    UFBX_LIGHT_SPOT             :: SPOT;

    UFBX_LIGHT_AREA             :: AREA;

    UFBX_LIGHT_VOLUME           :: VOLUME;

    UFBX_LIGHT_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_8 :: enum s32 {
    UFBX_LIGHT_TYPE_COUNT :: 5;
}

// How fast does the light intensity decay at a distance
Ufbx_Light_Decay :: enum s32 {
    NONE        :: 0;
    LINEAR      :: 1;
    QUADRATIC   :: 2;
    CUBIC       :: 3;

    FORCE_32BIT :: 2147483647;

    UFBX_LIGHT_DECAY_NONE        :: NONE;
    UFBX_LIGHT_DECAY_LINEAR      :: LINEAR;
    UFBX_LIGHT_DECAY_QUADRATIC   :: QUADRATIC;
    UFBX_LIGHT_DECAY_CUBIC       :: CUBIC;

    UFBX_LIGHT_DECAY_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_9 :: enum s32 {
    UFBX_LIGHT_DECAY_COUNT :: 4;
}

Ufbx_Light_Area_Shape :: enum s32 {
    RECTANGLE   :: 0;
    SPHERE      :: 1;

    FORCE_32BIT :: 2147483647;

    UFBX_LIGHT_AREA_SHAPE_RECTANGLE   :: RECTANGLE;
    UFBX_LIGHT_AREA_SHAPE_SPHERE      :: SPHERE;

    UFBX_LIGHT_AREA_SHAPE_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_10 :: enum s32 {
    UFBX_LIGHT_AREA_SHAPE_COUNT :: 2;
}

// Light source attached to a `ufbx_node`
Ufbx_Light :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // Color and intensity of the light, usually you want to use `color * intensity`
    // NOTE: `intensity` is 0.01x of the property `"Intensity"` as that matches
    // matches values in DCC programs before exporting.
    color:           ufbx_vec3;
    intensity:       Ufbx_Real;

    // Direction the light is aimed at in node's local space, usually -Y
    local_direction: ufbx_vec3;

    // Type of the light and shape parameters
    type:            Ufbx_Light_Type;
    decay:           Ufbx_Light_Decay;
    area_shape:      Ufbx_Light_Area_Shape;
    inner_angle:     Ufbx_Real;
    outer_angle:     Ufbx_Real;

    cast_light:      bool;
    cast_shadows:    bool;
}

Ufbx_Projection_Mode :: enum s32 {
    PERSPECTIVE  :: 0;

    ORTHOGRAPHIC :: 1;

    FORCE_32BIT  :: 2147483647;

    UFBX_PROJECTION_MODE_PERSPECTIVE  :: PERSPECTIVE;

    UFBX_PROJECTION_MODE_ORTHOGRAPHIC :: ORTHOGRAPHIC;

    UFBX_PROJECTION_MODE_FORCE_32BIT  :: FORCE_32BIT;
}

Anon_Enum_11 :: enum s32 {
    UFBX_PROJECTION_MODE_COUNT :: 2;
}

// Method of specifying the rendering resolution from properties
// NOTE: Handled internally by ufbx, ignore unless you interpret `ufbx_props` directly!
Ufbx_Aspect_Mode :: enum s32 {
    WINDOW_SIZE      :: 0;

    FIXED_RATIO      :: 1;

    FIXED_RESOLUTION :: 2;

    FIXED_WIDTH      :: 3;

    FIXED_HEIGHT     :: 4;

    FORCE_32BIT      :: 2147483647;

    UFBX_ASPECT_MODE_WINDOW_SIZE      :: WINDOW_SIZE;

    UFBX_ASPECT_MODE_FIXED_RATIO      :: FIXED_RATIO;

    UFBX_ASPECT_MODE_FIXED_RESOLUTION :: FIXED_RESOLUTION;

    UFBX_ASPECT_MODE_FIXED_WIDTH      :: FIXED_WIDTH;

    UFBX_ASPECT_MODE_FIXED_HEIGHT     :: FIXED_HEIGHT;

    UFBX_ASPECT_MODE_FORCE_32BIT      :: FORCE_32BIT;
}

Anon_Enum_12 :: enum s32 {
    UFBX_ASPECT_MODE_COUNT :: 5;
}

// Method of specifying the field of view from properties
// NOTE: Handled internally by ufbx, ignore unless you interpret `ufbx_props` directly!
Ufbx_Aperture_Mode :: enum s32 {
    HORIZONTAL_AND_VERTICAL :: 0;

    HORIZONTAL              :: 1;

    VERTICAL                :: 2;

    FOCAL_LENGTH            :: 3;

    FORCE_32BIT             :: 2147483647;

    UFBX_APERTURE_MODE_HORIZONTAL_AND_VERTICAL :: HORIZONTAL_AND_VERTICAL;

    UFBX_APERTURE_MODE_HORIZONTAL              :: HORIZONTAL;

    UFBX_APERTURE_MODE_VERTICAL                :: VERTICAL;

    UFBX_APERTURE_MODE_FOCAL_LENGTH            :: FOCAL_LENGTH;

    UFBX_APERTURE_MODE_FORCE_32BIT             :: FORCE_32BIT;
}

Anon_Enum_13 :: enum s32 {
    UFBX_APERTURE_MODE_COUNT :: 4;
}

// Method of specifying the render gate size from properties
// NOTE: Handled internally by ufbx, ignore unless you interpret `ufbx_props` directly!
Ufbx_Gate_Fit :: enum s32 {
    NONE        :: 0;

    VERTICAL    :: 1;

    HORIZONTAL  :: 2;

    FILL        :: 3;

    OVERSCAN    :: 4;

    STRETCH     :: 5;

    FORCE_32BIT :: 2147483647;

    UFBX_GATE_FIT_NONE        :: NONE;

    UFBX_GATE_FIT_VERTICAL    :: VERTICAL;

    UFBX_GATE_FIT_HORIZONTAL  :: HORIZONTAL;

    UFBX_GATE_FIT_FILL        :: FILL;

    UFBX_GATE_FIT_OVERSCAN    :: OVERSCAN;

    UFBX_GATE_FIT_STRETCH     :: STRETCH;

    UFBX_GATE_FIT_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_14 :: enum s32 {
    UFBX_GATE_FIT_COUNT :: 6;
}

// Camera film/aperture size defaults
// NOTE: Handled internally by ufbx, ignore unless you interpret `ufbx_props` directly!
Ufbx_Aperture_Format :: enum s32 {
    CUSTOM               :: 0;
    _16MM_THEATRICAL     :: 1;
    SUPER_16MM           :: 2;
    _35MM_ACADEMY        :: 3;
    _35MM_TV_PROJECTION  :: 4;
    _35MM_FULL_APERTURE  :: 5;
    _35MM_185_PROJECTION :: 6;
    _35MM_ANAMORPHIC     :: 7;
    _70MM_PROJECTION     :: 8;
    VISTAVISION          :: 9;
    DYNAVISION           :: 10;
    IMAX                 :: 11;

    FORCE_32BIT          :: 2147483647;

    UFBX_APERTURE_FORMAT_CUSTOM              :: CUSTOM;
    UFBX_APERTURE_FORMAT_16MM_THEATRICAL     :: _16MM_THEATRICAL;
    UFBX_APERTURE_FORMAT_SUPER_16MM          :: SUPER_16MM;
    UFBX_APERTURE_FORMAT_35MM_ACADEMY        :: _35MM_ACADEMY;
    UFBX_APERTURE_FORMAT_35MM_TV_PROJECTION  :: _35MM_TV_PROJECTION;
    UFBX_APERTURE_FORMAT_35MM_FULL_APERTURE  :: _35MM_FULL_APERTURE;
    UFBX_APERTURE_FORMAT_35MM_185_PROJECTION :: _35MM_185_PROJECTION;
    UFBX_APERTURE_FORMAT_35MM_ANAMORPHIC     :: _35MM_ANAMORPHIC;
    UFBX_APERTURE_FORMAT_70MM_PROJECTION     :: _70MM_PROJECTION;
    UFBX_APERTURE_FORMAT_VISTAVISION         :: VISTAVISION;
    UFBX_APERTURE_FORMAT_DYNAVISION          :: DYNAVISION;
    UFBX_APERTURE_FORMAT_IMAX                :: IMAX;

    UFBX_APERTURE_FORMAT_FORCE_32BIT         :: FORCE_32BIT;
}

Anon_Enum_15 :: enum s32 {
    UFBX_APERTURE_FORMAT_COUNT :: 12;
}

Ufbx_Coordinate_Axis :: enum s32 {
    POSITIVE_X  :: 0;
    NEGATIVE_X  :: 1;
    POSITIVE_Y  :: 2;
    NEGATIVE_Y  :: 3;
    POSITIVE_Z  :: 4;
    NEGATIVE_Z  :: 5;
    UNKNOWN     :: 6;

    FORCE_32BIT :: 2147483647;

    UFBX_COORDINATE_AXIS_POSITIVE_X  :: POSITIVE_X;
    UFBX_COORDINATE_AXIS_NEGATIVE_X  :: NEGATIVE_X;
    UFBX_COORDINATE_AXIS_POSITIVE_Y  :: POSITIVE_Y;
    UFBX_COORDINATE_AXIS_NEGATIVE_Y  :: NEGATIVE_Y;
    UFBX_COORDINATE_AXIS_POSITIVE_Z  :: POSITIVE_Z;
    UFBX_COORDINATE_AXIS_NEGATIVE_Z  :: NEGATIVE_Z;
    UFBX_COORDINATE_AXIS_UNKNOWN     :: UNKNOWN;

    UFBX_COORDINATE_AXIS_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_16 :: enum s32 {
    UFBX_COORDINATE_AXIS_COUNT :: 7;
}

// Coordinate axes the scene is represented in.
// NOTE: `front` is the _opposite_ from forward!
Ufbx_Coordinate_Axes :: struct {
    right: Ufbx_Coordinate_Axis;
    up:    Ufbx_Coordinate_Axis;
    front: Ufbx_Coordinate_Axis;
}

// Camera attached to a `ufbx_node`
Ufbx_Camera :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // Projection mode (perspective/orthographic).
    projection_mode:      Ufbx_Projection_Mode;

    // If set to `true`, `resolution` represents actual pixel values, otherwise
    // it's only useful for its aspect ratio.
    resolution_is_pixels: bool;

    // Render resolution, either in pixels or arbitrary units, depending on above
    resolution:           ufbx_vec2;

    // Horizontal/vertical field of view in degrees
    // Valid if `projection_mode == UFBX_PROJECTION_MODE_PERSPECTIVE`.
    field_of_view_deg:    ufbx_vec2;

    // Component-wise `tan(field_of_view_deg)`, also represents the size of the
    // proection frustum slice at distance of 1.
    // Valid if `projection_mode == UFBX_PROJECTION_MODE_PERSPECTIVE`.
    field_of_view_tan:    ufbx_vec2;

    // Orthographic camera extents.
    // Valid if `projection_mode == UFBX_PROJECTION_MODE_ORTHOGRAPHIC`.
    orthographic_extent:  Ufbx_Real;

    // Orthographic camera size.
    // Valid if `projection_mode == UFBX_PROJECTION_MODE_ORTHOGRAPHIC`.
    orthographic_size:    ufbx_vec2;

    // Size of the projection plane at distance 1.
    // Equal to `field_of_view_tan` if perspective, `orthographic_size` if orthographic.
    projection_plane:     ufbx_vec2;

    // Aspect ratio of the camera.
    aspect_ratio:         Ufbx_Real;

    // Near plane of the frustum in units from the camera.
    near_plane:           Ufbx_Real;

    // Far plane of the frustum in units from the camera.
    far_plane:            Ufbx_Real;

    // Coordinate system that the projection uses.
    // FBX saves cameras with +X forward and +Y up, but you can override this using
    // `ufbx_load_opts.target_camera_axes` and it will be reflected here.
    projection_axes:      Ufbx_Coordinate_Axes;

    // Advanced properties used to compute the above
    aspect_mode:          Ufbx_Aspect_Mode;
    aperture_mode:        Ufbx_Aperture_Mode;
    gate_fit:             Ufbx_Gate_Fit;
    aperture_format:      Ufbx_Aperture_Format;
    focal_length_mm:      Ufbx_Real; // < Focal length in millimeters
    film_size_inch:       ufbx_vec2; // < Film size in inches
    aperture_size_inch:   ufbx_vec2; // < Aperture/film gate size in inches
    squeeze_ratio:        Ufbx_Real; // < Anamoprhic stretch ratio
}

// Bone attached to a `ufbx_node`, provides the logical length of the bone
// but most interesting information is directly in `ufbx_node`.
Ufbx_Bone :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // Visual radius of the bone
    radius:          Ufbx_Real;

    // Length of the bone relative to the distance between two nodes
    relative_length: Ufbx_Real;

    // Is the bone a root bone
    is_root:         bool;
}

// Empty/NULL/locator connected to a node, actual details in `ufbx_node`
Ufbx_Empty :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }
}

// Segment of a `ufbx_line_curve`, indices refer to `ufbx_line_curve.point_indices[]`
Ufbx_Line_Segment :: struct {
    index_begin: u32;
    num_indices: u32;
}

Ufbx_Line_Segment_List :: struct {
    data:  *Ufbx_Line_Segment;
    count: u64;
}

Ufbx_Line_Curve :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    color:                  ufbx_vec3;

    control_points:         Ufbx_Vec3_List; // < List of possible values the line passes through
    point_indices:          Ufbx_Uint32_List; // < Indices to `control_points[]` the line goes through

    segments:               Ufbx_Line_Segment_List;

    // Tessellation (result)
    from_tessellated_nurbs: bool;
}

Ufbx_Nurbs_Topology :: enum s32 {
    OPEN        :: 0;

    PERIODIC    :: 1;

    CLOSED      :: 2;

    FORCE_32BIT :: 2147483647;

    UFBX_NURBS_TOPOLOGY_OPEN        :: OPEN;

    UFBX_NURBS_TOPOLOGY_PERIODIC    :: PERIODIC;

    UFBX_NURBS_TOPOLOGY_CLOSED      :: CLOSED;

    UFBX_NURBS_TOPOLOGY_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_17 :: enum s32 {
    UFBX_NURBS_TOPOLOGY_COUNT :: 3;
}

// NURBS basis functions for an axis
Ufbx_Nurbs_Basis :: struct {
    // Number of control points influencing a point on the curve/surface.
    // Equal to the degree plus one.
    order:                   u32;

    // Topology (periodicity) of the dimension.
    topology:                Ufbx_Nurbs_Topology;

    // Subdivision of the parameter range to control points.
    knot_vector:             Ufbx_Real_List;

    // Range for the parameter value.
    t_min:                   Ufbx_Real;
    t_max:                   Ufbx_Real;

    // Parameter values of control points.
    spans:                   Ufbx_Real_List;

    // `true` if this axis is two-dimensional.
    is_2d:                   bool;

    // Number of control points that need to be copied to the end.
    // This is just for convenience as it could be derived from `topology` and
    // `order`. If for example `num_wrap_control_points == 3` you should repeat
    // the first 3 control points after the end.
    // HINT: You don't need to worry about this if you use ufbx functions
    // like `ufbx_evaluate_nurbs_curve()` as they handle this internally.
    num_wrap_control_points: u64;

    // `true` if the parametrization is well defined.
    valid:                   bool;
}

Ufbx_Nurbs_Curve :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // Basis in the U axis
    basis:          Ufbx_Nurbs_Basis;

    // Linear array of control points
    // NOTE: The control points are _not_ homogeneous, meaning you have to multiply
    // them by `w` before evaluating the surface.
    control_points: Ufbx_Vec4_List;
}

Ufbx_Nurbs_Surface :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // Basis in the U/V axes
    basis_u:              Ufbx_Nurbs_Basis;
    basis_v:              Ufbx_Nurbs_Basis;

    // Number of control points for the U/V axes
    num_control_points_u: u64;
    num_control_points_v: u64;

    // 2D array of control points.
    // Memory layout: `V * num_control_points_u + U`
    // NOTE: The control points are _not_ homogeneous, meaning you have to multiply
    // them by `w` before evaluating the surface.
    control_points:       Ufbx_Vec4_List;

    // How many segments tessellate each span in `ufbx_nurbs_basis.spans`.
    span_subdivision_u:   u32;
    span_subdivision_v:   u32;

    // If `true` the resulting normals should be flipped when evaluated.
    flip_normals:         bool;

    // Material for the whole surface.
    // NOTE: May be `NULL`!
    material:             *Ufbx_Material;
}

Ufbx_Nurbs_Trim_Surface :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }
}

Ufbx_Nurbs_Trim_Boundary :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }
}

// -- Node attributes (advanced)
Ufbx_Procedural_Geometry :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }
}

Ufbx_Stereo_Camera :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    left:  *Ufbx_Camera;
    right: *Ufbx_Camera;
}

Ufbx_Camera_Switcher :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }
}

Ufbx_Marker_Type :: enum s32 {
    UNKNOWN          :: 0;
    FK_EFFECTOR      :: 1;
    IK_EFFECTOR      :: 2;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_MARKER_UNKNOWN          :: UNKNOWN;
    UFBX_MARKER_FK_EFFECTOR      :: FK_EFFECTOR;
    UFBX_MARKER_IK_EFFECTOR      :: IK_EFFECTOR;

    UFBX_MARKER_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_18 :: enum s32 {
    UFBX_MARKER_TYPE_COUNT :: 3;
}

// Tracking marker for effectors
Ufbx_Marker :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // Type of the marker
    type: Ufbx_Marker_Type;
}

// LOD level display mode.
Ufbx_Lod_Display :: enum s32 {
    USE_LOD     :: 0;
    SHOW        :: 1;
    HIDE        :: 2;

    FORCE_32BIT :: 2147483647;

    UFBX_LOD_DISPLAY_USE_LOD     :: USE_LOD;
    UFBX_LOD_DISPLAY_SHOW        :: SHOW;
    UFBX_LOD_DISPLAY_HIDE        :: HIDE;

    UFBX_LOD_DISPLAY_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_19 :: enum s32 {
    UFBX_LOD_DISPLAY_COUNT :: 3;
}

// Single LOD level within an LOD group.
// Specifies properties of the Nth child of the _node_ containing the LOD group.
Ufbx_Lod_Level :: struct {
    // Minimum distance to show this LOD level.
    // NOTE: In world units by default, or in screen percentage if
    // `ufbx_lod_group.relative_distances` is set.
    distance: Ufbx_Real;

    // LOD display mode.
    // NOTE: Mostly for editing, you should probably ignore this
    // unless making a modeling program.
    display:  Ufbx_Lod_Display;
}

Ufbx_Lod_Level_List :: struct {
    data:  *Ufbx_Lod_Level;
    count: u64;
}

// Group of LOD (Level of Detail) levels for an object.
// The actual LOD models are defined in the parent `ufbx_node.children`.
Ufbx_Lod_Group :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
            instances:  Ufbx_Node_List;
        }
    }

    // If set to `true`, `ufbx_lod_level.distance` represents a screen size percentage.
    relative_distances:      bool;

    // LOD levels matching in order to `ufbx_node.children`.
    lod_levels:              Ufbx_Lod_Level_List;

    // If set to `true` don't account for parent transform when computing the distance.
    ignore_parent_transform: bool;

    // If `use_distance_limit` is enabled hide the group if the distance is not between
    // `distance_limit_min` and `distance_limit_max`.
    use_distance_limit:      bool;
    distance_limit_min:      Ufbx_Real;
    distance_limit_max:      Ufbx_Real;
}

// Method to evaluate the skinning on a per-vertex level
Ufbx_Skinning_Method :: enum s32 {
    LINEAR            :: 0;

    RIGID             :: 1;

    DUAL_QUATERNION   :: 2;

    BLENDED_DQ_LINEAR :: 3;

    FORCE_32BIT       :: 2147483647;

    UFBX_SKINNING_METHOD_LINEAR            :: LINEAR;

    UFBX_SKINNING_METHOD_RIGID             :: RIGID;

    UFBX_SKINNING_METHOD_DUAL_QUATERNION   :: DUAL_QUATERNION;

    UFBX_SKINNING_METHOD_BLENDED_DQ_LINEAR :: BLENDED_DQ_LINEAR;

    UFBX_SKINNING_METHOD_FORCE_32BIT       :: FORCE_32BIT;
}

Anon_Enum_20 :: enum s32 {
    UFBX_SKINNING_METHOD_COUNT :: 4;
}

// Skin weight information for a single mesh vertex
Ufbx_Skin_Vertex :: struct {
    weight_begin: u32; // < Index to start from in the `weights[]` array
    num_weights:  u32; // < Number of weights influencing the vertex

    // Blend weight between Linear Blend Skinning (0.0) and Dual Quaternion (1.0).
    // Should be used if `skinning_method == UFBX_SKINNING_METHOD_BLENDED_DQ_LINEAR`
    dq_weight:    Ufbx_Real;
}

Ufbx_Skin_Vertex_List :: struct {
    data:  *Ufbx_Skin_Vertex;
    count: u64;
}

// Single per-vertex per-cluster weight, see `ufbx_skin_vertex`
Ufbx_Skin_Weight :: struct {
    cluster_index: u32; // < Index into `ufbx_skin_deformer.clusters[]`
    weight:        Ufbx_Real; // < Amount this bone influence the vertex
}

Ufbx_Skin_Weight_List :: struct {
    data:  *Ufbx_Skin_Weight;
    count: u64;
}

// Skin deformer specifies a binding between a logical set of bones (a skeleton)
// and a mesh. Each bone is represented by a `ufbx_skin_cluster` that contains
// the binding matrix and a `ufbx_node *bone` that has the current transformation.
Ufbx_Skin_Deformer :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    skinning_method:        Ufbx_Skinning_Method;

    // Clusters (bones) in the skin
    clusters:               Ufbx_Skin_Cluster_List;

    // Per-vertex weight information
    vertices:               Ufbx_Skin_Vertex_List;
    weights:                Ufbx_Skin_Weight_List;

    // Largest amount of weights a single vertex can have
    max_weights_per_vertex: u64;

    // Blend weights between Linear Blend Skinning (0.0) and Dual Quaternion (1.0).
    // HINT: You probably want to use `vertices` and `ufbx_skin_vertex.dq_weight` instead!
    // NOTE: These may be out-of-bounds for a given mesh, `vertices` is always safe.
    num_dq_weights:         u64;
    dq_vertices:            Ufbx_Uint32_List;
    dq_weights:             Ufbx_Real_List;
}

// Cluster of vertices bound to a single bone.
Ufbx_Skin_Cluster :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // The bone node the cluster is attached to
    // NOTE: Always valid if found from `ufbx_skin_deformer.clusters[]` unless
    // `ufbx_load_opts.connect_broken_elements` is `true`.
    bone_node:                   *Ufbx_Node;

    // Binding matrix from local mesh vertices to the bone
    geometry_to_bone:            Ufbx_Matrix;

    // Binding matrix from local mesh _node_ to the bone.
    // NOTE: Prefer `geometry_to_bone` in most use cases!
    mesh_node_to_bone:           Ufbx_Matrix;

    // Matrix that specifies the rest/bind pose transform of the node,
    // not generally needed for skinning, use `geometry_to_bone` instead.
    bind_to_world:               Ufbx_Matrix;

    // Precomputed matrix/transform that accounts for the current bone transform
    // ie. `ufbx_matrix_mul(&cluster->bone->node_to_world, &cluster->geometry_to_bone)`
    geometry_to_world:           Ufbx_Matrix;
    geometry_to_world_transform: Ufbx_Transform;

    num_weights:                 u64; // < Number of vertices in the cluster
    vertices:                    Ufbx_Uint32_List; // < Vertex indices in `ufbx_mesh.vertices[]`
    weights:                     Ufbx_Real_List; // < Per-vertex weight values
}

// Blend shape deformer can contain multiple channels (think of sliders between morphs)
// that may optionally have in-between keyframes.
Ufbx_Blend_Deformer :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Independent morph targets of the deformer.
    channels: Ufbx_Blend_Channel_List;
}

// Blend shape associated with a target weight in a series of morphs
Ufbx_Blend_Keyframe :: struct {
    // The target blend shape offsets.
    shape:            *Ufbx_Blend_Shape;

    // Weight value at which to apply the keyframe at full strength
    target_weight:    Ufbx_Real;

    // The weight the shape should be currently applied with
    effective_weight: Ufbx_Real;
}

Ufbx_Blend_Keyframe_List :: struct {
    data:  *Ufbx_Blend_Keyframe;
    count: u64;
}

// Blend channel consists of multiple morph-key targets that are interpolated.
// In simple cases there will be only one keyframe that is the target shape.
Ufbx_Blend_Channel :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Current weight of the channel
    weight:       Ufbx_Real;

    // Key morph targets to blend between depending on `weight`
    // In usual cases there's only one target per channel
    keyframes:    Ufbx_Blend_Keyframe_List;

    // Final blend shape ignoring any intermediate blend shapes.
    target_shape: *Ufbx_Blend_Shape;
}

// Blend shape target containing the actual vertex offsets
Ufbx_Blend_Shape :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    num_offsets:      u64; // < Number of vertex offsets in the following arrays
    offset_vertices:  Ufbx_Uint32_List; // < Indices to `ufbx_mesh.vertices[]`
    position_offsets: Ufbx_Vec3_List; // < Always specified per-vertex offsets
    normal_offsets:   Ufbx_Vec3_List; // < Empty if not specified
}

Ufbx_Cache_File_Format :: enum s32 {
    UNKNOWN     :: 0;
    PC2         :: 1;
    MC          :: 2;

    FORCE_32BIT :: 2147483647;

    UFBX_CACHE_FILE_FORMAT_UNKNOWN     :: UNKNOWN;
    UFBX_CACHE_FILE_FORMAT_PC2         :: PC2;
    UFBX_CACHE_FILE_FORMAT_MC          :: MC;

    UFBX_CACHE_FILE_FORMAT_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_21 :: enum s32 {
    UFBX_CACHE_FILE_FORMAT_COUNT :: 3;
}

Ufbx_Cache_Data_Format :: enum s32 {
    UNKNOWN     :: 0;
    REAL_FLOAT  :: 1;
    VEC3_FLOAT  :: 2;
    REAL_DOUBLE :: 3;
    VEC3_DOUBLE :: 4;

    FORCE_32BIT :: 2147483647;

    UFBX_CACHE_DATA_FORMAT_UNKNOWN     :: UNKNOWN;
    UFBX_CACHE_DATA_FORMAT_REAL_FLOAT  :: REAL_FLOAT;
    UFBX_CACHE_DATA_FORMAT_VEC3_FLOAT  :: VEC3_FLOAT;
    UFBX_CACHE_DATA_FORMAT_REAL_DOUBLE :: REAL_DOUBLE;
    UFBX_CACHE_DATA_FORMAT_VEC3_DOUBLE :: VEC3_DOUBLE;

    UFBX_CACHE_DATA_FORMAT_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_22 :: enum s32 {
    UFBX_CACHE_DATA_FORMAT_COUNT :: 5;
}

Ufbx_Cache_Data_Encoding :: enum s32 {
    UNKNOWN       :: 0;
    LITTLE_ENDIAN :: 1;
    BIG_ENDIAN    :: 2;

    FORCE_32BIT   :: 2147483647;

    UFBX_CACHE_DATA_ENCODING_UNKNOWN       :: UNKNOWN;
    UFBX_CACHE_DATA_ENCODING_LITTLE_ENDIAN :: LITTLE_ENDIAN;
    UFBX_CACHE_DATA_ENCODING_BIG_ENDIAN    :: BIG_ENDIAN;

    UFBX_CACHE_DATA_ENCODING_FORCE_32BIT   :: FORCE_32BIT;
}

Anon_Enum_23 :: enum s32 {
    UFBX_CACHE_DATA_ENCODING_COUNT :: 3;
}

// Known interpretations of geometry cache data.
Ufbx_Cache_Interpretation :: enum s32 {
    UNKNOWN         :: 0;

    POINTS          :: 1;

    VERTEX_POSITION :: 2;

    VERTEX_NORMAL   :: 3;

    FORCE_32BIT     :: 2147483647;

    UFBX_CACHE_INTERPRETATION_UNKNOWN         :: UNKNOWN;

    UFBX_CACHE_INTERPRETATION_POINTS          :: POINTS;

    UFBX_CACHE_INTERPRETATION_VERTEX_POSITION :: VERTEX_POSITION;

    UFBX_CACHE_INTERPRETATION_VERTEX_NORMAL   :: VERTEX_NORMAL;

    UFBX_CACHE_INTERPRETATION_FORCE_32BIT     :: FORCE_32BIT;
}

Anon_Enum_24 :: enum s32 {
    UFBX_CACHE_INTERPRETATION_COUNT :: 4;
}

Ufbx_Cache_Frame :: struct {
    // Name of the channel this frame belongs to.
    channel:            Ufbx_String;

    // Time of this frame in seconds.
    time:               float64;

    // Name of the file containing the data.
    // The specified file may contain multiple frames, use `data_offset` etc. to
    // read at the right position.
    filename:           Ufbx_String;

    // Format of the wrapper file.
    file_format:        Ufbx_Cache_File_Format;

    // Axis to mirror the read data by.
    mirror_axis:        Ufbx_Mirror_Axis;

    // Factor to scale the geometry by.
    scale_factor:       Ufbx_Real;

    data_format:        Ufbx_Cache_Data_Format; // < Format of the data in the file
    data_encoding:      Ufbx_Cache_Data_Encoding; // < Binary encoding of the data
    data_offset:        u64; // < Byte offset into the file
    data_count:         u32; // < Number of data elements
    data_element_bytes: u32; // < Size of a single data element in bytes
    data_total_bytes:   u64; // < Size of the whole data blob in bytes
}

Ufbx_Cache_Frame_List :: struct {
    data:  *Ufbx_Cache_Frame;
    count: u64;
}

Ufbx_Cache_Channel :: struct {
    // Name of the geometry cache channel.
    name:                Ufbx_String;

    // What does the data in this channel represent.
    interpretation:      Ufbx_Cache_Interpretation;

    // Source name for `interpretation`, especially useful if `interpretation` is
    // `UFBX_CACHE_INTERPRETATION_UNKNOWN`.
    interpretation_name: Ufbx_String;

    // List of frames belonging to this channel.
    // Sorted by time (`ufbx_cache_frame.time`).
    frames:              Ufbx_Cache_Frame_List;

    // Axis to mirror the frames by.
    mirror_axis:         Ufbx_Mirror_Axis;

    // Factor to scale the geometry by.
    scale_factor:        Ufbx_Real;
}

Ufbx_Cache_Channel_List :: struct {
    data:  *Ufbx_Cache_Channel;
    count: u64;
}

Ufbx_Geometry_Cache :: struct {
    root_filename: Ufbx_String;
    channels:      Ufbx_Cache_Channel_List;
    frames:        Ufbx_Cache_Frame_List;
    extra_info:    Ufbx_String_List;
}

Ufbx_Cache_Deformer :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    channel:          Ufbx_String;
    file:             *Ufbx_Cache_File;

    // Only valid if `ufbx_load_opts.load_external_files` is set!
    external_cache:   *Ufbx_Geometry_Cache;
    external_channel: *Ufbx_Cache_Channel;
}

Ufbx_Cache_File :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Filename relative to the currently loaded file.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    filename:              Ufbx_String;

    // Absolute filename specified in the file.
    absolute_filename:     Ufbx_String;

    // Relative filename specified in the file.
    // NOTE: May be absolute if the file is saved in a different drive.
    relative_filename:     Ufbx_String;

    // Filename relative to the loaded file, non-UTF-8 encoded.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    raw_filename:          Ufbx_Blob;

    // Absolute filename specified in the file, non-UTF-8 encoded.
    raw_absolute_filename: Ufbx_Blob;

    // Relative filename specified in the file, non-UTF-8 encoded.
    // NOTE: May be absolute if the file is saved in a different drive.
    raw_relative_filename: Ufbx_Blob;

    format:                Ufbx_Cache_File_Format;

    // Only valid if `ufbx_load_opts.load_external_files` is set!
    external_cache:        *Ufbx_Geometry_Cache;
}

// Material property, either specified with a constant value or a mapped texture
Ufbx_Material_Map :: struct {
    // Constant value or factor for the map.
    // May be specified simultaneously with a texture, in this case most shading models
    // use multiplicative tinting of the texture values.
    union {
        value_real: Ufbx_Real;
        value_vec2: ufbx_vec2;
        value_vec3: ufbx_vec3;
        value_vec4: ufbx_vec4;
    }

    value_int:        s64;

    // Texture if connected, otherwise `NULL`.
    // May be valid but "disabled" (application specific) if `texture_enabled == false`.
    texture:          *Ufbx_Texture;

    // `true` if the file has specified any of the values above.
    // NOTE: The value may be set to a non-zero default even if `has_value == false`,
    // for example missing factors are set to `1.0` if a color is defined.
    has_value:        bool;

    // Controls whether shading should use `texture`.
    // NOTE: Some shading models allow this to be `true` even if `texture == NULL`.
    texture_enabled:  bool;

    // Set to `true` if this feature should be disabled (specific to shader type).
    feature_disabled: bool;

    // Number of components in the value from 1 to 4 if defined, 0 if not.
    value_components: u8;
}

// Material feature
Ufbx_Material_Feature_Info :: struct {
    // Whether the material model uses this feature or not.
    // NOTE: The feature can be enabled but still not used if eg. the corresponding factor is at zero!
    enabled:     bool;

    // Explicitly enabled/disabled by the material.
    is_explicit: bool;
}

// Texture attached to an FBX property
Ufbx_Material_Texture :: struct {
    material_prop: Ufbx_String; // < Name of the property in `ufbx_material.props`
    shader_prop:   Ufbx_String; // < Shader-specific property mapping name

    // Texture attached to the property.
    texture:       *Ufbx_Texture;
}

Ufbx_Material_Texture_List :: struct {
    data:  *Ufbx_Material_Texture;
    count: u64;
}

// Shading model type
Ufbx_Shader_Type :: enum s32 {
    UNKNOWN                    :: 0;

    FBX_LAMBERT                :: 1;

    FBX_PHONG                  :: 2;

    OSL_STANDARD_SURFACE       :: 3;

    ARNOLD_STANDARD_SURFACE    :: 4;

    _3DS_MAX_PHYSICAL_MATERIAL :: 5;

    _3DS_MAX_PBR_METAL_ROUGH   :: 6;

    _3DS_MAX_PBR_SPEC_GLOSS    :: 7;

    GLTF_MATERIAL              :: 8;

    OPENPBR_MATERIAL           :: 9;

    SHADERFX_GRAPH             :: 10;

    BLENDER_PHONG              :: 11;

    WAVEFRONT_MTL              :: 12;

    TYPE_FORCE_32BIT           :: 2147483647;

    UFBX_SHADER_UNKNOWN                   :: UNKNOWN;

    UFBX_SHADER_FBX_LAMBERT               :: FBX_LAMBERT;

    UFBX_SHADER_FBX_PHONG                 :: FBX_PHONG;

    UFBX_SHADER_OSL_STANDARD_SURFACE      :: OSL_STANDARD_SURFACE;

    UFBX_SHADER_ARNOLD_STANDARD_SURFACE   :: ARNOLD_STANDARD_SURFACE;

    UFBX_SHADER_3DS_MAX_PHYSICAL_MATERIAL :: _3DS_MAX_PHYSICAL_MATERIAL;

    UFBX_SHADER_3DS_MAX_PBR_METAL_ROUGH   :: _3DS_MAX_PBR_METAL_ROUGH;

    UFBX_SHADER_3DS_MAX_PBR_SPEC_GLOSS    :: _3DS_MAX_PBR_SPEC_GLOSS;

    UFBX_SHADER_GLTF_MATERIAL             :: GLTF_MATERIAL;

    UFBX_SHADER_OPENPBR_MATERIAL          :: OPENPBR_MATERIAL;

    UFBX_SHADER_SHADERFX_GRAPH            :: SHADERFX_GRAPH;

    UFBX_SHADER_BLENDER_PHONG             :: BLENDER_PHONG;

    UFBX_SHADER_WAVEFRONT_MTL             :: WAVEFRONT_MTL;

    UFBX_SHADER_TYPE_FORCE_32BIT          :: TYPE_FORCE_32BIT;
}

Anon_Enum_25 :: enum s32 {
    UFBX_SHADER_TYPE_COUNT :: 13;
}

// FBX builtin material properties, matches maps in `ufbx_material_fbx_maps`
Ufbx_Material_Fbx_Map :: enum s32 {
    DIFFUSE_FACTOR             :: 0;
    DIFFUSE_COLOR              :: 1;
    SPECULAR_FACTOR            :: 2;
    SPECULAR_COLOR             :: 3;
    SPECULAR_EXPONENT          :: 4;
    REFLECTION_FACTOR          :: 5;
    REFLECTION_COLOR           :: 6;
    TRANSPARENCY_FACTOR        :: 7;
    TRANSPARENCY_COLOR         :: 8;
    EMISSION_FACTOR            :: 9;
    EMISSION_COLOR             :: 10;
    AMBIENT_FACTOR             :: 11;
    AMBIENT_COLOR              :: 12;
    NORMAL_MAP                 :: 13;
    BUMP                       :: 14;
    BUMP_FACTOR                :: 15;
    DISPLACEMENT_FACTOR        :: 16;
    DISPLACEMENT               :: 17;
    VECTOR_DISPLACEMENT_FACTOR :: 18;
    VECTOR_DISPLACEMENT        :: 19;

    MAP_FORCE_32BIT            :: 2147483647;

    UFBX_MATERIAL_FBX_DIFFUSE_FACTOR             :: DIFFUSE_FACTOR;
    UFBX_MATERIAL_FBX_DIFFUSE_COLOR              :: DIFFUSE_COLOR;
    UFBX_MATERIAL_FBX_SPECULAR_FACTOR            :: SPECULAR_FACTOR;
    UFBX_MATERIAL_FBX_SPECULAR_COLOR             :: SPECULAR_COLOR;
    UFBX_MATERIAL_FBX_SPECULAR_EXPONENT          :: SPECULAR_EXPONENT;
    UFBX_MATERIAL_FBX_REFLECTION_FACTOR          :: REFLECTION_FACTOR;
    UFBX_MATERIAL_FBX_REFLECTION_COLOR           :: REFLECTION_COLOR;
    UFBX_MATERIAL_FBX_TRANSPARENCY_FACTOR        :: TRANSPARENCY_FACTOR;
    UFBX_MATERIAL_FBX_TRANSPARENCY_COLOR         :: TRANSPARENCY_COLOR;
    UFBX_MATERIAL_FBX_EMISSION_FACTOR            :: EMISSION_FACTOR;
    UFBX_MATERIAL_FBX_EMISSION_COLOR             :: EMISSION_COLOR;
    UFBX_MATERIAL_FBX_AMBIENT_FACTOR             :: AMBIENT_FACTOR;
    UFBX_MATERIAL_FBX_AMBIENT_COLOR              :: AMBIENT_COLOR;
    UFBX_MATERIAL_FBX_NORMAL_MAP                 :: NORMAL_MAP;
    UFBX_MATERIAL_FBX_BUMP                       :: BUMP;
    UFBX_MATERIAL_FBX_BUMP_FACTOR                :: BUMP_FACTOR;
    UFBX_MATERIAL_FBX_DISPLACEMENT_FACTOR        :: DISPLACEMENT_FACTOR;
    UFBX_MATERIAL_FBX_DISPLACEMENT               :: DISPLACEMENT;
    UFBX_MATERIAL_FBX_VECTOR_DISPLACEMENT_FACTOR :: VECTOR_DISPLACEMENT_FACTOR;
    UFBX_MATERIAL_FBX_VECTOR_DISPLACEMENT        :: VECTOR_DISPLACEMENT;

    UFBX_MATERIAL_FBX_MAP_FORCE_32BIT            :: MAP_FORCE_32BIT;
}

Anon_Enum_26 :: enum s32 {
    UFBX_MATERIAL_FBX_MAP_COUNT :: 20;
}

// Known PBR material properties, matches maps in `ufbx_material_pbr_maps`
Ufbx_Material_Pbr_Map :: enum s32 {
    BASE_FACTOR                     :: 0;
    BASE_COLOR                      :: 1;
    ROUGHNESS                       :: 2;
    METALNESS                       :: 3;
    DIFFUSE_ROUGHNESS               :: 4;
    SPECULAR_FACTOR                 :: 5;
    SPECULAR_COLOR                  :: 6;
    SPECULAR_IOR                    :: 7;
    SPECULAR_ANISOTROPY             :: 8;
    SPECULAR_ROTATION               :: 9;
    TRANSMISSION_FACTOR             :: 10;
    TRANSMISSION_COLOR              :: 11;
    TRANSMISSION_DEPTH              :: 12;
    TRANSMISSION_SCATTER            :: 13;
    TRANSMISSION_SCATTER_ANISOTROPY :: 14;
    TRANSMISSION_DISPERSION         :: 15;
    TRANSMISSION_ROUGHNESS          :: 16;
    TRANSMISSION_EXTRA_ROUGHNESS    :: 17;
    TRANSMISSION_PRIORITY           :: 18;
    TRANSMISSION_ENABLE_IN_AOV      :: 19;
    SUBSURFACE_FACTOR               :: 20;
    SUBSURFACE_COLOR                :: 21;
    SUBSURFACE_RADIUS               :: 22;
    SUBSURFACE_SCALE                :: 23;
    SUBSURFACE_ANISOTROPY           :: 24;
    SUBSURFACE_TINT_COLOR           :: 25;
    SUBSURFACE_TYPE                 :: 26;
    SHEEN_FACTOR                    :: 27;
    SHEEN_COLOR                     :: 28;
    SHEEN_ROUGHNESS                 :: 29;
    COAT_FACTOR                     :: 30;
    COAT_COLOR                      :: 31;
    COAT_ROUGHNESS                  :: 32;
    COAT_IOR                        :: 33;
    COAT_ANISOTROPY                 :: 34;
    COAT_ROTATION                   :: 35;
    COAT_NORMAL                     :: 36;
    COAT_AFFECT_BASE_COLOR          :: 37;
    COAT_AFFECT_BASE_ROUGHNESS      :: 38;
    THIN_FILM_FACTOR                :: 39;
    THIN_FILM_THICKNESS             :: 40;
    THIN_FILM_IOR                   :: 41;
    EMISSION_FACTOR                 :: 42;
    EMISSION_COLOR                  :: 43;
    OPACITY                         :: 44;
    INDIRECT_DIFFUSE                :: 45;
    INDIRECT_SPECULAR               :: 46;
    NORMAL_MAP                      :: 47;
    TANGENT_MAP                     :: 48;
    DISPLACEMENT_MAP                :: 49;
    MATTE_FACTOR                    :: 50;
    MATTE_COLOR                     :: 51;
    AMBIENT_OCCLUSION               :: 52;
    GLOSSINESS                      :: 53;
    COAT_GLOSSINESS                 :: 54;
    TRANSMISSION_GLOSSINESS         :: 55;

    MAP_FORCE_32BIT                 :: 2147483647;

    UFBX_MATERIAL_PBR_BASE_FACTOR                     :: BASE_FACTOR;
    UFBX_MATERIAL_PBR_BASE_COLOR                      :: BASE_COLOR;
    UFBX_MATERIAL_PBR_ROUGHNESS                       :: ROUGHNESS;
    UFBX_MATERIAL_PBR_METALNESS                       :: METALNESS;
    UFBX_MATERIAL_PBR_DIFFUSE_ROUGHNESS               :: DIFFUSE_ROUGHNESS;
    UFBX_MATERIAL_PBR_SPECULAR_FACTOR                 :: SPECULAR_FACTOR;
    UFBX_MATERIAL_PBR_SPECULAR_COLOR                  :: SPECULAR_COLOR;
    UFBX_MATERIAL_PBR_SPECULAR_IOR                    :: SPECULAR_IOR;
    UFBX_MATERIAL_PBR_SPECULAR_ANISOTROPY             :: SPECULAR_ANISOTROPY;
    UFBX_MATERIAL_PBR_SPECULAR_ROTATION               :: SPECULAR_ROTATION;
    UFBX_MATERIAL_PBR_TRANSMISSION_FACTOR             :: TRANSMISSION_FACTOR;
    UFBX_MATERIAL_PBR_TRANSMISSION_COLOR              :: TRANSMISSION_COLOR;
    UFBX_MATERIAL_PBR_TRANSMISSION_DEPTH              :: TRANSMISSION_DEPTH;
    UFBX_MATERIAL_PBR_TRANSMISSION_SCATTER            :: TRANSMISSION_SCATTER;
    UFBX_MATERIAL_PBR_TRANSMISSION_SCATTER_ANISOTROPY :: TRANSMISSION_SCATTER_ANISOTROPY;
    UFBX_MATERIAL_PBR_TRANSMISSION_DISPERSION         :: TRANSMISSION_DISPERSION;
    UFBX_MATERIAL_PBR_TRANSMISSION_ROUGHNESS          :: TRANSMISSION_ROUGHNESS;
    UFBX_MATERIAL_PBR_TRANSMISSION_EXTRA_ROUGHNESS    :: TRANSMISSION_EXTRA_ROUGHNESS;
    UFBX_MATERIAL_PBR_TRANSMISSION_PRIORITY           :: TRANSMISSION_PRIORITY;
    UFBX_MATERIAL_PBR_TRANSMISSION_ENABLE_IN_AOV      :: TRANSMISSION_ENABLE_IN_AOV;
    UFBX_MATERIAL_PBR_SUBSURFACE_FACTOR               :: SUBSURFACE_FACTOR;
    UFBX_MATERIAL_PBR_SUBSURFACE_COLOR                :: SUBSURFACE_COLOR;
    UFBX_MATERIAL_PBR_SUBSURFACE_RADIUS               :: SUBSURFACE_RADIUS;
    UFBX_MATERIAL_PBR_SUBSURFACE_SCALE                :: SUBSURFACE_SCALE;
    UFBX_MATERIAL_PBR_SUBSURFACE_ANISOTROPY           :: SUBSURFACE_ANISOTROPY;
    UFBX_MATERIAL_PBR_SUBSURFACE_TINT_COLOR           :: SUBSURFACE_TINT_COLOR;
    UFBX_MATERIAL_PBR_SUBSURFACE_TYPE                 :: SUBSURFACE_TYPE;
    UFBX_MATERIAL_PBR_SHEEN_FACTOR                    :: SHEEN_FACTOR;
    UFBX_MATERIAL_PBR_SHEEN_COLOR                     :: SHEEN_COLOR;
    UFBX_MATERIAL_PBR_SHEEN_ROUGHNESS                 :: SHEEN_ROUGHNESS;
    UFBX_MATERIAL_PBR_COAT_FACTOR                     :: COAT_FACTOR;
    UFBX_MATERIAL_PBR_COAT_COLOR                      :: COAT_COLOR;
    UFBX_MATERIAL_PBR_COAT_ROUGHNESS                  :: COAT_ROUGHNESS;
    UFBX_MATERIAL_PBR_COAT_IOR                        :: COAT_IOR;
    UFBX_MATERIAL_PBR_COAT_ANISOTROPY                 :: COAT_ANISOTROPY;
    UFBX_MATERIAL_PBR_COAT_ROTATION                   :: COAT_ROTATION;
    UFBX_MATERIAL_PBR_COAT_NORMAL                     :: COAT_NORMAL;
    UFBX_MATERIAL_PBR_COAT_AFFECT_BASE_COLOR          :: COAT_AFFECT_BASE_COLOR;
    UFBX_MATERIAL_PBR_COAT_AFFECT_BASE_ROUGHNESS      :: COAT_AFFECT_BASE_ROUGHNESS;
    UFBX_MATERIAL_PBR_THIN_FILM_FACTOR                :: THIN_FILM_FACTOR;
    UFBX_MATERIAL_PBR_THIN_FILM_THICKNESS             :: THIN_FILM_THICKNESS;
    UFBX_MATERIAL_PBR_THIN_FILM_IOR                   :: THIN_FILM_IOR;
    UFBX_MATERIAL_PBR_EMISSION_FACTOR                 :: EMISSION_FACTOR;
    UFBX_MATERIAL_PBR_EMISSION_COLOR                  :: EMISSION_COLOR;
    UFBX_MATERIAL_PBR_OPACITY                         :: OPACITY;
    UFBX_MATERIAL_PBR_INDIRECT_DIFFUSE                :: INDIRECT_DIFFUSE;
    UFBX_MATERIAL_PBR_INDIRECT_SPECULAR               :: INDIRECT_SPECULAR;
    UFBX_MATERIAL_PBR_NORMAL_MAP                      :: NORMAL_MAP;
    UFBX_MATERIAL_PBR_TANGENT_MAP                     :: TANGENT_MAP;
    UFBX_MATERIAL_PBR_DISPLACEMENT_MAP                :: DISPLACEMENT_MAP;
    UFBX_MATERIAL_PBR_MATTE_FACTOR                    :: MATTE_FACTOR;
    UFBX_MATERIAL_PBR_MATTE_COLOR                     :: MATTE_COLOR;
    UFBX_MATERIAL_PBR_AMBIENT_OCCLUSION               :: AMBIENT_OCCLUSION;
    UFBX_MATERIAL_PBR_GLOSSINESS                      :: GLOSSINESS;
    UFBX_MATERIAL_PBR_COAT_GLOSSINESS                 :: COAT_GLOSSINESS;
    UFBX_MATERIAL_PBR_TRANSMISSION_GLOSSINESS         :: TRANSMISSION_GLOSSINESS;

    UFBX_MATERIAL_PBR_MAP_FORCE_32BIT                 :: MAP_FORCE_32BIT;
}

Anon_Enum_27 :: enum s32 {
    UFBX_MATERIAL_PBR_MAP_COUNT :: 56;
}

// Known material features
Ufbx_Material_Feature :: enum s32 {
    PBR                                  :: 0;
    METALNESS                            :: 1;
    DIFFUSE                              :: 2;
    SPECULAR                             :: 3;
    EMISSION                             :: 4;
    TRANSMISSION                         :: 5;
    COAT                                 :: 6;
    SHEEN                                :: 7;
    OPACITY                              :: 8;
    AMBIENT_OCCLUSION                    :: 9;
    MATTE                                :: 10;
    UNLIT                                :: 11;
    IOR                                  :: 12;
    DIFFUSE_ROUGHNESS                    :: 13;
    TRANSMISSION_ROUGHNESS               :: 14;
    THIN_WALLED                          :: 15;
    CAUSTICS                             :: 16;
    EXIT_TO_BACKGROUND                   :: 17;
    INTERNAL_REFLECTIONS                 :: 18;
    DOUBLE_SIDED                         :: 19;
    ROUGHNESS_AS_GLOSSINESS              :: 20;
    COAT_ROUGHNESS_AS_GLOSSINESS         :: 21;
    TRANSMISSION_ROUGHNESS_AS_GLOSSINESS :: 22;

    FORCE_32BIT                          :: 2147483647;

    UFBX_MATERIAL_FEATURE_PBR                                  :: PBR;
    UFBX_MATERIAL_FEATURE_METALNESS                            :: METALNESS;
    UFBX_MATERIAL_FEATURE_DIFFUSE                              :: DIFFUSE;
    UFBX_MATERIAL_FEATURE_SPECULAR                             :: SPECULAR;
    UFBX_MATERIAL_FEATURE_EMISSION                             :: EMISSION;
    UFBX_MATERIAL_FEATURE_TRANSMISSION                         :: TRANSMISSION;
    UFBX_MATERIAL_FEATURE_COAT                                 :: COAT;
    UFBX_MATERIAL_FEATURE_SHEEN                                :: SHEEN;
    UFBX_MATERIAL_FEATURE_OPACITY                              :: OPACITY;
    UFBX_MATERIAL_FEATURE_AMBIENT_OCCLUSION                    :: AMBIENT_OCCLUSION;
    UFBX_MATERIAL_FEATURE_MATTE                                :: MATTE;
    UFBX_MATERIAL_FEATURE_UNLIT                                :: UNLIT;
    UFBX_MATERIAL_FEATURE_IOR                                  :: IOR;
    UFBX_MATERIAL_FEATURE_DIFFUSE_ROUGHNESS                    :: DIFFUSE_ROUGHNESS;
    UFBX_MATERIAL_FEATURE_TRANSMISSION_ROUGHNESS               :: TRANSMISSION_ROUGHNESS;
    UFBX_MATERIAL_FEATURE_THIN_WALLED                          :: THIN_WALLED;
    UFBX_MATERIAL_FEATURE_CAUSTICS                             :: CAUSTICS;
    UFBX_MATERIAL_FEATURE_EXIT_TO_BACKGROUND                   :: EXIT_TO_BACKGROUND;
    UFBX_MATERIAL_FEATURE_INTERNAL_REFLECTIONS                 :: INTERNAL_REFLECTIONS;
    UFBX_MATERIAL_FEATURE_DOUBLE_SIDED                         :: DOUBLE_SIDED;
    UFBX_MATERIAL_FEATURE_ROUGHNESS_AS_GLOSSINESS              :: ROUGHNESS_AS_GLOSSINESS;
    UFBX_MATERIAL_FEATURE_COAT_ROUGHNESS_AS_GLOSSINESS         :: COAT_ROUGHNESS_AS_GLOSSINESS;
    UFBX_MATERIAL_FEATURE_TRANSMISSION_ROUGHNESS_AS_GLOSSINESS :: TRANSMISSION_ROUGHNESS_AS_GLOSSINESS;

    UFBX_MATERIAL_FEATURE_FORCE_32BIT                          :: FORCE_32BIT;
}

Anon_Enum_28 :: enum s32 {
    UFBX_MATERIAL_FEATURE_COUNT :: 23;
}

Ufbx_Material_Fbx_Maps :: struct {
    union {
        maps: [20] Ufbx_Material_Map;
        struct {
            diffuse_factor:             Ufbx_Material_Map;
            diffuse_color:              Ufbx_Material_Map;
            specular_factor:            Ufbx_Material_Map;
            specular_color:             Ufbx_Material_Map;
            specular_exponent:          Ufbx_Material_Map;
            reflection_factor:          Ufbx_Material_Map;
            reflection_color:           Ufbx_Material_Map;
            transparency_factor:        Ufbx_Material_Map;
            transparency_color:         Ufbx_Material_Map;
            emission_factor:            Ufbx_Material_Map;
            emission_color:             Ufbx_Material_Map;
            ambient_factor:             Ufbx_Material_Map;
            ambient_color:              Ufbx_Material_Map;
            normal_map:                 Ufbx_Material_Map;
            bump:                       Ufbx_Material_Map;
            bump_factor:                Ufbx_Material_Map;
            displacement_factor:        Ufbx_Material_Map;
            displacement:               Ufbx_Material_Map;
            vector_displacement_factor: Ufbx_Material_Map;
            vector_displacement:        Ufbx_Material_Map;
        }
    }
}

Ufbx_Material_Pbr_Maps :: struct {
    union {
        maps: [56] Ufbx_Material_Map;
        struct {
            base_factor:                     Ufbx_Material_Map;
            base_color:                      Ufbx_Material_Map;
            roughness:                       Ufbx_Material_Map;
            metalness:                       Ufbx_Material_Map;
            diffuse_roughness:               Ufbx_Material_Map;
            specular_factor:                 Ufbx_Material_Map;
            specular_color:                  Ufbx_Material_Map;
            specular_ior:                    Ufbx_Material_Map;
            specular_anisotropy:             Ufbx_Material_Map;
            specular_rotation:               Ufbx_Material_Map;
            transmission_factor:             Ufbx_Material_Map;
            transmission_color:              Ufbx_Material_Map;
            transmission_depth:              Ufbx_Material_Map;
            transmission_scatter:            Ufbx_Material_Map;
            transmission_scatter_anisotropy: Ufbx_Material_Map;
            transmission_dispersion:         Ufbx_Material_Map;
            transmission_roughness:          Ufbx_Material_Map;
            transmission_extra_roughness:    Ufbx_Material_Map;
            transmission_priority:           Ufbx_Material_Map;
            transmission_enable_in_aov:      Ufbx_Material_Map;
            subsurface_factor:               Ufbx_Material_Map;
            subsurface_color:                Ufbx_Material_Map;
            subsurface_radius:               Ufbx_Material_Map;
            subsurface_scale:                Ufbx_Material_Map;
            subsurface_anisotropy:           Ufbx_Material_Map;
            subsurface_tint_color:           Ufbx_Material_Map;
            subsurface_type:                 Ufbx_Material_Map;
            sheen_factor:                    Ufbx_Material_Map;
            sheen_color:                     Ufbx_Material_Map;
            sheen_roughness:                 Ufbx_Material_Map;
            coat_factor:                     Ufbx_Material_Map;
            coat_color:                      Ufbx_Material_Map;
            coat_roughness:                  Ufbx_Material_Map;
            coat_ior:                        Ufbx_Material_Map;
            coat_anisotropy:                 Ufbx_Material_Map;
            coat_rotation:                   Ufbx_Material_Map;
            coat_normal:                     Ufbx_Material_Map;
            coat_affect_base_color:          Ufbx_Material_Map;
            coat_affect_base_roughness:      Ufbx_Material_Map;
            thin_film_factor:                Ufbx_Material_Map;
            thin_film_thickness:             Ufbx_Material_Map;
            thin_film_ior:                   Ufbx_Material_Map;
            emission_factor:                 Ufbx_Material_Map;
            emission_color:                  Ufbx_Material_Map;
            opacity:                         Ufbx_Material_Map;
            indirect_diffuse:                Ufbx_Material_Map;
            indirect_specular:               Ufbx_Material_Map;
            normal_map:                      Ufbx_Material_Map;
            tangent_map:                     Ufbx_Material_Map;
            displacement_map:                Ufbx_Material_Map;
            matte_factor:                    Ufbx_Material_Map;
            matte_color:                     Ufbx_Material_Map;
            ambient_occlusion:               Ufbx_Material_Map;
            glossiness:                      Ufbx_Material_Map;
            coat_glossiness:                 Ufbx_Material_Map;
            transmission_glossiness:         Ufbx_Material_Map;
        }
    }
}

Ufbx_Material_Features :: struct {
    union {
        features: [23] Ufbx_Material_Feature_Info;
        struct {
            pbr:                                  Ufbx_Material_Feature_Info;
            metalness:                            Ufbx_Material_Feature_Info;
            diffuse:                              Ufbx_Material_Feature_Info;
            specular:                             Ufbx_Material_Feature_Info;
            emission:                             Ufbx_Material_Feature_Info;
            transmission:                         Ufbx_Material_Feature_Info;
            coat:                                 Ufbx_Material_Feature_Info;
            sheen:                                Ufbx_Material_Feature_Info;
            opacity:                              Ufbx_Material_Feature_Info;
            ambient_occlusion:                    Ufbx_Material_Feature_Info;
            matte:                                Ufbx_Material_Feature_Info;
            unlit:                                Ufbx_Material_Feature_Info;
            ior:                                  Ufbx_Material_Feature_Info;
            diffuse_roughness:                    Ufbx_Material_Feature_Info;
            transmission_roughness:               Ufbx_Material_Feature_Info;
            thin_walled:                          Ufbx_Material_Feature_Info;
            caustics:                             Ufbx_Material_Feature_Info;
            exit_to_background:                   Ufbx_Material_Feature_Info;
            internal_reflections:                 Ufbx_Material_Feature_Info;
            double_sided:                         Ufbx_Material_Feature_Info;
            roughness_as_glossiness:              Ufbx_Material_Feature_Info;
            coat_roughness_as_glossiness:         Ufbx_Material_Feature_Info;
            transmission_roughness_as_glossiness: Ufbx_Material_Feature_Info;
        }
    }
}

// Surface material properties such as color, roughness, etc. Each property may
// be optionally bound to an `ufbx_texture`.
Ufbx_Material :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // FBX builtin properties
    // NOTE: These may be empty if the material is using a custom shader
    fbx:                Ufbx_Material_Fbx_Maps;

    // PBR material properties, defined for all shading models but may be
    // somewhat approximate if `shader == NULL`.
    pbr:                Ufbx_Material_Pbr_Maps;

    // Material features, primarily applies to `pbr`.
    features:           Ufbx_Material_Features;

    shader_type:        Ufbx_Shader_Type; // < Always defined
    shader:             *Ufbx_Shader; // < Optional extended shader information
    shading_model_name: Ufbx_String; // < Often one of `{ "lambert", "phong", "unknown" }`

    // Prefix before shader property names with trailing `|`.
    // For example `"3dsMax|Parameters|"` where properties would have names like
    // `"3dsMax|Parameters|base_color"`. You can ignore this if you use the built-in
    // `ufbx_material_fbx_maps fbx` and `ufbx_material_pbr_maps pbr` structures.
    shader_prop_prefix: Ufbx_String;

    textures:           Ufbx_Material_Texture_List; // < Sorted by `material_prop`
}

Ufbx_Texture_Type :: enum s32 {
    FILE             :: 0;

    LAYERED          :: 1;

    PROCEDURAL       :: 2;

    SHADER           :: 3;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_TEXTURE_FILE             :: FILE;

    UFBX_TEXTURE_LAYERED          :: LAYERED;

    UFBX_TEXTURE_PROCEDURAL       :: PROCEDURAL;

    UFBX_TEXTURE_SHADER           :: SHADER;

    UFBX_TEXTURE_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_29 :: enum s32 {
    UFBX_TEXTURE_TYPE_COUNT :: 4;
}

// Blend modes to combine layered textures with, compatible with common blend
// mode definitions in many art programs. Simpler blend modes have equations
// specified below where `src` is the layer to composite over `dst`.
// See eg. https://www.w3.org/TR/2013/WD-compositing-1-20131010/#blendingseparable
Ufbx_Blend_Mode :: enum s32 {
    TRANSLUCENT      :: 0;
    ADDITIVE         :: 1;
    MULTIPLY         :: 2;
    MULTIPLY_2X      :: 3;
    OVER             :: 4;
    REPLACE          :: 5;
    DISSOLVE         :: 6;
    DARKEN           :: 7;
    COLOR_BURN       :: 8;
    LINEAR_BURN      :: 9;
    DARKER_COLOR     :: 10;
    LIGHTEN          :: 11;
    SCREEN           :: 12;
    COLOR_DODGE      :: 13;
    LINEAR_DODGE     :: 14;
    LIGHTER_COLOR    :: 15;
    SOFT_LIGHT       :: 16;
    HARD_LIGHT       :: 17;
    VIVID_LIGHT      :: 18;
    LINEAR_LIGHT     :: 19;
    PIN_LIGHT        :: 20;
    HARD_MIX         :: 21;
    DIFFERENCE       :: 22;
    EXCLUSION        :: 23;
    SUBTRACT         :: 24;
    DIVIDE           :: 25;
    HUE              :: 26;
    SATURATION       :: 27;
    COLOR            :: 28;
    LUMINOSITY       :: 29;
    OVERLAY          :: 30;

    MODE_FORCE_32BIT :: 2147483647;

    UFBX_BLEND_TRANSLUCENT      :: TRANSLUCENT;
    UFBX_BLEND_ADDITIVE         :: ADDITIVE;
    UFBX_BLEND_MULTIPLY         :: MULTIPLY;
    UFBX_BLEND_MULTIPLY_2X      :: MULTIPLY_2X;
    UFBX_BLEND_OVER             :: OVER;
    UFBX_BLEND_REPLACE          :: REPLACE;
    UFBX_BLEND_DISSOLVE         :: DISSOLVE;
    UFBX_BLEND_DARKEN           :: DARKEN;
    UFBX_BLEND_COLOR_BURN       :: COLOR_BURN;
    UFBX_BLEND_LINEAR_BURN      :: LINEAR_BURN;
    UFBX_BLEND_DARKER_COLOR     :: DARKER_COLOR;
    UFBX_BLEND_LIGHTEN          :: LIGHTEN;
    UFBX_BLEND_SCREEN           :: SCREEN;
    UFBX_BLEND_COLOR_DODGE      :: COLOR_DODGE;
    UFBX_BLEND_LINEAR_DODGE     :: LINEAR_DODGE;
    UFBX_BLEND_LIGHTER_COLOR    :: LIGHTER_COLOR;
    UFBX_BLEND_SOFT_LIGHT       :: SOFT_LIGHT;
    UFBX_BLEND_HARD_LIGHT       :: HARD_LIGHT;
    UFBX_BLEND_VIVID_LIGHT      :: VIVID_LIGHT;
    UFBX_BLEND_LINEAR_LIGHT     :: LINEAR_LIGHT;
    UFBX_BLEND_PIN_LIGHT        :: PIN_LIGHT;
    UFBX_BLEND_HARD_MIX         :: HARD_MIX;
    UFBX_BLEND_DIFFERENCE       :: DIFFERENCE;
    UFBX_BLEND_EXCLUSION        :: EXCLUSION;
    UFBX_BLEND_SUBTRACT         :: SUBTRACT;
    UFBX_BLEND_DIVIDE           :: DIVIDE;
    UFBX_BLEND_HUE              :: HUE;
    UFBX_BLEND_SATURATION       :: SATURATION;
    UFBX_BLEND_COLOR            :: COLOR;
    UFBX_BLEND_LUMINOSITY       :: LUMINOSITY;
    UFBX_BLEND_OVERLAY          :: OVERLAY;

    UFBX_BLEND_MODE_FORCE_32BIT :: MODE_FORCE_32BIT;
}

Anon_Enum_30 :: enum s32 {
    UFBX_BLEND_MODE_COUNT :: 31;
}

// Blend modes to combine layered textures with, compatible with common blend
Ufbx_Wrap_Mode :: enum s32 {
    REPEAT           :: 0;
    CLAMP            :: 1;

    MODE_FORCE_32BIT :: 2147483647;

    UFBX_WRAP_REPEAT           :: REPEAT;
    UFBX_WRAP_CLAMP            :: CLAMP;

    UFBX_WRAP_MODE_FORCE_32BIT :: MODE_FORCE_32BIT;
}

Anon_Enum_31 :: enum s32 {
    UFBX_WRAP_MODE_COUNT :: 2;
}

// Single layer in a layered texture
Ufbx_Texture_Layer :: struct {
    texture:    *Ufbx_Texture; // < The inner texture to evaluate, never `NULL`
    blend_mode: Ufbx_Blend_Mode; // < Equation to combine the layer to the background
    alpha:      Ufbx_Real; // < Blend weight of this layer
}

Ufbx_Texture_Layer_List :: struct {
    data:  *Ufbx_Texture_Layer;
    count: u64;
}

Ufbx_Shader_Texture_Type :: enum s32 {
    UNKNOWN          :: 0;

    SELECT_OUTPUT    :: 1;

    OSL              :: 2;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_SHADER_TEXTURE_UNKNOWN          :: UNKNOWN;

    UFBX_SHADER_TEXTURE_SELECT_OUTPUT    :: SELECT_OUTPUT;

    UFBX_SHADER_TEXTURE_OSL              :: OSL;

    UFBX_SHADER_TEXTURE_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_32 :: enum s32 {
    UFBX_SHADER_TEXTURE_TYPE_COUNT :: 3;
}

// Input to a shader texture, see `ufbx_shader_texture`.
Ufbx_Shader_Texture_Input :: struct {
    // Name of the input.
    name:                 Ufbx_String;

    // Constant value of the input.
    union {
        value_real: Ufbx_Real;
        value_vec2: ufbx_vec2;
        value_vec3: ufbx_vec3;
        value_vec4: ufbx_vec4;
    }

    value_int:            s64;
    value_str:            Ufbx_String;
    value_blob:           Ufbx_Blob;

    // Texture connected to this input.
    texture:              *Ufbx_Texture;

    // Index of the output to use if `texture` is a multi-output shader node.
    texture_output_index: s64;

    // Controls whether shading should use `texture`.
    // NOTE: Some shading models allow this to be `true` even if `texture == NULL`.
    texture_enabled:      bool;

    // Property representing this input.
    prop:                 *Ufbx_Prop;

    // Property representing `texture`.
    texture_prop:         *Ufbx_Prop;

    // Property representing `texture_enabled`.
    texture_enabled_prop: *Ufbx_Prop;
}

Ufbx_Shader_Texture_Input_List :: struct {
    data:  *Ufbx_Shader_Texture_Input;
    count: u64;
}

// Texture that emulates a shader graph node.
// 3ds Max exports some materials as node graphs serialized to textures.
// ufbx can parse a small subset of these, as normal maps are often hidden behind
// some kind of bump node.
// NOTE: These encode a lot of details of 3ds Max internals, not recommended for direct use.
// HINT: `ufbx_texture.file_textures[]` contains a list of "real" textures that are connected
// to the `ufbx_texture` that is pretending to be a shader node.
Ufbx_Shader_Texture :: struct {
    // Type of this shader node.
    type:                      Ufbx_Shader_Texture_Type;

    // Name of the shader to use.
    shader_name:               Ufbx_String;

    // 64-bit opaque identifier for the shader type.
    shader_type_id:            u64;

    // Input values/textures (possibly further shader textures) to the shader.
    // Sorted by `ufbx_shader_texture_input.name`.
    inputs:                    Ufbx_Shader_Texture_Input_List;

    // Shader source code if found.
    shader_source:             Ufbx_String;
    raw_shader_source:         Ufbx_Blob;

    // Representative texture for this shader.
    // Only specified if `main_texture.outputs[main_texture_output_index]` is semantically
    // equivalent to this texture.
    main_texture:              *Ufbx_Texture;

    // Output index of `main_texture` if it is a multi-output shader.
    main_texture_output_index: s64;

    // Prefix for properties related to this shader in `ufbx_texture`.
    // NOTE: Contains the trailing '|' if not empty.
    prop_prefix:               Ufbx_String;
}

// Unique texture within the file.
Ufbx_Texture_File :: struct {
    // Index in `ufbx_scene.texture_files[]`.
    index:                 u32;

    // Filename relative to the currently loaded file.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    filename:              Ufbx_String;

    // Absolute filename specified in the file.
    absolute_filename:     Ufbx_String;

    // Relative filename specified in the file.
    // NOTE: May be absolute if the file is saved in a different drive.
    relative_filename:     Ufbx_String;

    // Filename relative to the loaded file, non-UTF-8 encoded.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    raw_filename:          Ufbx_Blob;

    // Absolute filename specified in the file, non-UTF-8 encoded.
    raw_absolute_filename: Ufbx_Blob;

    // Relative filename specified in the file, non-UTF-8 encoded.
    // NOTE: May be absolute if the file is saved in a different drive.
    raw_relative_filename: Ufbx_Blob;

    // Optional embedded content blob, eg. raw .png format data
    content:               Ufbx_Blob;
}

Ufbx_Texture_File_List :: struct {
    data:  *Ufbx_Texture_File;
    count: u64;
}

// Texture that controls material appearance
Ufbx_Texture :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Texture type (file / layered / procedural / shader)
    type:                  Ufbx_Texture_Type;

    // Filename relative to the currently loaded file.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    filename:              Ufbx_String;

    // Absolute filename specified in the file.
    absolute_filename:     Ufbx_String;

    // Relative filename specified in the file.
    // NOTE: May be absolute if the file is saved in a different drive.
    relative_filename:     Ufbx_String;

    // Filename relative to the loaded file, non-UTF-8 encoded.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    raw_filename:          Ufbx_Blob;

    // Absolute filename specified in the file, non-UTF-8 encoded.
    raw_absolute_filename: Ufbx_Blob;

    // Relative filename specified in the file, non-UTF-8 encoded.
    // NOTE: May be absolute if the file is saved in a different drive.
    raw_relative_filename: Ufbx_Blob;

    // FILE: Optional embedded content blob, eg. raw .png format data
    content:               Ufbx_Blob;

    // FILE: Optional video texture
    video:                 *Ufbx_Video;

    // FILE: Index into `ufbx_scene.texture_files[]` or `UFBX_NO_INDEX`.
    file_index:            u32;

    // FILE: True if `file_index` has a valid value.
    has_file:              bool;

    // LAYERED: Inner texture layers, ordered from _bottom_ to _top_
    layers:                Ufbx_Texture_Layer_List;

    // SHADER: Shader information
    // NOTE: May be specified even if `type == UFBX_TEXTURE_FILE` if `ufbx_load_opts.disable_quirks`
    // is _not_ specified. Some known shaders that represent files are interpreted as `UFBX_TEXTURE_FILE`.
    shader:                *Ufbx_Shader_Texture;

    // List of file textures representing this texture.
    // Defined even if `type == UFBX_TEXTURE_FILE` in which case the array contains only itself.
    file_textures:         Ufbx_Texture_List;

    // Name of the UV set to use
    uv_set:                Ufbx_String;

    // Wrapping mode
    wrap_u:                Ufbx_Wrap_Mode;
    wrap_v:                Ufbx_Wrap_Mode;

    has_uv_transform:      bool; // < Has a non-identity `transform` and derived matrices.
    uv_transform:          Ufbx_Transform; // < Texture transformation in UV space
    texture_to_uv:         Ufbx_Matrix; // < Matrix representation of `transform`
    uv_to_texture:         Ufbx_Matrix; // < UV coordinate to normalized texture coordinate matrix
}

// TODO: Video textures
Ufbx_Video :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Filename relative to the currently loaded file.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    filename:              Ufbx_String;

    // Absolute filename specified in the file.
    absolute_filename:     Ufbx_String;

    // Relative filename specified in the file.
    // NOTE: May be absolute if the file is saved in a different drive.
    relative_filename:     Ufbx_String;

    // Filename relative to the loaded file, non-UTF-8 encoded.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    raw_filename:          Ufbx_Blob;

    // Absolute filename specified in the file, non-UTF-8 encoded.
    raw_absolute_filename: Ufbx_Blob;

    // Relative filename specified in the file, non-UTF-8 encoded.
    // NOTE: May be absolute if the file is saved in a different drive.
    raw_relative_filename: Ufbx_Blob;

    // Optional embedded content blob
    content:               Ufbx_Blob;
}

// Shader specifies a shading model and contains `ufbx_shader_binding` elements
// that define how to interpret FBX properties in the shader.
Ufbx_Shader :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Known shading model
    type:     Ufbx_Shader_Type;

    // Bindings from FBX properties to the shader
    // HINT: `ufbx_find_shader_prop()` translates shader properties to FBX properties
    bindings: Ufbx_Shader_Binding_List;
}

// Binding from a material property to shader implementation
Ufbx_Shader_Prop_Binding :: struct {
    shader_prop:   Ufbx_String; // < Property name used by the shader implementation
    material_prop: Ufbx_String; // < Property name inside `ufbx_material.props`
}

Ufbx_Shader_Prop_Binding_List :: struct {
    data:  *Ufbx_Shader_Prop_Binding;
    count: u64;
}

// Shader binding table
Ufbx_Shader_Binding :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    prop_bindings: Ufbx_Shader_Prop_Binding_List; // < Sorted by `shader_prop`
}

// -- Animation
Ufbx_Prop_Override :: struct {
    element_id:    u32;

    _internal_key: u32;

    prop_name:     Ufbx_String;
    value:         ufbx_vec4;
    value_str:     Ufbx_String;
    value_int:     s64;
}

Ufbx_Prop_Override_List :: struct {
    data:  *Ufbx_Prop_Override;
    count: u64;
}

Ufbx_Transform_Override :: struct {
    node_id:   u32;
    transform: Ufbx_Transform;
}

Ufbx_Transform_Override_List :: struct {
    data:  *Ufbx_Transform_Override;
    count: u64;
}

// Animation descriptor used for evaluating animation.
// Usually obtained from `ufbx_scene` via either global animation `ufbx_scene.anim`,
// per-stack animation `ufbx_anim_stack.anim` or per-layer animation `ufbx_anim_layer.anim`.
//
// For advanced usage you can use `ufbx_create_anim()` to create animation descriptors
// with custom layers, property overrides, special flags, etc.
Ufbx_Anim :: struct {
    // Time begin/end for the animation, both may be zero if absent.
    time_begin:             float64;
    time_end:               float64;

    // List of layers in the animation.
    layers:                 Ufbx_Anim_Layer_List;

    // Optional overrides for weights for each layer in `layers[]`.
    override_layer_weights: Ufbx_Real_List;

    // Sorted by `element_id, prop_name`
    prop_overrides:         Ufbx_Prop_Override_List;

    // Sorted by `node_id`
    transform_overrides:    Ufbx_Transform_Override_List;

    // Evaluate connected properties as if they would not be connected.
    ignore_connections:     bool;

    // Custom `ufbx_anim` created by `ufbx_create_anim()`.
    custom:                 bool;
}

Ufbx_Anim_Stack :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    time_begin: float64;
    time_end:   float64;

    layers:     Ufbx_Anim_Layer_List;
    anim:       *Ufbx_Anim;
}

Ufbx_Anim_Prop :: struct {
    element:       *Ufbx_Element;

    _internal_key: u32;

    prop_name:     Ufbx_String;
    anim_value:    *Ufbx_Anim_Value;
}

Ufbx_Anim_Prop_List :: struct {
    data:  *Ufbx_Anim_Prop;
    count: u64;
}

Ufbx_Anim_Layer :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    weight:              Ufbx_Real;
    weight_is_animated:  bool;
    blended:             bool;
    additive:            bool;
    compose_rotation:    bool;
    compose_scale:       bool;

    anim_values:         Ufbx_Anim_Value_List;
    anim_props:          Ufbx_Anim_Prop_List; // < Sorted by `element,prop_name`

    anim:                *Ufbx_Anim;

    _min_element_id:     u32;
    _max_element_id:     u32;
    _element_id_bitmask: [4] u32;
}

Ufbx_Anim_Value :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    default_value: ufbx_vec3;
    curves:        [3] *Ufbx_Anim_Curve;
}

// Animation curve segment interpolation mode between two keyframes
Ufbx_Interpolation :: enum s32 {
    CONSTANT_PREV :: 0;
    CONSTANT_NEXT :: 1;
    LINEAR        :: 2;
    CUBIC         :: 3;

    FORCE_32BIT   :: 2147483647;

    UFBX_INTERPOLATION_CONSTANT_PREV :: CONSTANT_PREV;
    UFBX_INTERPOLATION_CONSTANT_NEXT :: CONSTANT_NEXT;
    UFBX_INTERPOLATION_LINEAR        :: LINEAR;
    UFBX_INTERPOLATION_CUBIC         :: CUBIC;

    UFBX_INTERPOLATION_FORCE_32BIT   :: FORCE_32BIT;
}

Anon_Enum_33 :: enum s32 {
    UFBX_INTERPOLATION_COUNT :: 4;
}

Ufbx_Extrapolation_Mode :: enum s32 {
    CONSTANT        :: 0;
    REPEAT          :: 1;
    MIRROR          :: 2;
    SLOPE           :: 3;
    REPEAT_RELATIVE :: 4;

    FORCE_32BIT     :: 2147483647;

    UFBX_EXTRAPOLATION_CONSTANT        :: CONSTANT;
    UFBX_EXTRAPOLATION_REPEAT          :: REPEAT;
    UFBX_EXTRAPOLATION_MIRROR          :: MIRROR;
    UFBX_EXTRAPOLATION_SLOPE           :: SLOPE;
    UFBX_EXTRAPOLATION_REPEAT_RELATIVE :: REPEAT_RELATIVE;

    UFBX_EXTRAPOLATION_FORCE_32BIT     :: FORCE_32BIT;
}

Anon_Enum_34 :: enum s32 {
    UFBX_EXTRAPOLATION_MODE_COUNT :: 5;
}

Ufbx_Extrapolation :: struct {
    mode:         Ufbx_Extrapolation_Mode;

    // Count used for repeating modes.
    // Negative values mean infinite repetition.
    repeat_count: s32;
}

// Tangent vector at a keyframe, may be split into left/right
Ufbx_Tangent :: struct {
    dx: float; // < Derivative in the time axis
    dy: float; // < Derivative in the (curve specific) value axis
}

// Single real `value` at a specified `time`, interpolation between two keyframes
// is determined by the `interpolation` field of the _previous_ key.
// If `interpolation == UFBX_INTERPOLATION_CUBIC` the span is evaluated as a
// cubic bezier curve through the following points:
//
//   (prev->time, prev->value)
//   (prev->time + prev->right.dx, prev->value + prev->right.dy)
//   (next->time - next->left.dx, next->value - next->left.dy)
//   (next->time, next->value)
//
// HINT: You can use `ufbx_evaluate_curve(ufbx_anim_curve *curve, double time)`
// rather than trying to manually handle all the interpolation modes.
Ufbx_Keyframe :: struct {
    time:          float64;
    value:         Ufbx_Real;
    interpolation: Ufbx_Interpolation;
    left:          Ufbx_Tangent;
    right:         Ufbx_Tangent;
}

Ufbx_Keyframe_List :: struct {
    data:  *Ufbx_Keyframe;
    count: u64;
}

Ufbx_Anim_Curve :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // List of keyframes that define the curve.
    keyframes:          Ufbx_Keyframe_List;

    // Extrapolation before the curve.
    pre_extrapolation:  Ufbx_Extrapolation;

    // Extrapolation after the curve.
    post_extrapolation: Ufbx_Extrapolation;

    // Value range for all the keyframes.
    min_value:          Ufbx_Real;
    max_value:          Ufbx_Real;

    // Time range for all the keyframes.
    min_time:           float64;
    max_time:           float64;
}

// Collection of nodes to hide/freeze
Ufbx_Display_Layer :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Nodes included in the layer (exclusively at most one layer per node)
    nodes:    Ufbx_Node_List;

    visible:  bool; // < Contained nodes are visible
    frozen:   bool; // < Contained nodes cannot be edited

    ui_color: ufbx_vec3; // < Visual color for UI
}

// Named set of nodes/geometry features to select.
Ufbx_Selection_Set :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Included nodes and geometry features
    nodes: Ufbx_Selection_Node_List;
}

// Selection state of a node, potentially contains vertex/edge/face selection as well.
Ufbx_Selection_Node :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Selection targets, possibly `NULL`
    target_node:  *Ufbx_Node;
    target_mesh:  *Ufbx_Mesh;
    include_node: bool; // < Is `target_node` included in the selection

    vertices:     Ufbx_Uint32_List; // < Indices to `ufbx_mesh.vertices`
    edges:        Ufbx_Uint32_List; // < Indices to `ufbx_mesh.edges`
    faces:        Ufbx_Uint32_List; // < Indices to `ufbx_mesh.faces`
}

// -- Constraints
Ufbx_Character :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }
}

// Type of property constrain eg. position or look-at
Ufbx_Constraint_Type :: enum s32 {
    UNKNOWN          :: 0;
    AIM              :: 1;
    PARENT           :: 2;
    POSITION         :: 3;
    ROTATION         :: 4;
    SCALE            :: 5;

    SINGLE_CHAIN_IK  :: 6;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_CONSTRAINT_UNKNOWN          :: UNKNOWN;
    UFBX_CONSTRAINT_AIM              :: AIM;
    UFBX_CONSTRAINT_PARENT           :: PARENT;
    UFBX_CONSTRAINT_POSITION         :: POSITION;
    UFBX_CONSTRAINT_ROTATION         :: ROTATION;
    UFBX_CONSTRAINT_SCALE            :: SCALE;

    UFBX_CONSTRAINT_SINGLE_CHAIN_IK  :: SINGLE_CHAIN_IK;

    UFBX_CONSTRAINT_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_35 :: enum s32 {
    UFBX_CONSTRAINT_TYPE_COUNT :: 7;
}

// Target to follow with a constraint
Ufbx_Constraint_Target :: struct {
    node:      *Ufbx_Node; // < Target node reference
    weight:    Ufbx_Real; // < Relative weight to other targets (does not always sum to 1)
    transform: Ufbx_Transform; // < Offset from the actual target
}

Ufbx_Constraint_Target_List :: struct {
    data:  *Ufbx_Constraint_Target;
    count: u64;
}

// Method to determine the up vector in aim constraints
Ufbx_Constraint_Aim_Up_Type :: enum s32 {
    SCENE            :: 0;
    TO_NODE          :: 1;
    ALIGN_NODE       :: 2;
    VECTOR           :: 3;
    NONE             :: 4;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_CONSTRAINT_AIM_UP_SCENE            :: SCENE;
    UFBX_CONSTRAINT_AIM_UP_TO_NODE          :: TO_NODE;
    UFBX_CONSTRAINT_AIM_UP_ALIGN_NODE       :: ALIGN_NODE;
    UFBX_CONSTRAINT_AIM_UP_VECTOR           :: VECTOR;
    UFBX_CONSTRAINT_AIM_UP_NONE             :: NONE;

    UFBX_CONSTRAINT_AIM_UP_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_36 :: enum s32 {
    UFBX_CONSTRAINT_AIM_UP_TYPE_COUNT :: 5;
}

// Method to determine the up vector in aim constraints
Ufbx_Constraint_Ik_Pole_Type :: enum s32 {
    VECTOR           :: 0;
    NODE             :: 1;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_CONSTRAINT_IK_POLE_VECTOR           :: VECTOR;
    UFBX_CONSTRAINT_IK_POLE_NODE             :: NODE;

    UFBX_CONSTRAINT_IK_POLE_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_37 :: enum s32 {
    UFBX_CONSTRAINT_IK_POLE_TYPE_COUNT :: 2;
}

Ufbx_Constraint :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Type of constraint to use
    type:                  Ufbx_Constraint_Type;
    type_name:             Ufbx_String;

    // Node to be constrained
    node:                  *Ufbx_Node;

    // List of weighted targets for the constraint (pole vectors for IK)
    targets:               Ufbx_Constraint_Target_List;

    // State of the constraint
    weight:                Ufbx_Real;
    active:                bool;

    // Translation/rotation/scale axes the constraint is applied to
    constrain_translation: [3] bool;
    constrain_rotation:    [3] bool;
    constrain_scale:       [3] bool;

    // Offset from the constrained position
    transform_offset:      Ufbx_Transform;

    // AIM: Target and up vectors
    aim_vector:            ufbx_vec3;
    aim_up_type:           Ufbx_Constraint_Aim_Up_Type;
    aim_up_node:           *Ufbx_Node;
    aim_up_vector:         ufbx_vec3;

    // SINGLE_CHAIN_IK: Target for the IK, `targets` contains pole vectors!
    ik_effector:           *Ufbx_Node;
    ik_end_node:           *Ufbx_Node;
    ik_pole_vector:        ufbx_vec3;
}

// -- Audio
Ufbx_Audio_Layer :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Clips contained in this layer.
    clips: Ufbx_Audio_Clip_List;
}

Ufbx_Audio_Clip :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Filename relative to the currently loaded file.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    filename:              Ufbx_String;

    // Absolute filename specified in the file.
    absolute_filename:     Ufbx_String;

    // Relative filename specified in the file.
    // NOTE: May be absolute if the file is saved in a different drive.
    relative_filename:     Ufbx_String;

    // Filename relative to the loaded file, non-UTF-8 encoded.
    // HINT: If using functions other than `ufbx_load_file()`, you can provide
    // `ufbx_load_opts.filename/raw_filename` to let ufbx resolve this.
    raw_filename:          Ufbx_Blob;

    // Absolute filename specified in the file, non-UTF-8 encoded.
    raw_absolute_filename: Ufbx_Blob;

    // Relative filename specified in the file, non-UTF-8 encoded.
    // NOTE: May be absolute if the file is saved in a different drive.
    raw_relative_filename: Ufbx_Blob;

    // Optional embedded content blob, eg. raw .png format data
    content:               Ufbx_Blob;
}

// -- Miscellaneous
Ufbx_Bone_Pose :: struct {
    // Node to apply the pose to.
    bone_node:      *Ufbx_Node;

    // Matrix from node local space to world space.
    bone_to_world:  Ufbx_Matrix;

    // Matrix from node local space to parent space.
    // NOTE: FBX only stores world transformations so this is approximated from
    // the parent world transform.
    bone_to_parent: Ufbx_Matrix;
}

Ufbx_Bone_Pose_List :: struct {
    data:  *Ufbx_Bone_Pose;
    count: u64;
}

Ufbx_Pose :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }

    // Set if this pose is marked as a bind pose.
    is_bind_pose: bool;

    // List of bone poses.
    // Sorted by `ufbx_node.typed_id`.
    bone_poses:   Ufbx_Bone_Pose_List;
}

Ufbx_Metadata_Object :: struct {
    union {
        element: Ufbx_Element;
        struct {
            name:       Ufbx_String;
            props:      Ufbx_Props;
            element_id: u32;
            typed_id:   u32;
        }
    }
}

// -- Named elements
Ufbx_Name_Element :: struct {
    name:          Ufbx_String;
    type:          Ufbx_Element_Type;

    _internal_key: u32;

    element:       *Ufbx_Element;
}

Ufbx_Name_Element_List :: struct {
    data:  *Ufbx_Name_Element;
    count: u64;
}

// Scene is the root object loaded by ufbx that everything is accessed from.
Ufbx_Exporter :: enum s32 {
    UNKNOWN        :: 0;
    FBX_SDK        :: 1;
    BLENDER_BINARY :: 2;
    BLENDER_ASCII  :: 3;
    MOTION_BUILDER :: 4;

    FORCE_32BIT    :: 2147483647;

    UFBX_EXPORTER_UNKNOWN        :: UNKNOWN;
    UFBX_EXPORTER_FBX_SDK        :: FBX_SDK;
    UFBX_EXPORTER_BLENDER_BINARY :: BLENDER_BINARY;
    UFBX_EXPORTER_BLENDER_ASCII  :: BLENDER_ASCII;
    UFBX_EXPORTER_MOTION_BUILDER :: MOTION_BUILDER;

    UFBX_EXPORTER_FORCE_32BIT    :: FORCE_32BIT;
}

Anon_Enum_38 :: enum s32 {
    UFBX_EXPORTER_COUNT :: 5;
}

Ufbx_Application :: struct {
    vendor:  Ufbx_String;
    name:    Ufbx_String;
    version: Ufbx_String;
}

Ufbx_File_Format :: enum s32 {
    UNKNOWN     :: 0;
    FBX         :: 1;
    OBJ         :: 2;
    MTL         :: 3;

    FORCE_32BIT :: 2147483647;

    UFBX_FILE_FORMAT_UNKNOWN     :: UNKNOWN;
    UFBX_FILE_FORMAT_FBX         :: FBX;
    UFBX_FILE_FORMAT_OBJ         :: OBJ;
    UFBX_FILE_FORMAT_MTL         :: MTL;

    UFBX_FILE_FORMAT_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_39 :: enum s32 {
    UFBX_FILE_FORMAT_COUNT :: 4;
}

Ufbx_Warning_Type :: enum s32 {
    MISSING_EXTERNAL_FILE         :: 0;

    IMPLICIT_MTL                  :: 1;

    TRUNCATED_ARRAY               :: 2;

    MISSING_GEOMETRY_DATA         :: 3;

    DUPLICATE_CONNECTION          :: 4;

    BAD_VERTEX_W_ATTRIBUTE        :: 5;

    MISSING_POLYGON_MAPPING       :: 6;

    UNSUPPORTED_VERSION           :: 7;

    INDEX_CLAMPED                 :: 8;

    BAD_UNICODE                   :: 9;

    BAD_BASE64_CONTENT            :: 10;

    BAD_ELEMENT_CONNECTED_TO_ROOT :: 11;

    DUPLICATE_OBJECT_ID           :: 12;

    EMPTY_FACE_REMOVED            :: 13;

    UNKNOWN_OBJ_DIRECTIVE         :: 14;

    TYPE_FIRST_DEDUPLICATED       :: 8;

    TYPE_FORCE_32BIT              :: 2147483647;

    UFBX_WARNING_MISSING_EXTERNAL_FILE         :: MISSING_EXTERNAL_FILE;

    UFBX_WARNING_IMPLICIT_MTL                  :: IMPLICIT_MTL;

    UFBX_WARNING_TRUNCATED_ARRAY               :: TRUNCATED_ARRAY;

    UFBX_WARNING_MISSING_GEOMETRY_DATA         :: MISSING_GEOMETRY_DATA;

    UFBX_WARNING_DUPLICATE_CONNECTION          :: DUPLICATE_CONNECTION;

    UFBX_WARNING_BAD_VERTEX_W_ATTRIBUTE        :: BAD_VERTEX_W_ATTRIBUTE;

    UFBX_WARNING_MISSING_POLYGON_MAPPING       :: MISSING_POLYGON_MAPPING;

    UFBX_WARNING_UNSUPPORTED_VERSION           :: UNSUPPORTED_VERSION;

    UFBX_WARNING_INDEX_CLAMPED                 :: INDEX_CLAMPED;

    UFBX_WARNING_BAD_UNICODE                   :: BAD_UNICODE;

    UFBX_WARNING_BAD_BASE64_CONTENT            :: BAD_BASE64_CONTENT;

    UFBX_WARNING_BAD_ELEMENT_CONNECTED_TO_ROOT :: BAD_ELEMENT_CONNECTED_TO_ROOT;

    UFBX_WARNING_DUPLICATE_OBJECT_ID           :: DUPLICATE_OBJECT_ID;

    UFBX_WARNING_EMPTY_FACE_REMOVED            :: EMPTY_FACE_REMOVED;

    UFBX_WARNING_UNKNOWN_OBJ_DIRECTIVE         :: UNKNOWN_OBJ_DIRECTIVE;

    UFBX_WARNING_TYPE_FIRST_DEDUPLICATED       :: TYPE_FIRST_DEDUPLICATED;

    UFBX_WARNING_TYPE_FORCE_32BIT              :: TYPE_FORCE_32BIT;
}

Anon_Enum_40 :: enum s32 {
    UFBX_WARNING_TYPE_COUNT :: 15;
}

// Warning about a non-fatal issue in the file.
// Often contains information about issues that ufbx has corrected about the
// file but it might indicate something is not working properly.
Ufbx_Warning :: struct {
    // Type of the warning.
    type:        Ufbx_Warning_Type;

    // Description of the warning.
    description: Ufbx_String;

    // The element related to this warning or `UFBX_NO_INDEX` if not related to a specific element.
    element_id:  u32;

    // Number of times this warning was encountered.
    count:       u64;
}

Ufbx_Warning_List :: struct {
    data:  *Ufbx_Warning;
    count: u64;
}

Ufbx_Thumbnail_Format :: enum s32 {
    UNKNOWN     :: 0;
    RGB_24      :: 1;
    RGBA_32     :: 2;

    FORCE_32BIT :: 2147483647;

    UFBX_THUMBNAIL_FORMAT_UNKNOWN     :: UNKNOWN;
    UFBX_THUMBNAIL_FORMAT_RGB_24      :: RGB_24;
    UFBX_THUMBNAIL_FORMAT_RGBA_32     :: RGBA_32;

    UFBX_THUMBNAIL_FORMAT_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_41 :: enum s32 {
    UFBX_THUMBNAIL_FORMAT_COUNT :: 3;
}

// Specify how unit / coordinate system conversion should be performed.
// Affects how `ufbx_load_opts.target_axes` and `ufbx_load_opts.target_unit_meters` work,
// has no effect if neither is specified.
Ufbx_Space_Conversion :: enum s32 {
    TRANSFORM_ROOT    :: 0;

    ADJUST_TRANSFORMS :: 1;

    MODIFY_GEOMETRY   :: 2;

    FORCE_32BIT       :: 2147483647;

    UFBX_SPACE_CONVERSION_TRANSFORM_ROOT    :: TRANSFORM_ROOT;

    UFBX_SPACE_CONVERSION_ADJUST_TRANSFORMS :: ADJUST_TRANSFORMS;

    UFBX_SPACE_CONVERSION_MODIFY_GEOMETRY   :: MODIFY_GEOMETRY;

    UFBX_SPACE_CONVERSION_FORCE_32BIT       :: FORCE_32BIT;
}

Anon_Enum_42 :: enum s32 {
    UFBX_SPACE_CONVERSION_COUNT :: 3;
}

// Embedded thumbnail in the file, valid if the dimensions are non-zero.
Ufbx_Thumbnail :: struct {
    props:  Ufbx_Props;

    // Extents of the thumbnail
    width:  u32;
    height: u32;

    // Format of `ufbx_thumbnail.data`.
    format: Ufbx_Thumbnail_Format;

    // Thumbnail pixel data, layout as contiguous rows from bottom to top.
    // See `ufbx_thumbnail.format` for the pixel format.
    data:   Ufbx_Blob;
}

// Miscellaneous data related to the loaded file
Ufbx_Metadata :: struct {
    // List of non-fatal warnings about the file.
    // If you need to only check whether a specific warning was triggered you
    // can use `ufbx_metadata.has_warning[]`.
    warnings:                            Ufbx_Warning_List;

    // FBX ASCII file format.
    ascii:                               bool;

    // FBX version in integer format, eg. 7400 for 7.4.
    version:                             u32;

    // File format of the source file.
    file_format:                         Ufbx_File_Format;

    // Index arrays may contain `UFBX_NO_INDEX` instead of a valid index
    // to indicate gaps.
    may_contain_no_index:                bool;

    // May contain meshes with no defined vertex position.
    // NOTE: `ufbx_mesh.vertex_position.exists` may be `false`!
    may_contain_missing_vertex_position: bool;

    // Arrays may contain items with `NULL` element references.
    // See `ufbx_load_opts.connect_broken_elements`.
    may_contain_broken_elements:         bool;

    // Some API guarantees do not apply (depending on unsafe options used).
    // Loaded with `ufbx_load_opts.allow_unsafe` enabled.
    is_unsafe:                           bool;

    // Flag for each possible warning type.
    // See `ufbx_metadata.warnings[]` for detailed warning information.
    has_warning:                         [15] bool;

    creator:                             Ufbx_String;
    big_endian:                          bool;

    filename:                            Ufbx_String;
    relative_root:                       Ufbx_String;

    raw_filename:                        Ufbx_Blob;
    raw_relative_root:                   Ufbx_Blob;

    exporter:                            Ufbx_Exporter;
    exporter_version:                    u32;

    scene_props:                         Ufbx_Props;

    original_application:                Ufbx_Application;
    latest_application:                  Ufbx_Application;

    thumbnail:                           Ufbx_Thumbnail;

    geometry_ignored:                    bool;
    animation_ignored:                   bool;
    embedded_ignored:                    bool;

    max_face_triangles:                  u64;

    result_memory_used:                  u64;
    temp_memory_used:                    u64;
    result_allocs:                       u64;
    temp_allocs:                         u64;

    element_buffer_size:                 u64;
    num_shader_textures:                 u64;

    bone_prop_size_unit:                 Ufbx_Real;
    bone_prop_limb_length_relative:      bool;

    ortho_size_unit:                     Ufbx_Real;

    ktime_second:                        s64; // < One second in internal KTime units

    original_file_path:                  Ufbx_String;
    raw_original_file_path:              Ufbx_Blob;

    // Space conversion method used on the scene.
    space_conversion:                    Ufbx_Space_Conversion;

    // Transform that has been applied to root for axis/unit conversion.
    root_rotation:                       ufbx_quat;
    root_scale:                          Ufbx_Real;

    // Axis that the scene has been mirrored by.
    // All geometry has been mirrored in this axis.
    mirror_axis:                         Ufbx_Mirror_Axis;

    // Amount geometry has been scaled.
    // See `UFBX_SPACE_CONVERSION_MODIFY_GEOMETRY`.
    geometry_scale:                      Ufbx_Real;
}

Ufbx_Time_Mode :: enum s32 {
    DEFAULT         :: 0;
    _120_FPS        :: 1;
    _100_FPS        :: 2;
    _60_FPS         :: 3;
    _50_FPS         :: 4;
    _48_FPS         :: 5;
    _30_FPS         :: 6;
    _30_FPS_DROP    :: 7;
    NTSC_DROP_FRAME :: 8;
    NTSC_FULL_FRAME :: 9;
    PAL             :: 10;
    _24_FPS         :: 11;
    _1000_FPS       :: 12;
    FILM_FULL_FRAME :: 13;
    CUSTOM          :: 14;
    _96_FPS         :: 15;
    _72_FPS         :: 16;
    _59_94_FPS      :: 17;

    FORCE_32BIT     :: 2147483647;

    UFBX_TIME_MODE_DEFAULT         :: DEFAULT;
    UFBX_TIME_MODE_120_FPS         :: _120_FPS;
    UFBX_TIME_MODE_100_FPS         :: _100_FPS;
    UFBX_TIME_MODE_60_FPS          :: _60_FPS;
    UFBX_TIME_MODE_50_FPS          :: _50_FPS;
    UFBX_TIME_MODE_48_FPS          :: _48_FPS;
    UFBX_TIME_MODE_30_FPS          :: _30_FPS;
    UFBX_TIME_MODE_30_FPS_DROP     :: _30_FPS_DROP;
    UFBX_TIME_MODE_NTSC_DROP_FRAME :: NTSC_DROP_FRAME;
    UFBX_TIME_MODE_NTSC_FULL_FRAME :: NTSC_FULL_FRAME;
    UFBX_TIME_MODE_PAL             :: PAL;
    UFBX_TIME_MODE_24_FPS          :: _24_FPS;
    UFBX_TIME_MODE_1000_FPS        :: _1000_FPS;
    UFBX_TIME_MODE_FILM_FULL_FRAME :: FILM_FULL_FRAME;
    UFBX_TIME_MODE_CUSTOM          :: CUSTOM;
    UFBX_TIME_MODE_96_FPS          :: _96_FPS;
    UFBX_TIME_MODE_72_FPS          :: _72_FPS;
    UFBX_TIME_MODE_59_94_FPS       :: _59_94_FPS;

    UFBX_TIME_MODE_FORCE_32BIT     :: FORCE_32BIT;
}

Anon_Enum_43 :: enum s32 {
    UFBX_TIME_MODE_COUNT :: 18;
}

Ufbx_Time_Protocol :: enum s32 {
    SMPTE       :: 0;
    FRAME_COUNT :: 1;
    DEFAULT     :: 2;

    FORCE_32BIT :: 2147483647;

    UFBX_TIME_PROTOCOL_SMPTE       :: SMPTE;
    UFBX_TIME_PROTOCOL_FRAME_COUNT :: FRAME_COUNT;
    UFBX_TIME_PROTOCOL_DEFAULT     :: DEFAULT;

    UFBX_TIME_PROTOCOL_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_44 :: enum s32 {
    UFBX_TIME_PROTOCOL_COUNT :: 3;
}

Ufbx_Snap_Mode :: enum s32 {
    NONE          :: 0;
    SNAP          :: 1;
    PLAY          :: 2;
    SNAP_AND_PLAY :: 3;

    FORCE_32BIT   :: 2147483647;

    UFBX_SNAP_MODE_NONE          :: NONE;
    UFBX_SNAP_MODE_SNAP          :: SNAP;
    UFBX_SNAP_MODE_PLAY          :: PLAY;
    UFBX_SNAP_MODE_SNAP_AND_PLAY :: SNAP_AND_PLAY;

    UFBX_SNAP_MODE_FORCE_32BIT   :: FORCE_32BIT;
}

Anon_Enum_45 :: enum s32 {
    UFBX_SNAP_MODE_COUNT :: 4;
}

// Global settings: Axes and time/unit scales
Ufbx_Scene_Settings :: struct {
    props:                Ufbx_Props;

    // Mapping of X/Y/Z axes to world-space directions.
    // HINT: Use `ufbx_load_opts.target_axes` to normalize this.
    // NOTE: This contains the _original_ axes even if you supply `ufbx_load_opts.target_axes`.
    axes:                 Ufbx_Coordinate_Axes;

    // How many meters does a single world-space unit represent.
    // FBX files usually default to centimeters, reported as `0.01` here.
    // HINT: Use `ufbx_load_opts.target_unit_meters` to normalize this.
    unit_meters:          Ufbx_Real;

    // Frames per second the animation is defined at.
    frames_per_second:    float64;

    ambient_color:        ufbx_vec3;
    default_camera:       Ufbx_String;

    // Animation user interface settings.
    // HINT: Use `ufbx_scene_settings.frames_per_second` instead of interpreting these yourself.
    time_mode:            Ufbx_Time_Mode;
    time_protocol:        Ufbx_Time_Protocol;
    snap_mode:            Ufbx_Snap_Mode;

    // Original settings (?)
    original_axis_up:     Ufbx_Coordinate_Axis;
    original_unit_meters: Ufbx_Real;
}

Ufbx_Scene :: struct {
    metadata:         Ufbx_Metadata;

    // Global settings
    settings:         Ufbx_Scene_Settings;

    // Node instances in the scene
    root_node:        *Ufbx_Node;

    // Default animation descriptor
    anim:             *Ufbx_Anim;

    union {
        struct {
            unknowns:              Ufbx_Unknown_List;

            // Nodes
            nodes:                 Ufbx_Node_List;

            // Node attributes (common)
            meshes:                Ufbx_Mesh_List;
            lights:                Ufbx_Light_List;
            cameras:               Ufbx_Camera_List;
            bones:                 Ufbx_Bone_List;
            empties:               Ufbx_Empty_List;

            // Node attributes (curves/surfaces)
            line_curves:           Ufbx_Line_Curve_List;
            nurbs_curves:          Ufbx_Nurbs_Curve_List;
            nurbs_surfaces:        Ufbx_Nurbs_Surface_List;
            nurbs_trim_surfaces:   Ufbx_Nurbs_Trim_Surface_List;
            nurbs_trim_boundaries: Ufbx_Nurbs_Trim_Boundary_List;

            // Node attributes (advanced)
            procedural_geometries: Ufbx_Procedural_Geometry_List;
            stereo_cameras:        Ufbx_Stereo_Camera_List;
            camera_switchers:      Ufbx_Camera_Switcher_List;
            markers:               Ufbx_Marker_List;
            lod_groups:            Ufbx_Lod_Group_List;

            // Deformers
            skin_deformers:        Ufbx_Skin_Deformer_List;
            skin_clusters:         Ufbx_Skin_Cluster_List;
            blend_deformers:       Ufbx_Blend_Deformer_List;
            blend_channels:        Ufbx_Blend_Channel_List;
            blend_shapes:          Ufbx_Blend_Shape_List;
            cache_deformers:       Ufbx_Cache_Deformer_List;
            cache_files:           Ufbx_Cache_File_List;

            // Materials
            materials:             Ufbx_Material_List;
            textures:              Ufbx_Texture_List;
            videos:                Ufbx_Video_List;
            shaders:               Ufbx_Shader_List;
            shader_bindings:       Ufbx_Shader_Binding_List;

            // Animation
            anim_stacks:           Ufbx_Anim_Stack_List;
            anim_layers:           Ufbx_Anim_Layer_List;
            anim_values:           Ufbx_Anim_Value_List;
            anim_curves:           Ufbx_Anim_Curve_List;

            // Collections
            display_layers:        Ufbx_Display_Layer_List;
            selection_sets:        Ufbx_Selection_Set_List;
            selection_nodes:       Ufbx_Selection_Node_List;

            // Constraints
            characters:            Ufbx_Character_List;
            constraints:           Ufbx_Constraint_List;

            // Audio
            audio_layers:          Ufbx_Audio_Layer_List;
            audio_clips:           Ufbx_Audio_Clip_List;

            // Miscellaneous
            poses:                 Ufbx_Pose_List;
            metadata_objects:      Ufbx_Metadata_Object_List;
        }

        elements_by_type: [42] Ufbx_Element_List;
    }

    // Unique texture files referenced by the scene.
    texture_files:    Ufbx_Texture_File_List;

    elements:         Ufbx_Element_List; // < Sorted by `id`
    connections_src:  Ufbx_Connection_List; // < Sorted by `src,src_prop`
    connections_dst:  Ufbx_Connection_List; // < Sorted by `dst,dst_prop`

    // Elements sorted by name, type
    elements_by_name: Ufbx_Name_Element_List;

    // Enabled if `ufbx_load_opts.retain_dom == true`.
    dom_root:         *Ufbx_Dom_Node;
}

// -- Curves
Ufbx_Curve_Point :: struct {
    valid:      bool;
    position:   ufbx_vec3;
    derivative: ufbx_vec3;
}

Ufbx_Surface_Point :: struct {
    valid:        bool;
    position:     ufbx_vec3;
    derivative_u: ufbx_vec3;
    derivative_v: ufbx_vec3;
}

// -- Mesh topology
Ufbx_Topo_Flags :: enum s32 {
    NON_MANIFOLD      :: 1;

    FLAGS_FORCE_32BIT :: 2147483647;

    UFBX_TOPO_NON_MANIFOLD      :: NON_MANIFOLD;

    UFBX_TOPO_FLAGS_FORCE_32BIT :: FLAGS_FORCE_32BIT;
}

Ufbx_Topo_Edge :: struct {
    index: u32; // < Starting index of the edge, always defined
    next:  u32; // < Ending index of the edge / next per-face `ufbx_topo_edge`, always defined
    prev:  u32; // < Previous per-face `ufbx_topo_edge`, always defined
    twin:  u32; // < `ufbx_topo_edge` on the opposite side, `UFBX_NO_INDEX` if not found
    face:  u32; // < Index into `mesh->faces[]`, always defined
    edge:  u32; // < Index into `mesh->edges[]`, `UFBX_NO_INDEX` if not found

    flags: Ufbx_Topo_Flags;
}

// Vertex data array for `ufbx_generate_indices()`.
// NOTE: `ufbx_generate_indices()` compares the vertices using `memcmp()`, so
// any padding should be cleared to zero.
Ufbx_Vertex_Stream :: struct {
    data:         *void; // < Data pointer of shape `char[vertex_count][vertex_size]`.
    vertex_count: u64; // < Number of vertices in this stream, for sanity checking.
    vertex_size:  u64; // < Size of a vertex in bytes.
}

// Allocate `size` bytes, must be at least 8 byte aligned
Ufbx_Alloc_Fn :: #type (user: *void, size: u64) -> *void #c_call;

// Reallocate `old_ptr` from `old_size` to `new_size`
// NOTE: If omit `alloc_fn` and `free_fn` they will be translated to:
//   `alloc(size)` -> `realloc_fn(user, NULL, 0, size)`
//   `free_fn(ptr, size)` ->  `realloc_fn(user, ptr, size, 0)`
Ufbx_Realloc_Fn :: #type (user: *void, old_ptr: *void, old_size: u64, new_size: u64) -> *void #c_call;

// Free pointer `ptr` (of `size` bytes) returned by `alloc_fn` or `realloc_fn`
Ufbx_Free_Fn :: #type (user: *void, ptr: *void, size: u64) -> void #c_call;

// Free the allocator itself
Ufbx_Free_Allocator_Fn :: #type (user: *void) -> void #c_call;

// Allocator callbacks and user context
// NOTE: The allocator will be stored to the loaded scene and will be called
// again from `ufbx_free_scene()` so make sure `user` outlives that!
// You can use `free_allocator_fn()` to free the allocator yourself.
Ufbx_Allocator :: struct {
    // Callback functions, see `typedef`s above for information
    alloc_fn:          Ufbx_Alloc_Fn;
    realloc_fn:        Ufbx_Realloc_Fn;
    free_fn:           Ufbx_Free_Fn;
    free_allocator_fn: Ufbx_Free_Allocator_Fn;
    user:              *void;
}

Ufbx_Allocator_Opts :: struct {
    // Allocator callbacks
    allocator:        Ufbx_Allocator;

    // Maximum number of bytes to allocate before failing
    memory_limit:     u64;

    // Maximum number of allocations to attempt before failing
    allocation_limit: u64;

    // Threshold to swap from batched allocations to individual ones
    // Defaults to 1MB if set to zero
    // NOTE: If set to `1` ufbx will allocate everything in the smallest
    // possible chunks which may be useful for debugging (eg. ASAN)
    huge_threshold:   u64;

    // Maximum size of a single allocation containing sub-allocations.
    // Defaults to 16MB if set to zero
    // The maximum amount of wasted memory depends on `max_chunk_size` and
    // `huge_threshold`: each chunk can waste up to `huge_threshold` bytes
    // internally and the last chunk might be incomplete. So for example
    // with the defaults we can waste around 1MB/16MB = 6.25% overall plus
    // up to 32MB due to the two incomplete blocks. The actual amounts differ
    // slightly as the chunks start out at 4kB and double in size each time,
    // meaning that the maximum fixed overhead (up to 32MB with defaults) is
    // at most ~30% of the total allocation size.
    max_chunk_size:   u64;
}

// Try to read up to `size` bytes to `data`, return the amount of read bytes.
// Return `SIZE_MAX` to indicate an IO error.
Ufbx_Read_Fn :: #type (user: *void, data: *void, size: u64) -> u64 #c_call;

// Skip `size` bytes in the file.
Ufbx_Skip_Fn :: #type (user: *void, size: u64) -> bool #c_call;

// Get the size of the file.
// Return `0` if unknown, `UINT64_MAX` if error.
Ufbx_Size_Fn :: #type (user: *void) -> u64 #c_call;

// Close the file
Ufbx_Close_Fn :: #type (user: *void) -> void #c_call;

Ufbx_Stream :: struct {
    read_fn:  Ufbx_Read_Fn; // < Required
    skip_fn:  Ufbx_Skip_Fn; // < Optional: Will use `read_fn()` if missing
    size_fn:  Ufbx_Size_Fn; // < Optional
    close_fn: Ufbx_Close_Fn; // < Optional

    // Context passed to other functions
    user:     *void;
}

Ufbx_Open_File_Type :: enum s32 {
    MAIN_MODEL       :: 0;
    GEOMETRY_CACHE   :: 1;
    OBJ_MTL          :: 2;

    TYPE_FORCE_32BIT :: 2147483647;

    UFBX_OPEN_FILE_MAIN_MODEL       :: MAIN_MODEL;
    UFBX_OPEN_FILE_GEOMETRY_CACHE   :: GEOMETRY_CACHE;
    UFBX_OPEN_FILE_OBJ_MTL          :: OBJ_MTL;

    UFBX_OPEN_FILE_TYPE_FORCE_32BIT :: TYPE_FORCE_32BIT;
}

Anon_Enum_46 :: enum s32 {
    UFBX_OPEN_FILE_TYPE_COUNT :: 3;
}

Ufbx_Open_File_Context :: u64;

Ufbx_Open_File_Info :: struct {
    // Context that can be passed to the following functions to use a shared allocator:
    //   ufbx_open_file_ctx()
    //   ufbx_open_memory_ctx()
    _context:          Ufbx_Open_File_Context;

    // Kind of file to load.
    type:              Ufbx_Open_File_Type;

    // Original filename in the file, not resolved or UTF-8 encoded.
    // NOTE: Not necessarily NULL-terminated!
    original_filename: Ufbx_Blob;
}

// Callback for opening an external file from the filesystem
Ufbx_Open_File_Fn :: #type (user: *void, stream: *Ufbx_Stream, path: *u8, path_len: u64, info: *Ufbx_Open_File_Info) -> bool #c_call;

Ufbx_Open_File_Cb :: struct {
    fn:   Ufbx_Open_File_Fn;
    user: *void;
}

// Options for `ufbx_open_file()`.
Ufbx_Open_File_Opts :: struct {
    _begin_zero:              u32;

    // Allocator to allocate the memory with.
    allocator:                Ufbx_Allocator_Opts;

    // The filename is guaranteed to be NULL-terminated.
    filename_null_terminated: bool;

    _end_zero:                u32;
}

// Memory stream options
Ufbx_Close_Memory_Fn :: #type (user: *void, data: *void, data_size: u64) -> void #c_call;

Ufbx_Close_Memory_Cb :: struct {
    fn:   Ufbx_Close_Memory_Fn;
    user: *void;
}

// Options for `ufbx_open_memory()`.
Ufbx_Open_Memory_Opts :: struct {
    _begin_zero: u32;

    // Allocator to allocate the memory with.
    // NOTE: Used even if no copy is made to allocate a small metadata block.
    allocator:   Ufbx_Allocator_Opts;

    // Do not copy the memory.
    // You can use `close_cb` to free the memory when the stream is closed.
    // NOTE: This means the provided data pointer is referenced after creating
    // the memory stream, make sure the data stays valid until the stream is closed!
    no_copy:     bool;

    // Callback to free the memory blob.
    close_cb:    Ufbx_Close_Memory_Cb;

    _end_zero:   u32;
}

// Detailed error stack frame.
// NOTE: You must compile `ufbx.c` with `UFBX_ENABLE_ERROR_STACK` to enable the error stack.
Ufbx_Error_Frame :: struct {
    source_line: u32;
    function:    Ufbx_String;
    description: Ufbx_String;
}

// Error causes (and `UFBX_ERROR_NONE` for no error).
Ufbx_Error_Type :: enum s32 {
    NONE                     :: 0;

    UNKNOWN                  :: 1;

    FILE_NOT_FOUND           :: 2;

    EMPTY_FILE               :: 3;

    EXTERNAL_FILE_NOT_FOUND  :: 4;

    OUT_OF_MEMORY            :: 5;

    MEMORY_LIMIT             :: 6;

    ALLOCATION_LIMIT         :: 7;

    TRUNCATED_FILE           :: 8;

    IO                       :: 9;

    CANCELLED                :: 10;

    UNRECOGNIZED_FILE_FORMAT :: 11;

    UNINITIALIZED_OPTIONS    :: 12;

    ZERO_VERTEX_SIZE         :: 13;

    TRUNCATED_VERTEX_STREAM  :: 14;

    INVALID_UTF8             :: 15;

    FEATURE_DISABLED         :: 16;

    BAD_NURBS                :: 17;

    BAD_INDEX                :: 18;

    NODE_DEPTH_LIMIT         :: 19;

    THREADED_ASCII_PARSE     :: 20;

    UNSAFE_OPTIONS           :: 21;

    DUPLICATE_OVERRIDE       :: 22;

    UNSUPPORTED_VERSION      :: 23;

    TYPE_FORCE_32BIT         :: 2147483647;

    UFBX_ERROR_NONE                     :: NONE;

    UFBX_ERROR_UNKNOWN                  :: UNKNOWN;

    UFBX_ERROR_FILE_NOT_FOUND           :: FILE_NOT_FOUND;

    UFBX_ERROR_EMPTY_FILE               :: EMPTY_FILE;

    UFBX_ERROR_EXTERNAL_FILE_NOT_FOUND  :: EXTERNAL_FILE_NOT_FOUND;

    UFBX_ERROR_OUT_OF_MEMORY            :: OUT_OF_MEMORY;

    UFBX_ERROR_MEMORY_LIMIT             :: MEMORY_LIMIT;

    UFBX_ERROR_ALLOCATION_LIMIT         :: ALLOCATION_LIMIT;

    UFBX_ERROR_TRUNCATED_FILE           :: TRUNCATED_FILE;

    UFBX_ERROR_IO                       :: IO;

    UFBX_ERROR_CANCELLED                :: CANCELLED;

    UFBX_ERROR_UNRECOGNIZED_FILE_FORMAT :: UNRECOGNIZED_FILE_FORMAT;

    UFBX_ERROR_UNINITIALIZED_OPTIONS    :: UNINITIALIZED_OPTIONS;

    UFBX_ERROR_ZERO_VERTEX_SIZE         :: ZERO_VERTEX_SIZE;

    UFBX_ERROR_TRUNCATED_VERTEX_STREAM  :: TRUNCATED_VERTEX_STREAM;

    UFBX_ERROR_INVALID_UTF8             :: INVALID_UTF8;

    UFBX_ERROR_FEATURE_DISABLED         :: FEATURE_DISABLED;

    UFBX_ERROR_BAD_NURBS                :: BAD_NURBS;

    UFBX_ERROR_BAD_INDEX                :: BAD_INDEX;

    UFBX_ERROR_NODE_DEPTH_LIMIT         :: NODE_DEPTH_LIMIT;

    UFBX_ERROR_THREADED_ASCII_PARSE     :: THREADED_ASCII_PARSE;

    UFBX_ERROR_UNSAFE_OPTIONS           :: UNSAFE_OPTIONS;

    UFBX_ERROR_DUPLICATE_OVERRIDE       :: DUPLICATE_OVERRIDE;

    UFBX_ERROR_UNSUPPORTED_VERSION      :: UNSUPPORTED_VERSION;

    UFBX_ERROR_TYPE_FORCE_32BIT         :: TYPE_FORCE_32BIT;
}

Anon_Enum_47 :: enum s32 {
    UFBX_ERROR_TYPE_COUNT :: 24;
}

// Error description with detailed stack trace
// HINT: You can use `ufbx_format_error()` for formatting the error
Ufbx_Error :: struct {
    // Type of the error, or `UFBX_ERROR_NONE` if successful.
    type:        Ufbx_Error_Type;

    // Description of the error type.
    description: Ufbx_String;

    // Internal error stack.
    // NOTE: You must compile `ufbx.c` with `UFBX_ENABLE_ERROR_STACK` to enable the error stack.
    stack_size:  u32;
    stack:       [8] Ufbx_Error_Frame;

    // Additional error information, such as missing file filename.
    // `info` is a NULL-terminated UTF-8 string containing `info_length` bytes, excluding the trailing `'\0'`.
    info_length: u64;
    info:        [256] u8;
}

// Loading progress information.
Ufbx_Progress :: struct {
    bytes_read:  u64;
    bytes_total: u64;
}

// Progress result returned from `ufbx_progress_fn()` callback.
// Determines whether ufbx should continue or abort the loading.
Ufbx_Progress_Result :: enum s32 {
    CONTINUE           :: 256;

    CANCEL             :: 512;

    RESULT_FORCE_32BIT :: 2147483647;

    UFBX_PROGRESS_CONTINUE           :: CONTINUE;

    UFBX_PROGRESS_CANCEL             :: CANCEL;

    UFBX_PROGRESS_RESULT_FORCE_32BIT :: RESULT_FORCE_32BIT;
}

// Called periodically with the current progress.
// Return `UFBX_PROGRESS_CANCEL` to cancel further processing.
Ufbx_Progress_Fn :: #type (user: *void, progress: *Ufbx_Progress) -> Ufbx_Progress_Result #c_call;

Ufbx_Progress_Cb :: struct {
    fn:   Ufbx_Progress_Fn;
    user: *void;
}

// Source data/stream to decompress with `ufbx_inflate()`
Ufbx_Inflate_Input :: struct {
    // Total size of the data in bytes
    total_size:             u64;

    // (optional) Initial or complete data chunk
    data:                   *void;
    data_size:              u64;

    // (optional) Temporary buffer, defaults to 256b stack buffer
    buffer:                 *void;
    buffer_size:            u64;

    // (optional) Streaming read function, concatenated after `data`
    read_fn:                Ufbx_Read_Fn;
    read_user:              *void;

    // (optional) Progress reporting
    progress_cb:            Ufbx_Progress_Cb;
    progress_interval_hint: u64; // < Bytes between progress report calls

    // (optional) Change the progress scope
    progress_size_before:   u64;
    progress_size_after:    u64;

    // (optional) No the DEFLATE header
    no_header:              bool;

    // (optional) No the Adler32 checksum
    no_checksum:            bool;

    // (optional) Force internal fast lookup bit amount
    internal_fast_bits:     u64;
}

// Persistent data between `ufbx_inflate()` calls
// NOTE: You must set `initialized` to `false`, but `data` may be uninitialized
Ufbx_Inflate_Retain :: struct {
    initialized: bool;
    data:        [1024] u64;
}

Ufbx_Index_Error_Handling :: enum s32 {
    CLAMP         :: 0;

    NO_INDEX      :: 1;

    ABORT_LOADING :: 2;

    UNSAFE_IGNORE :: 3;

    FORCE_32BIT   :: 2147483647;

    UFBX_INDEX_ERROR_HANDLING_CLAMP         :: CLAMP;

    UFBX_INDEX_ERROR_HANDLING_NO_INDEX      :: NO_INDEX;

    UFBX_INDEX_ERROR_HANDLING_ABORT_LOADING :: ABORT_LOADING;

    UFBX_INDEX_ERROR_HANDLING_UNSAFE_IGNORE :: UNSAFE_IGNORE;

    UFBX_INDEX_ERROR_HANDLING_FORCE_32BIT   :: FORCE_32BIT;
}

Anon_Enum_48 :: enum s32 {
    UFBX_INDEX_ERROR_HANDLING_COUNT :: 4;
}

Ufbx_Unicode_Error_Handling :: enum s32 {
    REPLACEMENT_CHARACTER :: 0;

    UNDERSCORE            :: 1;

    QUESTION_MARK         :: 2;

    REMOVE                :: 3;

    ABORT_LOADING         :: 4;

    UNSAFE_IGNORE         :: 5;

    FORCE_32BIT           :: 2147483647;

    UFBX_UNICODE_ERROR_HANDLING_REPLACEMENT_CHARACTER :: REPLACEMENT_CHARACTER;

    UFBX_UNICODE_ERROR_HANDLING_UNDERSCORE            :: UNDERSCORE;

    UFBX_UNICODE_ERROR_HANDLING_QUESTION_MARK         :: QUESTION_MARK;

    UFBX_UNICODE_ERROR_HANDLING_REMOVE                :: REMOVE;

    UFBX_UNICODE_ERROR_HANDLING_ABORT_LOADING         :: ABORT_LOADING;

    UFBX_UNICODE_ERROR_HANDLING_UNSAFE_IGNORE         :: UNSAFE_IGNORE;

    UFBX_UNICODE_ERROR_HANDLING_FORCE_32BIT           :: FORCE_32BIT;
}

Anon_Enum_49 :: enum s32 {
    UFBX_UNICODE_ERROR_HANDLING_COUNT :: 6;
}

// How to handle FBX node geometry transforms.
// FBX nodes can have "geometry transforms" that affect only the attached meshes,
// but not the children. This is not allowed in many scene representations so
// ufbx provides some ways to simplify them.
// Geometry transforms can also be used to transform any other attributes such
// as lights or cameras.
Ufbx_Geometry_Transform_Handling :: enum s32 {
    PRESERVE                    :: 0;

    HELPER_NODES                :: 1;

    MODIFY_GEOMETRY             :: 2;

    MODIFY_GEOMETRY_NO_FALLBACK :: 3;

    FORCE_32BIT                 :: 2147483647;

    UFBX_GEOMETRY_TRANSFORM_HANDLING_PRESERVE                    :: PRESERVE;

    UFBX_GEOMETRY_TRANSFORM_HANDLING_HELPER_NODES                :: HELPER_NODES;

    UFBX_GEOMETRY_TRANSFORM_HANDLING_MODIFY_GEOMETRY             :: MODIFY_GEOMETRY;

    UFBX_GEOMETRY_TRANSFORM_HANDLING_MODIFY_GEOMETRY_NO_FALLBACK :: MODIFY_GEOMETRY_NO_FALLBACK;

    UFBX_GEOMETRY_TRANSFORM_HANDLING_FORCE_32BIT                 :: FORCE_32BIT;
}

Anon_Enum_50 :: enum s32 {
    UFBX_GEOMETRY_TRANSFORM_HANDLING_COUNT :: 4;
}

// How to handle FBX transform inherit modes.
Ufbx_Inherit_Mode_Handling :: enum s32 {
    PRESERVE               :: 0;

    HELPER_NODES           :: 1;

    COMPENSATE             :: 2;

    COMPENSATE_NO_FALLBACK :: 3;

    IGNORE                 :: 4;

    FORCE_32BIT            :: 2147483647;

    UFBX_INHERIT_MODE_HANDLING_PRESERVE               :: PRESERVE;

    UFBX_INHERIT_MODE_HANDLING_HELPER_NODES           :: HELPER_NODES;

    UFBX_INHERIT_MODE_HANDLING_COMPENSATE             :: COMPENSATE;

    UFBX_INHERIT_MODE_HANDLING_COMPENSATE_NO_FALLBACK :: COMPENSATE_NO_FALLBACK;

    UFBX_INHERIT_MODE_HANDLING_IGNORE                 :: IGNORE;

    UFBX_INHERIT_MODE_HANDLING_FORCE_32BIT            :: FORCE_32BIT;
}

Anon_Enum_51 :: enum s32 {
    UFBX_INHERIT_MODE_HANDLING_COUNT :: 5;
}

// How to handle FBX transform pivots.
Ufbx_Pivot_Handling :: enum s32 {
    RETAIN          :: 0;

    ADJUST_TO_PIVOT :: 1;

    FORCE_32BIT     :: 2147483647;

    UFBX_PIVOT_HANDLING_RETAIN          :: RETAIN;

    UFBX_PIVOT_HANDLING_ADJUST_TO_PIVOT :: ADJUST_TO_PIVOT;

    UFBX_PIVOT_HANDLING_FORCE_32BIT     :: FORCE_32BIT;
}

Anon_Enum_52 :: enum s32 {
    UFBX_PIVOT_HANDLING_COUNT :: 2;
}

Ufbx_Baked_Key_Flags :: enum s32 {
    STEP_LEFT   :: 1;

    STEP_RIGHT  :: 2;

    STEP_KEY    :: 4;

    KEYFRAME    :: 8;

    REDUCED     :: 16;

    FORCE_32BIT :: 2147483647;

    UFBX_BAKED_KEY_STEP_LEFT   :: STEP_LEFT;

    UFBX_BAKED_KEY_STEP_RIGHT  :: STEP_RIGHT;

    UFBX_BAKED_KEY_STEP_KEY    :: STEP_KEY;

    UFBX_BAKED_KEY_KEYFRAME    :: KEYFRAME;

    UFBX_BAKED_KEY_REDUCED     :: REDUCED;

    UFBX_BAKED_KEY_FORCE_32BIT :: FORCE_32BIT;
}

Ufbx_Baked_Vec3 :: struct {
    time:  float64; // < Time of the keyframe, in seconds
    value: ufbx_vec3; // < Value at `time`, can be linearly interpolated
    flags: Ufbx_Baked_Key_Flags; // < Additional information about the keyframe
}

Ufbx_Baked_Vec3_List :: struct {
    data:  *Ufbx_Baked_Vec3;
    count: u64;
}

Ufbx_Baked_Quat :: struct {
    time:  float64; // < Time of the keyframe, in seconds
    value: ufbx_quat; // < Value at `time`, can be (spherically) linearly interpolated
    flags: Ufbx_Baked_Key_Flags; // < Additional information about the keyframe
}

Ufbx_Baked_Quat_List :: struct {
    data:  *Ufbx_Baked_Quat;
    count: u64;
}

// Baked transform animation for a single node.
Ufbx_Baked_Node :: struct {
    // Typed ID of the node, maps to `ufbx_scene.nodes[]`.
    typed_id:             u32;

    // Element ID of the element, maps to `ufbx_scene.elements[]`.
    element_id:           u32;

    // The translation channel has constant values for the whole animation.
    constant_translation: bool;

    // The rotation channel has constant values for the whole animation.
    constant_rotation:    bool;

    // The scale channel has constant values for the whole animation.
    constant_scale:       bool;

    // Translation keys for the animation, maps to `ufbx_node.local_transform.translation`.
    translation_keys:     Ufbx_Baked_Vec3_List;

    // Rotation keyframes, maps to `ufbx_node.local_transform.rotation`.
    rotation_keys:        Ufbx_Baked_Quat_List;

    // Scale keyframes, maps to `ufbx_node.local_transform.scale`.
    scale_keys:           Ufbx_Baked_Vec3_List;
}

Ufbx_Baked_Node_List :: struct {
    data:  *Ufbx_Baked_Node;
    count: u64;
}

// Baked property animation.
Ufbx_Baked_Prop :: struct {
    // Name of the property, eg. `"Visibility"`.
    name:           Ufbx_String;

    // The value of the property is constant for the whole animation.
    constant_value: bool;

    // Property value keys.
    keys:           Ufbx_Baked_Vec3_List;
}

Ufbx_Baked_Prop_List :: struct {
    data:  *Ufbx_Baked_Prop;
    count: u64;
}

// Baked property animation for a single element.
Ufbx_Baked_Element :: struct {
    // Element ID of the element, maps to `ufbx_scene.elements[]`.
    element_id: u32;

    // List of properties the animation modifies.
    props:      Ufbx_Baked_Prop_List;
}

Ufbx_Baked_Element_List :: struct {
    data:  *Ufbx_Baked_Element;
    count: u64;
}

Ufbx_Baked_Anim_Metadata :: struct {
    // Memory statistics
    result_memory_used: u64;
    temp_memory_used:   u64;
    result_allocs:      u64;
    temp_allocs:        u64;
}

// Animation baked into linearly interpolated keyframes.
// See `ufbx_bake_anim()`.
Ufbx_Baked_Anim :: struct {
    // Nodes that are modified by the animation.
    // Some nodes may be missing if the specified animation does not transform them.
    // Conversely, some non-obviously animated nodes may be included as exporters
    // often may add dummy keyframes for objects.
    nodes:               Ufbx_Baked_Node_List;

    // Element properties modified by the animation.
    elements:            Ufbx_Baked_Element_List;

    // Playback time range for the animation.
    playback_time_begin: float64;
    playback_time_end:   float64;
    playback_duration:   float64;

    // Keyframe time range.
    key_time_min:        float64;
    key_time_max:        float64;

    // Additional bake information.
    metadata:            Ufbx_Baked_Anim_Metadata;
}

// Internal thread pool handle.
// Passed to `ufbx_thread_pool_run_task()` from an user thread to run ufbx tasks.
// HINT: This context can store a user pointer via `ufbx_thread_pool_set_user_ptr()`.
Ufbx_Thread_Pool_Context :: u64;

// Thread pool creation information from ufbx.
Ufbx_Thread_Pool_Info :: struct {
    max_concurrent_tasks: u32;
}

// Initialize the thread pool.
// Return `true` on success.
Ufbx_Thread_Pool_Init_Fn :: #type (user: *void, ctx: Ufbx_Thread_Pool_Context, info: *Ufbx_Thread_Pool_Info) -> bool #c_call;

// Run tasks `count` tasks in threads.
// You must call `ufbx_thread_pool_run_task()` with indices `[start_index, start_index + count)`.
// The threads are launched in batches indicated by `group`, see `UFBX_THREAD_GROUP_COUNT` for more information.
// Ideally, you should run all the task indices in parallel within each `ufbx_thread_pool_run_fn()` call.
Ufbx_Thread_Pool_Run_Fn :: #type (user: *void, ctx: Ufbx_Thread_Pool_Context, group: u32, start_index: u32, count: u32) -> void #c_call;

// Wait for previous tasks spawned in `ufbx_thread_pool_run_fn()` to finish.
// `group` specifies the batch to wait for, `max_index` contains `start_index + count` from that group instance.
Ufbx_Thread_Pool_Wait_Fn :: #type (user: *void, ctx: Ufbx_Thread_Pool_Context, group: u32, max_index: u32) -> void #c_call;

// Free the thread pool.
Ufbx_Thread_Pool_Free_Fn :: #type (user: *void, ctx: Ufbx_Thread_Pool_Context) -> void #c_call;

// Thread pool interface.
// See functions above for more information.
//
// Hypothetical example of calls, where `UFBX_THREAD_GROUP_COUNT=2` for simplicity:
//
//   run_fn(group=0, start_index=0, count=4)   -> t0 := threaded { ufbx_thread_pool_run_task(0..3) }
//   run_fn(group=1, start_index=4, count=10)  -> t1 := threaded { ufbx_thread_pool_run_task(4..10) }
//   wait_fn(group=0, max_index=4)             -> wait_threads(t0)
//   run_fn(group=0, start_index=10, count=15) -> t0 := threaded { ufbx_thread_pool_run_task(10..14) }
//   wait_fn(group=1, max_index=10)            -> wait_threads(t1)
//   wait_fn(group=0, max_index=15)            -> wait_threads(t0)
//
Ufbx_Thread_Pool :: struct {
    init_fn: Ufbx_Thread_Pool_Init_Fn; // < Optional
    run_fn:  Ufbx_Thread_Pool_Run_Fn; // < Required
    wait_fn: Ufbx_Thread_Pool_Wait_Fn; // < Required
    free_fn: Ufbx_Thread_Pool_Free_Fn; // < Optional
    user:    *void;
}

// Thread pool options.
Ufbx_Thread_Opts :: struct {
    // Thread pool interface.
    // HINT: You can use `extra/ufbx_os.h` to provide a thread pool.
    pool:         Ufbx_Thread_Pool;

    // Maximum of tasks to have in-flight.
    // Default: 2048
    num_tasks:    u64;

    // Maximum amount of memory to use for batched threaded processing.
    // Default: 32MB
    // NOTE: The actual used memory usage might be higher, if there are individual tasks
    // that rqeuire a high amount of memory.
    memory_limit: u64;
}

// Flags to control nanimation evaluation functions.
Ufbx_Evaluate_Flags :: enum s32 {
    UFBX_EVALUATE_FLAG_NO_EXTRAPOLATION :: 1;

    FORCE_32BIT                         :: 2147483647;
    ufbx_evaluate_flags_FORCE_32BIT :: FORCE_32BIT;
}

// Options for `ufbx_load_file/memory/stream/stdio()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Load_Opts :: struct {
    _begin_zero:                          u32;

    temp_allocator:                       Ufbx_Allocator_Opts; // < Allocator used during loading
    result_allocator:                     Ufbx_Allocator_Opts; // < Allocator used for the final scene
    thread_opts:                          Ufbx_Thread_Opts; // < Threading options

    ignore_geometry:                      bool; // < Do not load geometry datsa (vertices, indices, etc)
    ignore_animation:                     bool; // < Do not load animation curves
    ignore_embedded:                      bool; // < Do not load embedded content
    ignore_all_content:                   bool; // < Do not load any content (geometry, animation, embedded)

    evaluate_skinning:                    bool; // < Evaluate skinning (see ufbx_mesh.skinned_vertices)
    evaluate_caches:                      bool; // < Evaluate vertex caches (see ufbx_mesh.skinned_vertices)

    // Try to open external files referenced by the main file automatically.
    // Applies to geometry caches and .mtl files for OBJ.
    // NOTE: This may be risky for untrusted data as the input files may contain
    // references to arbitrary paths in the filesystem.
    // NOTE: This only applies to files *implicitly* referenced by the scene, if
    // you request additional files via eg. `ufbx_load_opts.obj_mtl_path` they
    // are still loaded.
    // NOTE: Will fail loading if any external files are not found by default, use
    // `ufbx_load_opts.ignore_missing_external_files` to suppress this, in this case
    // you can find the errors at `ufbx_metadata.warnings[]` as `UFBX_WARNING_MISSING_EXTERNAL_FILE`.
    load_external_files:                  bool;

    // Don't fail loading if external files are not found.
    ignore_missing_external_files:        bool;

    // Don't compute `ufbx_skin_deformer` `vertices` and `weights` arrays saving
    // a bit of memory and time if not needed
    skip_skin_vertices:                   bool;

    // Skip computing `ufbx_mesh.material_parts[]` and `ufbx_mesh.face_group_parts[]`.
    skip_mesh_parts:                      bool;

    // Clean-up skin weights by removing negative, zero and NAN weights.
    clean_skin_weights:                   bool;

    // Read Blender materials as PBR values.
    // Blender converts PBR materials to legacy FBX Phong materials in a deterministic way.
    // If this setting is enabled, such materials will be read as `UFBX_SHADER_BLENDER_PHONG`,
    // which means ufbx will be able to parse roughness and metallic textures.
    use_blender_pbr_material:             bool;

    // Don't adjust reading the FBX file depending on the detected exporter
    disable_quirks:                       bool;

    // Don't allow partially broken FBX files to load
    strict:                               bool;

    // Force ASCII parsing to use a single thread.
    // The multi-threaded ASCII parsing is slightly more lenient as it ignores
    // the self-reported size of ASCII arrays, that threaded parsing depends on.
    force_single_thread_ascii_parsing:    bool;

    // UNSAFE: If enabled allows using unsafe options that may fundamentally
    // break the API guarantees.
    allow_unsafe:                         bool;

    // Specify how to handle broken indices.
    index_error_handling:                 Ufbx_Index_Error_Handling;

    // Connect related elements even if they are broken. If `false` (default)
    // `ufbx_skin_cluster` with a missing `bone` field are _not_ included in
    // the `ufbx_skin_deformer.clusters[]` array for example.
    connect_broken_elements:              bool;

    // Allow nodes that are not connected in any way to the root. Conversely if
    // disabled, all lone nodes will be parented under `ufbx_scene.root_node`.
    allow_nodes_out_of_root:              bool;

    // Allow meshes with no vertex position attribute.
    // NOTE: If this is set `ufbx_mesh.vertex_position.exists` may be `false`.
    allow_missing_vertex_position:        bool;

    // Allow faces with zero indices.
    allow_empty_faces:                    bool;

    // Generate vertex normals for a meshes that are missing normals.
    // You can see if the normals have been generated from `ufbx_mesh.generated_normals`.
    generate_missing_normals:             bool;

    // Ignore `open_file_cb` when loading the main file.
    open_main_file_with_default:          bool;

    // Path separator character, defaults to '\' on Windows and '/' otherwise.
    path_separator:                       u8;

    // Maximum depth of the node hirerachy.
    // Will fail with `UFBX_ERROR_NODE_DEPTH_LIMIT` if a node is deeper than this limit.
    // NOTE: The default of 0 allows arbitrarily deep hierarchies. Be careful if using
    // recursive algorithms without setting this limit.
    node_depth_limit:                     u32;

    // Estimated file size for progress reporting
    file_size_estimate:                   u64;

    // Buffer size in bytes to use for reading from files or IO callbacks
    read_buffer_size:                     u64;

    // Filename to use as a base for relative file paths if not specified using
    // `ufbx_load_file()`. Use `length = SIZE_MAX` for NULL-terminated strings.
    // `raw_filename` will be derived from this if empty.
    filename:                             Ufbx_String;

    // Raw non-UTF8 filename. Does not support NULL termination.
    // `filename` will be derived from this if empty.
    raw_filename:                         Ufbx_Blob;

    // Progress reporting
    progress_cb:                          Ufbx_Progress_Cb;
    progress_interval_hint:               u64; // < Bytes between progress report calls

    // External file callbacks (defaults to stdio.h)
    open_file_cb:                         Ufbx_Open_File_Cb;

    // How to handle geometry transforms in the nodes.
    // See `ufbx_geometry_transform_handling` for an explanation.
    geometry_transform_handling:          Ufbx_Geometry_Transform_Handling;

    // How to handle unconventional transform inherit modes.
    // See `ufbx_inherit_mode_handling` for an explanation.
    inherit_mode_handling:                Ufbx_Inherit_Mode_Handling;

    // How to handle pivots.
    // See `ufbx_pivot_handling` for an explanation.
    pivot_handling:                       Ufbx_Pivot_Handling;

    // How to perform space conversion by `target_axes` and `target_unit_meters`.
    // See `ufbx_space_conversion` for an explanation.
    space_conversion:                     Ufbx_Space_Conversion;

    // Axis used to mirror for conversion between left-handed and right-handed coordinates.
    handedness_conversion_axis:           Ufbx_Mirror_Axis;

    // Do not change winding of faces when converting handedness.
    handedness_conversion_retain_winding: bool;

    // Reverse winding of all faces.
    // If `handedness_conversion_retain_winding` is not specified, mirrored meshes
    // will retain their original winding.
    reverse_winding:                      bool;

    // Apply an implicit root transformation to match axes.
    // Used if `ufbx_coordinate_axes_valid(target_axes)`.
    target_axes:                          Ufbx_Coordinate_Axes;

    // Scale the scene so that one world-space unit is `target_unit_meters` meters.
    // By default units are not scaled.
    target_unit_meters:                   Ufbx_Real;

    // Target space for camera.
    // By default FBX cameras point towards the positive X axis.
    // Used if `ufbx_coordinate_axes_valid(target_camera_axes)`.
    target_camera_axes:                   Ufbx_Coordinate_Axes;

    // Target space for directed lights.
    // By default FBX lights point towards the negative Y axis.
    // Used if `ufbx_coordinate_axes_valid(target_light_axes)`.
    target_light_axes:                    Ufbx_Coordinate_Axes;

    // Name for dummy geometry transform helper nodes.
    // See `UFBX_GEOMETRY_TRANSFORM_HANDLING_HELPER_NODES`.
    geometry_transform_helper_name:       Ufbx_String;

    // Name for dummy scale helper nodes.
    // See `UFBX_INHERIT_MODE_HANDLING_HELPER_NODES`.
    scale_helper_name:                    Ufbx_String;

    // Normalize vertex normals.
    normalize_normals:                    bool;

    // Normalize tangents and bitangents.
    normalize_tangents:                   bool;

    // Override for the root transform
    use_root_transform:                   bool;
    root_transform:                       Ufbx_Transform;

    // Animation keyframe clamp threshold, only applies to specific interpolation modes.
    key_clamp_threshold:                  float64;

    // Specify how to handle Unicode errors in strings.
    unicode_error_handling:               Ufbx_Unicode_Error_Handling;

    // Retain the 'W' component of mesh normal/tangent/bitangent.
    // See `ufbx_vertex_attrib.values_w`.
    retain_vertex_attrib_w:               bool;

    // Retain the raw document structure using `ufbx_dom_node`.
    retain_dom:                           bool;

    // Force a specific file format instead of detecting it.
    file_format:                          Ufbx_File_Format;

    // How far to read into the file to determine the file format.
    // Default: 16kB
    file_format_lookahead:                u64;

    // Do not attempt to detect file format from file content.
    no_format_from_content:               bool;

    // Do not attempt to detect file format from filename extension.
    // ufbx primarily detects file format from the file header,
    // this is just used as a fallback.
    no_format_from_extension:             bool;

    // (.obj) Try to find .mtl file with matching filename as the .obj file.
    // Used if the file specified `mtllib` line is not found, eg. for a file called
    // `model.obj` that contains the line `usemtl materials.mtl`, ufbx would first
    // try to open `materials.mtl` and if that fails it tries to open `model.mtl`.
    obj_search_mtl_by_filename:           bool;

    // (.obj) Don't split geometry into meshes by object.
    obj_merge_objects:                    bool;

    // (.obj) Don't split geometry into meshes by groups.
    obj_merge_groups:                     bool;

    // (.obj) Force splitting groups even on object boundaries.
    obj_split_groups:                     bool;

    // (.obj) Path to the .mtl file.
    // Use `length = SIZE_MAX` for NULL-terminated strings.
    // NOTE: This is used _instead_ of the one in the file even if not found
    // and sidesteps `load_external_files` as it's _explicitly_ requested.
    obj_mtl_path:                         Ufbx_String;

    // (.obj) Data for the .mtl file.
    obj_mtl_data:                         Ufbx_Blob;

    // The world unit in meters that .obj files are assumed to be in.
    // .obj files do not define the working units. By default the unit scale
    // is read as zero, and no unit conversion is performed.
    obj_unit_meters:                      Ufbx_Real;

    // Coordinate space .obj files are assumed to be in.
    // .obj files do not define the coordinate space they use. By default no
    // coordinate space is assumed and no conversion is performed.
    obj_axes:                             Ufbx_Coordinate_Axes;

    _end_zero:                            u32;
}

// Options for `ufbx_evaluate_scene()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Evaluate_Opts :: struct {
    _begin_zero:         u32;

    temp_allocator:      Ufbx_Allocator_Opts; // < Allocator used during evaluation
    result_allocator:    Ufbx_Allocator_Opts; // < Allocator used for the final scene

    evaluate_skinning:   bool; // < Evaluate skinning (see ufbx_mesh.skinned_vertices)
    evaluate_caches:     bool; // < Evaluate vertex caches (see ufbx_mesh.skinned_vertices)

    // Evaluation flags.
    // See `ufbx_evaluate_flags` for information.
    evaluate_flags:      u32;

    // WARNING: Potentially unsafe! Try to open external files such as geometry caches
    load_external_files: bool;

    // External file callbacks (defaults to stdio.h)
    open_file_cb:        Ufbx_Open_File_Cb;

    _end_zero:           u32;
}

Ufbx_Const_Uint32_List :: struct {
    data:  *u32;
    count: u64;
}
Ufbx_Const_Real_List :: struct {
    data:  *Ufbx_Real;
    count: u64;
}

Ufbx_Prop_Override_Desc :: struct {
    // Element (`ufbx_element.element_id`) to override the property from
    element_id: u32;

    // Property name to override.
    prop_name:  Ufbx_String;

    // Override value, use `value.x` for scalars. `value_int` is initialized
    // from `value.x` if zero so keep `value` zeroed even if you don't need it!
    value:      ufbx_vec4;
    value_str:  Ufbx_String;
    value_int:  s64;
}

Ufbx_Const_Prop_Override_Desc_List :: struct {
    data:  *Ufbx_Prop_Override_Desc;
    count: u64;
}

Ufbx_Const_Transform_Override_List :: struct {
    data:  *Ufbx_Transform_Override;
    count: u64;
}

Ufbx_Anim_Opts :: struct {
    _begin_zero:            u32;

    // Animation layers indices.
    // Corresponding to `ufbx_scene.anim_layers[]`, aka `ufbx_anim_layer.typed_id`.
    layer_ids:              Ufbx_Const_Uint32_List;

    // Override layer weights, parallel to `ufbx_anim_opts.layer_ids[]`.
    override_layer_weights: Ufbx_Const_Real_List;

    // Property overrides.
    // These allow you to override FBX properties, such as 'UFBX_Lcl_Rotation`.
    prop_overrides:         Ufbx_Const_Prop_Override_Desc_List;

    // Transform overrides.
    // These allow you to override individual nodes' `ufbx_node.local_transform`.
    transform_overrides:    Ufbx_Const_Transform_Override_List;

    // Ignore connected properties
    ignore_connections:     bool;

    result_allocator:       Ufbx_Allocator_Opts; // < Allocator used to create the `ufbx_anim`

    _end_zero:              u32;
}

// Specifies how to handle stepped tangents.
Ufbx_Bake_Step_Handling :: enum s32 {
    UFBX_BAKE_STEP_HANDLING_DEFAULT         :: 0;

    UFBX_BAKE_STEP_HANDLING_CUSTOM_DURATION :: 1;

    UFBX_BAKE_STEP_HANDLING_IDENTICAL_TIME  :: 2;

    UFBX_BAKE_STEP_HANDLING_ADJACENT_DOUBLE :: 3;

    UFBX_BAKE_STEP_HANDLING_IGNORE          :: 4;

    FORCE_32BIT                             :: 2147483647;
    ufbx_bake_step_handling_FORCE_32BIT :: FORCE_32BIT;
}

Anon_Enum_53 :: enum s32 {
    UFBX_BAKE_STEP_HANDLING_COUNT :: 5;
}

Ufbx_Bake_Opts :: struct {
    _begin_zero:                   u32;

    temp_allocator:                Ufbx_Allocator_Opts; // < Allocator used during loading
    result_allocator:              Ufbx_Allocator_Opts; // < Allocator used for the final baked animation

    // Move the keyframe times to start from zero regardless of the animation start time.
    // For example, for an animation spanning between frames [30, 60] will be moved to
    // [0, 30] in the baked animation.
    // NOTE: This is in general not equivalent to subtracting `ufbx_anim.time_begin`
    // from each keyframe, as this trimming is done exactly using internal FBX ticks.
    trim_start_time:               bool;

    // Samples per second to use for resampling non-linear animation.
    // Default: 30
    resample_rate:                 float64;

    // Minimum sample rate to not resample.
    // Many exporters resample animation by default. To avoid double-resampling
    // keyframe rates higher or equal to this will not be resampled.
    // Default: 19.5
    minimum_sample_rate:           float64;

    // Maximum sample rate to use, this will remove keys if they are too close together.
    // Default: unlimited
    maximum_sample_rate:           float64;

    // Bake the raw versions of properties related to transforms.
    bake_transform_props:          bool;

    // Do not bake node transforms.
    skip_node_transforms:          bool;

    // Do not resample linear rotation keyframes.
    // FBX interpolates rotation in Euler angles, so this might cause incorrect interpolation.
    no_resample_rotation:          bool;

    // Ignore layer weight animation.
    ignore_layer_weight_animation: bool;

    // Maximum number of segments to generate from one keyframe.
    // Default: 32
    max_keyframe_segments:         u64;

    // How to handle stepped tangents.
    step_handling:                 Ufbx_Bake_Step_Handling;

    // Interpolation duration used by `UFBX_BAKE_STEP_HANDLING_CUSTOM_DURATION`.
    step_custom_duration:          float64;

    // Interpolation epsilon used by `UFBX_BAKE_STEP_HANDLING_CUSTOM_DURATION`.
    // Defined as the minimum fractional decrease/increase in key time, ie.
    // `time / (1.0 + step_custom_epsilon)` and `time * (1.0 + step_custom_epsilon)`.
    step_custom_epsilon:           float64;

    // Flags passed to animation evaluation functions.
    // See `ufbx_evaluate_flags`.
    evaluate_flags:                u32;

    // Enable key reduction.
    key_reduction_enabled:         bool;

    // Enable key reduction for non-constant rotations.
    // Assumes rotations will be interpolated using a spherical linear interpolation at runtime.
    key_reduction_rotation:        bool;

    // Threshold for reducing keys for linear segments.
    // Default `0.000001`, use negative to disable.
    key_reduction_threshold:       float64;

    // Maximum passes over the keys to reduce.
    // Every pass can potentially halve the the amount of keys.
    // Default: `4`
    key_reduction_passes:          u64;

    _end_zero:                     u32;
}

// Options for `ufbx_tessellate_nurbs_curve()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Tessellate_Curve_Opts :: struct {
    _begin_zero:      u32;

    temp_allocator:   Ufbx_Allocator_Opts; // < Allocator used during tessellation
    result_allocator: Ufbx_Allocator_Opts; // < Allocator used for the final line curve

    // How many segments tessellate each span in `ufbx_nurbs_basis.spans`.
    span_subdivision: u64;

    _end_zero:        u32;
}

// Options for `ufbx_tessellate_nurbs_surface()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Tessellate_Surface_Opts :: struct {
    _begin_zero:        u32;

    temp_allocator:     Ufbx_Allocator_Opts; // < Allocator used during tessellation
    result_allocator:   Ufbx_Allocator_Opts; // < Allocator used for the final mesh

    // How many segments tessellate each span in `ufbx_nurbs_basis.spans`.
    // NOTE: Default is `4`, _not_ `ufbx_nurbs_surface.span_subdivision_u/v` as that
    // would make it easy to create an FBX file with an absurdly high subdivision
    // rate (similar to mesh subdivision). Please enforce copy the value yourself
    // enforcing whatever limits you deem reasonable.
    span_subdivision_u: u64;
    span_subdivision_v: u64;

    // Skip computing `ufbx_mesh.material_parts[]`
    skip_mesh_parts:    bool;

    _end_zero:          u32;
}

// Options for `ufbx_subdivide_mesh()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Subdivide_Opts :: struct {
    _begin_zero:              u32;

    temp_allocator:           Ufbx_Allocator_Opts; // < Allocator used during subdivision
    result_allocator:         Ufbx_Allocator_Opts; // < Allocator used for the final mesh

    boundary:                 Ufbx_Subdivision_Boundary;
    uv_boundary:              Ufbx_Subdivision_Boundary;

    // Do not generate normals
    ignore_normals:           bool;

    // Interpolate existing normals using the subdivision rules
    // instead of generating new normals
    interpolate_normals:      bool;

    // Subdivide also tangent attributes
    interpolate_tangents:     bool;

    // Map subdivided vertices into weighted original vertices.
    // NOTE: May be O(n^2) if `max_source_vertices` is not specified!
    evaluate_source_vertices: bool;

    // Limit source vertices per subdivided vertex.
    max_source_vertices:      u64;

    // Calculate bone influences over subdivided vertices (if applicable).
    // NOTE: May be O(n^2) if `max_skin_weights` is not specified!
    evaluate_skin_weights:    bool;

    // Limit bone influences per subdivided vertex.
    max_skin_weights:         u64;

    // Index of the skin deformer to use for `evaluate_skin_weights`.
    skin_deformer_index:      u64;

    _end_zero:                u32;
}

// Options for `ufbx_load_geometry_cache()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Geometry_Cache_Opts :: struct {
    _begin_zero:       u32;

    temp_allocator:    Ufbx_Allocator_Opts; // < Allocator used during loading
    result_allocator:  Ufbx_Allocator_Opts; // < Allocator used for the final scene

    // External file callbacks (defaults to stdio.h)
    open_file_cb:      Ufbx_Open_File_Cb;

    // FPS value for converting frame times to seconds
    frames_per_second: float64;

    // Axis to mirror the geometry by.
    mirror_axis:       Ufbx_Mirror_Axis;

    // Enable scaling `scale_factor` all geometry by.
    use_scale_factor:  bool;

    // Factor to scale the geometry by.
    scale_factor:      Ufbx_Real;

    _end_zero:         u32;
}

// Options for `ufbx_read_geometry_cache_TYPE()`
// NOTE: Initialize to zero with `{ 0 }` (C) or `{ }` (C++)
Ufbx_Geometry_Cache_Data_Opts :: struct {
    _begin_zero:      u32;

    // External file callbacks (defaults to stdio.h)
    open_file_cb:     Ufbx_Open_File_Cb;

    additive:         bool;
    use_weight:       bool;
    weight:           Ufbx_Real;

    // Ignore scene transform.
    ignore_transform: bool;

    _end_zero:        u32;
}

Ufbx_Panic :: struct {
    did_panic:      bool;
    message_length: u64;
    message:        [128] u8;
}

// Various zero/empty/identity values
ufbx_empty_string: Ufbx_String #elsewhere ufbx;
ufbx_empty_blob: Ufbx_Blob #elsewhere ufbx;
ufbx_identity_matrix: Ufbx_Matrix #elsewhere ufbx;
ufbx_identity_transform: Ufbx_Transform #elsewhere ufbx;
ufbx_zero_vec2: ufbx_vec2 #elsewhere ufbx;
ufbx_zero_vec3: ufbx_vec3 #elsewhere ufbx;
ufbx_zero_vec4: ufbx_vec4 #elsewhere ufbx;
ufbx_identity_quat: ufbx_quat #elsewhere ufbx;

// Commonly used coordinate axes.
ufbx_axes_right_handed_y_up: Ufbx_Coordinate_Axes #elsewhere ufbx;
ufbx_axes_right_handed_z_up: Ufbx_Coordinate_Axes #elsewhere ufbx;
ufbx_axes_left_handed_y_up: Ufbx_Coordinate_Axes #elsewhere ufbx;
ufbx_axes_left_handed_z_up: Ufbx_Coordinate_Axes #elsewhere ufbx;

// Sizes of element types. eg `sizeof(ufbx_node)`
ufbx_element_type_size: [42] u64 #elsewhere ufbx;

// Version of the source file, comparable to `UFBX_HEADER_VERSION`
ufbx_source_version: u32 #elsewhere ufbx;

// Practically always `true` (see below), if not you need to be careful with threads.
//
// Guaranteed to be `true` in _any_ of the following conditions:
// - ufbx.c has been compiled using: GCC / Clang / MSVC / ICC / EMCC / TCC
// - ufbx.c has been compiled as C++11 or later
// - ufbx.c has been compiled as C11 or later with `<stdatomic.h>` support
//
// If `false` you can't call the following functions concurrently:
//   ufbx_evaluate_scene()
//   ufbx_free_scene()
//   ufbx_subdivide_mesh()
//   ufbx_tessellate_nurbs_surface()
//   ufbx_free_mesh()
ufbx_is_thread_safe :: () -> bool #foreign ufbx;

// Load a scene from a `size` byte memory buffer at `data`
ufbx_load_memory :: (data: *void, data_size: u64, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Load a scene by opening a file named `filename`
ufbx_load_file :: (filename: *u8, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

ufbx_load_file_len :: (filename: *u8, filename_len: u64, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Load a scene by reading from an `FILE *file` stream
// NOTE: `file` is passed as a `void` pointer to avoid including <stdio.h>
ufbx_load_stdio :: (file: *void, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Load a scene by reading from an `FILE *file` stream with a prefix
// NOTE: `file` is passed as a `void` pointer to avoid including <stdio.h>
ufbx_load_stdio_prefix :: (file: *void, prefix: *void, prefix_size: u64, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Load a scene from a user-specified stream
ufbx_load_stream :: (stream: *Ufbx_Stream, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Load a scene from a user-specified stream with a prefix
ufbx_load_stream_prefix :: (stream: *Ufbx_Stream, prefix: *void, prefix_size: u64, opts: *Ufbx_Load_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Free a previously loaded or evaluated scene
ufbx_free_scene :: (scene: *Ufbx_Scene) -> void #foreign ufbx;

// Increment `scene` refcount
ufbx_retain_scene :: (scene: *Ufbx_Scene) -> void #foreign ufbx;

// Format a textual description of `error`.
// Always produces a NULL-terminated string to `char dst[dst_size]`, truncating if
// necessary. Returns the number of characters written not including the NULL terminator.
ufbx_format_error :: (dst: *u8, dst_size: u64, error: *Ufbx_Error) -> u64 #foreign ufbx;

// Find a property `name` from `props`, returns `NULL` if not found.
// Searches through `ufbx_props.defaults` as well.
ufbx_find_prop_len :: (props: *Ufbx_Props, name: *u8, name_len: u64) -> *Ufbx_Prop #foreign ufbx;
ufbx_find_prop :: (props: *Ufbx_Props, name: *u8) -> *Ufbx_Prop #foreign ufbx;

// Utility functions for finding the value of a property, returns `def` if not found.
// NOTE: For `ufbx_string` you need to ensure the lifetime of the default is
// sufficient as no copy is made.
ufbx_find_real_len :: (props: *Ufbx_Props, name: *u8, name_len: u64, def: Ufbx_Real) -> Ufbx_Real #foreign ufbx;
ufbx_find_real :: (props: *Ufbx_Props, name: *u8, def: Ufbx_Real) -> Ufbx_Real #foreign ufbx;
ufbx_find_vec3_len :: (props: *Ufbx_Props, name: *u8, name_len: u64, def: ufbx_vec3) -> ufbx_vec3 #foreign ufbx;
ufbx_find_vec3 :: (props: *Ufbx_Props, name: *u8, def: ufbx_vec3) -> ufbx_vec3 #foreign ufbx;
ufbx_find_int_len :: (props: *Ufbx_Props, name: *u8, name_len: u64, def: s64) -> s64 #foreign ufbx;
ufbx_find_int :: (props: *Ufbx_Props, name: *u8, def: s64) -> s64 #foreign ufbx;
ufbx_find_bool_len :: (props: *Ufbx_Props, name: *u8, name_len: u64, def: bool) -> bool #foreign ufbx;
ufbx_find_bool :: (props: *Ufbx_Props, name: *u8, def: bool) -> bool #foreign ufbx;
ufbx_find_string_len :: (props: *Ufbx_Props, name: *u8, name_len: u64, def: Ufbx_String) -> Ufbx_String #foreign ufbx;
ufbx_find_string :: (props: *Ufbx_Props, name: *u8, def: Ufbx_String) -> Ufbx_String #foreign ufbx;
ufbx_find_blob_len :: (props: *Ufbx_Props, name: *u8, name_len: u64, def: Ufbx_Blob) -> Ufbx_Blob #foreign ufbx;
ufbx_find_blob :: (props: *Ufbx_Props, name: *u8, def: Ufbx_Blob) -> Ufbx_Blob #foreign ufbx;

// Find property in `props` with concatenated `parts[num_parts]`.
ufbx_find_prop_concat :: (props: *Ufbx_Props, parts: *Ufbx_String, num_parts: u64) -> *Ufbx_Prop #foreign ufbx;

// Get an element connected to a property.
ufbx_get_prop_element :: (element: *Ufbx_Element, prop: *Ufbx_Prop, type: Ufbx_Element_Type) -> *Ufbx_Element #foreign ufbx;

// Find an element connected to a property by name.
ufbx_find_prop_element_len :: (element: *Ufbx_Element, name: *u8, name_len: u64, type: Ufbx_Element_Type) -> *Ufbx_Element #foreign ufbx;
ufbx_find_prop_element :: (element: *Ufbx_Element, name: *u8, type: Ufbx_Element_Type) -> *Ufbx_Element #foreign ufbx;

// Find any element of type `type` in `scene` by `name`.
// For example if you want to find `ufbx_material` named `Mat`:
//   (ufbx_material*)ufbx_find_element(scene, UFBX_ELEMENT_MATERIAL, "Mat");
ufbx_find_element_len :: (scene: *Ufbx_Scene, type: Ufbx_Element_Type, name: *u8, name_len: u64) -> *Ufbx_Element #foreign ufbx;
ufbx_find_element :: (scene: *Ufbx_Scene, type: Ufbx_Element_Type, name: *u8) -> *Ufbx_Element #foreign ufbx;

// Find node in `scene` by `name` (shorthand for `ufbx_find_element(UFBX_ELEMENT_NODE)`).
ufbx_find_node_len :: (scene: *Ufbx_Scene, name: *u8, name_len: u64) -> *Ufbx_Node #foreign ufbx;
ufbx_find_node :: (scene: *Ufbx_Scene, name: *u8) -> *Ufbx_Node #foreign ufbx;

// Find an animation stack in `scene` by `name` (shorthand for `ufbx_find_element(UFBX_ELEMENT_ANIM_STACK)`)
ufbx_find_anim_stack_len :: (scene: *Ufbx_Scene, name: *u8, name_len: u64) -> *Ufbx_Anim_Stack #foreign ufbx;
ufbx_find_anim_stack :: (scene: *Ufbx_Scene, name: *u8) -> *Ufbx_Anim_Stack #foreign ufbx;

// Find a material in `scene` by `name` (shorthand for `ufbx_find_element(UFBX_ELEMENT_MATERIAL)`).
ufbx_find_material_len :: (scene: *Ufbx_Scene, name: *u8, name_len: u64) -> *Ufbx_Material #foreign ufbx;
ufbx_find_material :: (scene: *Ufbx_Scene, name: *u8) -> *Ufbx_Material #foreign ufbx;

// Find a single animated property `prop` of `element` in `layer`.
// Returns `NULL` if not found.
ufbx_find_anim_prop_len :: (layer: *Ufbx_Anim_Layer, element: *Ufbx_Element, prop: *u8, prop_len: u64) -> *Ufbx_Anim_Prop #foreign ufbx;
ufbx_find_anim_prop :: (layer: *Ufbx_Anim_Layer, element: *Ufbx_Element, prop: *u8) -> *Ufbx_Anim_Prop #foreign ufbx;

// Find all animated properties of `element` in `layer`.
ufbx_find_anim_props :: (layer: *Ufbx_Anim_Layer, element: *Ufbx_Element) -> Ufbx_Anim_Prop_List #foreign ufbx;

// Get a matrix that transforms normals in the same way as Autodesk software.
// NOTE: The resulting normals are slightly incorrect as this function deliberately
// inverts geometric transformation wrong. For better results use
// `ufbx_matrix_for_normals(&node->geometry_to_world)`.
ufbx_get_compatible_matrix_for_normals :: (node: *Ufbx_Node) -> Ufbx_Matrix #foreign ufbx;

// Decompress a DEFLATE compressed buffer.
// Returns the decompressed size or a negative error code (see source for details).
// NOTE: You must supply a valid `retain` with `ufbx_inflate_retain.initialized == false`
// but the rest can be uninitialized.
ufbx_inflate :: (dst: *void, dst_size: u64, input: *Ufbx_Inflate_Input, retain: *Ufbx_Inflate_Retain) -> Ptrdiff_T #foreign ufbx;

// Same as `ufbx_open_file()` but compatible with the callback in `ufbx_open_file_fn`.
// The `user` parameter is actually not used here.
ufbx_default_open_file :: (user: *void, stream: *Ufbx_Stream, path: *u8, path_len: u64, info: *Ufbx_Open_File_Info) -> bool #foreign ufbx;

// Open a `ufbx_stream` from a file.
// Use `path_len == SIZE_MAX` for NULL terminated string.
ufbx_open_file :: (stream: *Ufbx_Stream, path: *u8, path_len: u64, opts: *Ufbx_Open_File_Opts, error: *Ufbx_Error) -> bool #foreign ufbx;
ufbx_open_file_ctx :: (stream: *Ufbx_Stream, ctx: Ufbx_Open_File_Context, path: *u8, path_len: u64, opts: *Ufbx_Open_File_Opts, error: *Ufbx_Error) -> bool #foreign ufbx;

// NOTE: Uses the default ufbx allocator!
ufbx_open_memory :: (stream: *Ufbx_Stream, data: *void, data_size: u64, opts: *Ufbx_Open_Memory_Opts, error: *Ufbx_Error) -> bool #foreign ufbx;
ufbx_open_memory_ctx :: (stream: *Ufbx_Stream, ctx: Ufbx_Open_File_Context, data: *void, data_size: u64, opts: *Ufbx_Open_Memory_Opts, error: *Ufbx_Error) -> bool #foreign ufbx;

// Evaluate a single animation `curve` at a `time`.
// Returns `default_value` only if `curve == NULL` or it has no keyframes.
ufbx_evaluate_curve :: (curve: *Ufbx_Anim_Curve, time: float64, default_value: Ufbx_Real) -> Ufbx_Real #foreign ufbx;
ufbx_evaluate_curve_flags :: (curve: *Ufbx_Anim_Curve, time: float64, default_value: Ufbx_Real, flags: u32) -> Ufbx_Real #foreign ufbx;

// Evaluate a value from bundled animation curves.
ufbx_evaluate_anim_value_real :: (anim_value: *Ufbx_Anim_Value, time: float64) -> Ufbx_Real #foreign ufbx;
ufbx_evaluate_anim_value_vec3 :: (anim_value: *Ufbx_Anim_Value, time: float64) -> ufbx_vec3 #foreign ufbx;
ufbx_evaluate_anim_value_real_flags :: (anim_value: *Ufbx_Anim_Value, time: float64, flags: u32) -> Ufbx_Real #foreign ufbx;
ufbx_evaluate_anim_value_vec3_flags :: (anim_value: *Ufbx_Anim_Value, time: float64, flags: u32) -> ufbx_vec3 #foreign ufbx;

// Evaluate an animated property `name` from `element` at `time`.
// NOTE: If the property is not found it will have the flag `UFBX_PROP_FLAG_NOT_FOUND`.
ufbx_evaluate_prop_len :: (anim: *Ufbx_Anim, element: *Ufbx_Element, name: *u8, name_len: u64, time: float64) -> Ufbx_Prop #foreign ufbx;
ufbx_evaluate_prop :: (anim: *Ufbx_Anim, element: *Ufbx_Element, name: *u8, time: float64) -> Ufbx_Prop #foreign ufbx;
ufbx_evaluate_prop_len_flags :: (anim: *Ufbx_Anim, element: *Ufbx_Element, name: *u8, name_len: u64, time: float64, flags: u32) -> Ufbx_Prop #foreign ufbx;
ufbx_evaluate_prop_flags :: (anim: *Ufbx_Anim, element: *Ufbx_Element, name: *u8, time: float64, flags: u32) -> Ufbx_Prop #foreign ufbx;

// Evaluate all _animated_ properties of `element`.
// HINT: This function returns an `ufbx_props` structure with the original properties as
// `ufbx_props.defaults`. This lets you use `ufbx_find_prop/value()` for the results.
ufbx_evaluate_props :: (anim: *Ufbx_Anim, element: *Ufbx_Element, time: float64, buffer: *Ufbx_Prop, buffer_size: u64) -> Ufbx_Props #foreign ufbx;
ufbx_evaluate_props_flags :: (anim: *Ufbx_Anim, element: *Ufbx_Element, time: float64, buffer: *Ufbx_Prop, buffer_size: u64, flags: u32) -> Ufbx_Props #foreign ufbx;

// Flags to control `ufbx_evaluate_transform_flags()`.
Ufbx_Transform_Flags :: enum s32 {
    FLAG_IGNORE_SCALE_HELPER        :: 1;

    FLAG_IGNORE_COMPONENTWISE_SCALE :: 2;

    FLAG_EXPLICIT_INCLUDES          :: 4;

    FLAG_INCLUDE_TRANSLATION        :: 16;

    FLAG_INCLUDE_ROTATION           :: 32;

    FLAG_INCLUDE_SCALE              :: 64;

    FLAG_NO_EXTRAPOLATION           :: 128;

    FLAGS_FORCE_32BIT               :: 2147483647;

    UFBX_TRANSFORM_FLAG_IGNORE_SCALE_HELPER        :: FLAG_IGNORE_SCALE_HELPER;

    UFBX_TRANSFORM_FLAG_IGNORE_COMPONENTWISE_SCALE :: FLAG_IGNORE_COMPONENTWISE_SCALE;

    UFBX_TRANSFORM_FLAG_EXPLICIT_INCLUDES          :: FLAG_EXPLICIT_INCLUDES;

    UFBX_TRANSFORM_FLAG_INCLUDE_TRANSLATION        :: FLAG_INCLUDE_TRANSLATION;

    UFBX_TRANSFORM_FLAG_INCLUDE_ROTATION           :: FLAG_INCLUDE_ROTATION;

    UFBX_TRANSFORM_FLAG_INCLUDE_SCALE              :: FLAG_INCLUDE_SCALE;

    UFBX_TRANSFORM_FLAG_NO_EXTRAPOLATION           :: FLAG_NO_EXTRAPOLATION;

    UFBX_TRANSFORM_FLAGS_FORCE_32BIT               :: FLAGS_FORCE_32BIT;
}

// Evaluate the animated transform of a node given a time.
// The returned transform is the local transform of the node (ie. relative to the parent),
// comparable to `ufbx_node.local_transform`.
ufbx_evaluate_transform :: (anim: *Ufbx_Anim, node: *Ufbx_Node, time: float64) -> Ufbx_Transform #foreign ufbx;
ufbx_evaluate_transform_flags :: (anim: *Ufbx_Anim, node: *Ufbx_Node, time: float64, flags: u32) -> Ufbx_Transform #foreign ufbx;

// Evaluate the blend shape weight of a blend channel.
// NOTE: Return value uses `1.0` for full weight, instead of `100.0` that the internal property `UFBX_Weight` uses.
ufbx_evaluate_blend_weight :: (anim: *Ufbx_Anim, channel: *Ufbx_Blend_Channel, time: float64) -> Ufbx_Real #foreign ufbx;
ufbx_evaluate_blend_weight_flags :: (anim: *Ufbx_Anim, channel: *Ufbx_Blend_Channel, time: float64, flags: u32) -> Ufbx_Real #foreign ufbx;

// Evaluate the whole `scene` at a specific `time` in the animation `anim`.
// The returned scene behaves as if it had been exported at a specific time
// in the specified animation, except that animated elements' properties contain
// only the animated values, the original ones are in `props->defaults`.
//
// NOTE: The returned scene refers to the original `scene` so the original
// scene cannot be freed until all evaluated scenes are freed.
ufbx_evaluate_scene :: (scene: *Ufbx_Scene, anim: *Ufbx_Anim, time: float64, opts: *Ufbx_Evaluate_Opts, error: *Ufbx_Error) -> *Ufbx_Scene #foreign ufbx;

// Create a custom animation descriptor.
// `ufbx_anim_opts` is used to specify animation layers and weights.
// HINT: You can also leave `ufbx_anim_opts.layer_ids[]` empty and only specify
// overrides to evaluate the scene with different properties or local transforms.
ufbx_create_anim :: (scene: *Ufbx_Scene, opts: *Ufbx_Anim_Opts, error: *Ufbx_Error) -> *Ufbx_Anim #foreign ufbx;

// Free an animation returned by `ufbx_create_anim()`.
ufbx_free_anim :: (anim: *Ufbx_Anim) -> void #foreign ufbx;

// Increase the animation reference count.
ufbx_retain_anim :: (anim: *Ufbx_Anim) -> void #foreign ufbx;

// "Bake" an animation to linearly interpolated keyframes.
// Composites the FBX transformation chain into quaternion rotations.
ufbx_bake_anim :: (scene: *Ufbx_Scene, anim: *Ufbx_Anim, opts: *Ufbx_Bake_Opts, error: *Ufbx_Error) -> *Ufbx_Baked_Anim #foreign ufbx;

ufbx_retain_baked_anim :: (bake: *Ufbx_Baked_Anim) -> void #foreign ufbx;
ufbx_free_baked_anim :: (bake: *Ufbx_Baked_Anim) -> void #foreign ufbx;

ufbx_find_baked_node_by_typed_id :: (bake: *Ufbx_Baked_Anim, typed_id: u32) -> *Ufbx_Baked_Node #foreign ufbx;
ufbx_find_baked_node :: (bake: *Ufbx_Baked_Anim, node: *Ufbx_Node) -> *Ufbx_Baked_Node #foreign ufbx;

ufbx_find_baked_element_by_element_id :: (bake: *Ufbx_Baked_Anim, element_id: u32) -> *Ufbx_Baked_Element #foreign ufbx;
ufbx_find_baked_element :: (bake: *Ufbx_Baked_Anim, element: *Ufbx_Element) -> *Ufbx_Baked_Element #foreign ufbx;

// Evaluate baked animation `keyframes` at `time`.
// Internally linearly interpolates between two adjacent keyframes.
// Handles stepped tangents cleanly, which is not strictly necessary for custom interpolation.
ufbx_evaluate_baked_vec3 :: (keyframes: Ufbx_Baked_Vec3_List, time: float64) -> ufbx_vec3 #foreign ufbx;

// Evaluate baked animation `keyframes` at `time`.
// Internally spherically interpolates (`ufbx_quat_slerp()`) between two adjacent keyframes.
// Handles stepped tangents cleanly, which is not strictly necessary for custom interpolation.
ufbx_evaluate_baked_quat :: (keyframes: Ufbx_Baked_Quat_List, time: float64) -> ufbx_quat #foreign ufbx;

// Retrieve the bone pose for `node`.
// Returns `NULL` if the pose does not contain `node`.
ufbx_get_bone_pose :: (pose: *Ufbx_Pose, node: *Ufbx_Node) -> *Ufbx_Bone_Pose #foreign ufbx;

// Find a texture for a given material FBX property.
ufbx_find_prop_texture_len :: (material: *Ufbx_Material, name: *u8, name_len: u64) -> *Ufbx_Texture #foreign ufbx;
ufbx_find_prop_texture :: (material: *Ufbx_Material, name: *u8) -> *Ufbx_Texture #foreign ufbx;

// Find a texture for a given shader property.
ufbx_find_shader_prop_len :: (shader: *Ufbx_Shader, name: *u8, name_len: u64) -> Ufbx_String #foreign ufbx;
ufbx_find_shader_prop :: (shader: *Ufbx_Shader, name: *u8) -> Ufbx_String #foreign ufbx;

// Map from a shader property to material property.
ufbx_find_shader_prop_bindings_len :: (shader: *Ufbx_Shader, name: *u8, name_len: u64) -> Ufbx_Shader_Prop_Binding_List #foreign ufbx;
ufbx_find_shader_prop_bindings :: (shader: *Ufbx_Shader, name: *u8) -> Ufbx_Shader_Prop_Binding_List #foreign ufbx;

// Find an input in a shader texture.
ufbx_find_shader_texture_input_len :: (shader: *Ufbx_Shader_Texture, name: *u8, name_len: u64) -> *Ufbx_Shader_Texture_Input #foreign ufbx;
ufbx_find_shader_texture_input :: (shader: *Ufbx_Shader_Texture, name: *u8) -> *Ufbx_Shader_Texture_Input #foreign ufbx;

// Returns `true` if `axes` forms a valid coordinate space.
ufbx_coordinate_axes_valid :: (axes: Ufbx_Coordinate_Axes) -> bool #foreign ufbx;

// Vector math utility functions.
ufbx_vec3_normalize :: (v: ufbx_vec3) -> ufbx_vec3 #foreign ufbx;

// Quaternion math utility functions.
ufbx_quat_dot :: (a: ufbx_quat, b: ufbx_quat) -> Ufbx_Real #foreign ufbx;
ufbx_quat_mul :: (a: ufbx_quat, b: ufbx_quat) -> ufbx_quat #foreign ufbx;
ufbx_quat_normalize :: (q: ufbx_quat) -> ufbx_quat #foreign ufbx;
ufbx_quat_fix_antipodal :: (q: ufbx_quat, reference: ufbx_quat) -> ufbx_quat #foreign ufbx;
ufbx_quat_slerp :: (a: ufbx_quat, b: ufbx_quat, t: Ufbx_Real) -> ufbx_quat #foreign ufbx;
ufbx_quat_rotate_vec3 :: (q: ufbx_quat, v: ufbx_vec3) -> ufbx_vec3 #foreign ufbx;
ufbx_quat_to_euler :: (q: ufbx_quat, order: Ufbx_Rotation_Order) -> ufbx_vec3 #foreign ufbx;
ufbx_euler_to_quat :: (v: ufbx_vec3, order: Ufbx_Rotation_Order) -> ufbx_quat #foreign ufbx;

// Matrix math utility functions.
ufbx_matrix_mul :: (a: *Ufbx_Matrix, b: *Ufbx_Matrix) -> Ufbx_Matrix #foreign ufbx;
ufbx_matrix_determinant :: (m: *Ufbx_Matrix) -> Ufbx_Real #foreign ufbx;
ufbx_matrix_invert :: (m: *Ufbx_Matrix) -> Ufbx_Matrix #foreign ufbx;

// Get a matrix that can be used to transform geometry normals.
// NOTE: You must normalize the normals after transforming them with this matrix,
// eg. using `ufbx_vec3_normalize()`.
// NOTE: This function flips the normals if the determinant is negative.
ufbx_matrix_for_normals :: (m: *Ufbx_Matrix) -> Ufbx_Matrix #foreign ufbx;

// Matrix transformation utilities.
ufbx_transform_position :: (m: *Ufbx_Matrix, v: ufbx_vec3) -> ufbx_vec3 #foreign ufbx;
ufbx_transform_direction :: (m: *Ufbx_Matrix, v: ufbx_vec3) -> ufbx_vec3 #foreign ufbx;

// Conversions between `ufbx_matrix` and `ufbx_transform`.
ufbx_transform_to_matrix :: (t: *Ufbx_Transform) -> Ufbx_Matrix #foreign ufbx;
ufbx_matrix_to_transform :: (m: *Ufbx_Matrix) -> Ufbx_Transform #foreign ufbx;

// Get a matrix representing the deformation for a single vertex.
// Returns `fallback` if the vertex is not skinned.
ufbx_catch_get_skin_vertex_matrix :: (panic: *Ufbx_Panic, skin: *Ufbx_Skin_Deformer, vertex: u64, fallback: *Ufbx_Matrix) -> Ufbx_Matrix #foreign ufbx;

// Resolve the index into `ufbx_blend_shape.position_offsets[]` given a vertex.
// Returns `UFBX_NO_INDEX` if the vertex is not included in the blend shape.
ufbx_get_blend_shape_offset_index :: (shape: *Ufbx_Blend_Shape, vertex: u64) -> u32 #foreign ufbx;

// Get the offset for a given vertex in the blend shape.
// Returns `ufbx_zero_vec3` if the vertex is not a included in the blend shape.
ufbx_get_blend_shape_vertex_offset :: (shape: *Ufbx_Blend_Shape, vertex: u64) -> ufbx_vec3 #foreign ufbx;

// Get the _current_ blend offset given a blend deformer.
// NOTE: This depends on the current animated blend weight of the deformer.
ufbx_get_blend_vertex_offset :: (blend: *Ufbx_Blend_Deformer, vertex: u64) -> ufbx_vec3 #foreign ufbx;

// Apply the blend shape with `weight` to given vertices.
ufbx_add_blend_shape_vertex_offsets :: (shape: *Ufbx_Blend_Shape, vertices: *ufbx_vec3, num_vertices: u64, weight: Ufbx_Real) -> void #foreign ufbx;

// Apply the blend deformer with `weight` to given vertices.
// NOTE: This depends on the current animated blend weight of the deformer.
ufbx_add_blend_vertex_offsets :: (blend: *Ufbx_Blend_Deformer, vertices: *ufbx_vec3, num_vertices: u64, weight: Ufbx_Real) -> void #foreign ufbx;

// Low-level utility to evaluate NURBS the basis functions.
ufbx_evaluate_nurbs_basis :: (basis: *Ufbx_Nurbs_Basis, u: Ufbx_Real, weights: *Ufbx_Real, num_weights: u64, derivatives: *Ufbx_Real, num_derivatives: u64) -> u64 #foreign ufbx;

// Evaluate a point on a NURBS curve given the parameter `u`.
ufbx_evaluate_nurbs_curve :: (curve: *Ufbx_Nurbs_Curve, u: Ufbx_Real) -> Ufbx_Curve_Point #foreign ufbx;

// Evaluate a point on a NURBS surface given the parameter `u` and `v`.
ufbx_evaluate_nurbs_surface :: (surface: *Ufbx_Nurbs_Surface, u: Ufbx_Real, v: Ufbx_Real) -> Ufbx_Surface_Point #foreign ufbx;

// Tessellate a NURBS curve into a polyline.
ufbx_tessellate_nurbs_curve :: (curve: *Ufbx_Nurbs_Curve, opts: *Ufbx_Tessellate_Curve_Opts, error: *Ufbx_Error) -> *Ufbx_Line_Curve #foreign ufbx;

// Tessellate a NURBS surface into a mesh.
ufbx_tessellate_nurbs_surface :: (surface: *Ufbx_Nurbs_Surface, opts: *Ufbx_Tessellate_Surface_Opts, error: *Ufbx_Error) -> *Ufbx_Mesh #foreign ufbx;

// Free a line returned by `ufbx_tessellate_nurbs_curve()`.
ufbx_free_line_curve :: (curve: *Ufbx_Line_Curve) -> void #foreign ufbx;

// Increase the refcount of the line.
ufbx_retain_line_curve :: (curve: *Ufbx_Line_Curve) -> void #foreign ufbx;

// Find the face that contains a given `index`.
// Returns `UFBX_NO_INDEX` if out of bounds.
ufbx_find_face_index :: (mesh: *Ufbx_Mesh, index: u64) -> u32 #foreign ufbx;

// Triangulate a mesh face, returning the number of triangles.
// NOTE: You need to space for `(face.num_indices - 2) * 3 - 1` indices!
// HINT: Using `ufbx_mesh.max_face_triangles * 3` is always safe.
ufbx_catch_triangulate_face :: (panic: *Ufbx_Panic, indices: *u32, num_indices: u64, mesh: *Ufbx_Mesh, face: Ufbx_Face) -> u32 #foreign ufbx;
ufbx_triangulate_face :: (indices: *u32, num_indices: u64, mesh: *Ufbx_Mesh, face: Ufbx_Face) -> u32 #foreign ufbx;

// Generate the half-edge representation of `mesh` to `topo[mesh->num_indices]`
ufbx_catch_compute_topology :: (panic: *Ufbx_Panic, mesh: *Ufbx_Mesh, topo: *Ufbx_Topo_Edge, num_topo: u64) -> void #foreign ufbx;
ufbx_compute_topology :: (mesh: *Ufbx_Mesh, topo: *Ufbx_Topo_Edge, num_topo: u64) -> void #foreign ufbx;

// Get the next half-edge in `topo`.
ufbx_catch_topo_next_vertex_edge :: (panic: *Ufbx_Panic, topo: *Ufbx_Topo_Edge, num_topo: u64, index: u32) -> u32 #foreign ufbx;
ufbx_topo_next_vertex_edge :: (topo: *Ufbx_Topo_Edge, num_topo: u64, index: u32) -> u32 #foreign ufbx;

// Get the previous half-edge in `topo`.
ufbx_catch_topo_prev_vertex_edge :: (panic: *Ufbx_Panic, topo: *Ufbx_Topo_Edge, num_topo: u64, index: u32) -> u32 #foreign ufbx;
ufbx_topo_prev_vertex_edge :: (topo: *Ufbx_Topo_Edge, num_topo: u64, index: u32) -> u32 #foreign ufbx;

// Calculate a normal for a given face.
// The returned normal is weighted by face area.
ufbx_catch_get_weighted_face_normal :: (panic: *Ufbx_Panic, positions: *Ufbx_Vertex_Vec3, face: Ufbx_Face) -> ufbx_vec3 #foreign ufbx;
ufbx_get_weighted_face_normal :: (positions: *Ufbx_Vertex_Vec3, face: Ufbx_Face) -> ufbx_vec3 #foreign ufbx;

// Generate indices for normals from the topology.
// Respects smoothing groups.
ufbx_catch_generate_normal_mapping :: (panic: *Ufbx_Panic, mesh: *Ufbx_Mesh, topo: *Ufbx_Topo_Edge, num_topo: u64, normal_indices: *u32, num_normal_indices: u64, assume_smooth: bool) -> u64 #foreign ufbx;

ufbx_generate_normal_mapping :: (mesh: *Ufbx_Mesh, topo: *Ufbx_Topo_Edge, num_topo: u64, normal_indices: *u32, num_normal_indices: u64, assume_smooth: bool) -> u64 #foreign ufbx;

// Compute normals given normal indices.
// You can use `ufbx_generate_normal_mapping()` to generate the normal indices.
ufbx_catch_compute_normals :: (panic: *Ufbx_Panic, mesh: *Ufbx_Mesh, positions: *Ufbx_Vertex_Vec3, normal_indices: *u32, num_normal_indices: u64, normals: *ufbx_vec3, num_normals: u64) -> void #foreign ufbx;

ufbx_compute_normals :: (mesh: *Ufbx_Mesh, positions: *Ufbx_Vertex_Vec3, normal_indices: *u32, num_normal_indices: u64, normals: *ufbx_vec3, num_normals: u64) -> void #foreign ufbx;

// Subdivide a mesh using the Catmull-Clark subdivision `level` times.
ufbx_subdivide_mesh :: (mesh: *Ufbx_Mesh, level: u64, opts: *Ufbx_Subdivide_Opts, error: *Ufbx_Error) -> *Ufbx_Mesh #foreign ufbx;

// Free a mesh returned from `ufbx_subdivide_mesh()` or `ufbx_tessellate_nurbs_surface()`.
ufbx_free_mesh :: (mesh: *Ufbx_Mesh) -> void #foreign ufbx;

// Increase the mesh reference count.
ufbx_retain_mesh :: (mesh: *Ufbx_Mesh) -> void #foreign ufbx;

// Load geometry cache information from a file.
// As geometry caches can be massive, this does not actually read the data, but
// only seeks through the files to form the metadata.
ufbx_load_geometry_cache :: (filename: *u8, opts: *Ufbx_Geometry_Cache_Opts, error: *Ufbx_Error) -> *Ufbx_Geometry_Cache #foreign ufbx;

ufbx_load_geometry_cache_len :: (filename: *u8, filename_len: u64, opts: *Ufbx_Geometry_Cache_Opts, error: *Ufbx_Error) -> *Ufbx_Geometry_Cache #foreign ufbx;

// Free a geometry cache returned from `ufbx_load_geometry_cache()`.
ufbx_free_geometry_cache :: (cache: *Ufbx_Geometry_Cache) -> void #foreign ufbx;

// Increase the geometry cache reference count.
ufbx_retain_geometry_cache :: (cache: *Ufbx_Geometry_Cache) -> void #foreign ufbx;

// Read a frame from a geometry cache.
ufbx_read_geometry_cache_real :: (frame: *Ufbx_Cache_Frame, data: *Ufbx_Real, num_data: u64, opts: *Ufbx_Geometry_Cache_Data_Opts) -> u64 #foreign ufbx;
ufbx_read_geometry_cache_vec3 :: (frame: *Ufbx_Cache_Frame, data: *ufbx_vec3, num_data: u64, opts: *Ufbx_Geometry_Cache_Data_Opts) -> u64 #foreign ufbx;

// Sample the a geometry cache channel, linearly blending between adjacent frames.
ufbx_sample_geometry_cache_real :: (channel: *Ufbx_Cache_Channel, time: float64, data: *Ufbx_Real, num_data: u64, opts: *Ufbx_Geometry_Cache_Data_Opts) -> u64 #foreign ufbx;
ufbx_sample_geometry_cache_vec3 :: (channel: *Ufbx_Cache_Channel, time: float64, data: *ufbx_vec3, num_data: u64, opts: *Ufbx_Geometry_Cache_Data_Opts) -> u64 #foreign ufbx;

// Find a DOM node given a name.
ufbx_dom_find_len :: (parent: *Ufbx_Dom_Node, name: *u8, name_len: u64) -> *Ufbx_Dom_Node #foreign ufbx;
ufbx_dom_find :: (parent: *Ufbx_Dom_Node, name: *u8) -> *Ufbx_Dom_Node #foreign ufbx;

// Generate an index buffer for a flat vertex buffer.
// `streams` specifies one or more vertex data arrays, each stream must contain `num_indices` vertices.
// This function compacts the data within `streams` in-place, writing the deduplicated indices to `indices`.
ufbx_generate_indices :: (streams: *Ufbx_Vertex_Stream, num_streams: u64, indices: *u32, num_indices: u64, allocator: *Ufbx_Allocator_Opts, error: *Ufbx_Error) -> u64 #foreign ufbx;

// Run a single thread pool task.
// See `ufbx_thread_pool_run_fn` for more information.
ufbx_thread_pool_run_task :: (ctx: Ufbx_Thread_Pool_Context, index: u32) -> void #foreign ufbx;

// Get or set an arbitrary user pointer for the thread pool context.
// `ufbx_thread_pool_get_user_ptr()` returns `NULL` if unset.
ufbx_thread_pool_set_user_ptr :: (ctx: Ufbx_Thread_Pool_Context, user_ptr: *void) -> void #foreign ufbx;
ufbx_thread_pool_get_user_ptr :: (ctx: Ufbx_Thread_Pool_Context) -> *void #foreign ufbx;

// Utility functions for reading geometry data for a single index.
ufbx_catch_get_vertex_real :: (panic: *Ufbx_Panic, v: *Ufbx_Vertex_Real, index: u64) -> Ufbx_Real #foreign ufbx;
ufbx_catch_get_vertex_vec2 :: (panic: *Ufbx_Panic, v: *Ufbx_Vertex_Vec2, index: u64) -> ufbx_vec2 #foreign ufbx;
ufbx_catch_get_vertex_vec3 :: (panic: *Ufbx_Panic, v: *Ufbx_Vertex_Vec3, index: u64) -> ufbx_vec3 #foreign ufbx;
ufbx_catch_get_vertex_vec4 :: (panic: *Ufbx_Panic, v: *Ufbx_Vertex_Vec4, index: u64) -> ufbx_vec4 #foreign ufbx;

ufbx_catch_get_vertex_w_vec3 :: (panic: *Ufbx_Panic, v: *Ufbx_Vertex_Vec3, index: u64) -> Ufbx_Real #foreign ufbx;

// Functions for converting an untyped `ufbx_element` to a concrete type.
// Returns `NULL` if the element is not that type.
ufbx_as_unknown :: (element: *Ufbx_Element) -> *Ufbx_Unknown #foreign ufbx;
ufbx_as_node :: (element: *Ufbx_Element) -> *Ufbx_Node #foreign ufbx;
ufbx_as_mesh :: (element: *Ufbx_Element) -> *Ufbx_Mesh #foreign ufbx;
ufbx_as_light :: (element: *Ufbx_Element) -> *Ufbx_Light #foreign ufbx;
ufbx_as_camera :: (element: *Ufbx_Element) -> *Ufbx_Camera #foreign ufbx;
ufbx_as_bone :: (element: *Ufbx_Element) -> *Ufbx_Bone #foreign ufbx;
ufbx_as_empty :: (element: *Ufbx_Element) -> *Ufbx_Empty #foreign ufbx;
ufbx_as_line_curve :: (element: *Ufbx_Element) -> *Ufbx_Line_Curve #foreign ufbx;
ufbx_as_nurbs_curve :: (element: *Ufbx_Element) -> *Ufbx_Nurbs_Curve #foreign ufbx;
ufbx_as_nurbs_surface :: (element: *Ufbx_Element) -> *Ufbx_Nurbs_Surface #foreign ufbx;
ufbx_as_nurbs_trim_surface :: (element: *Ufbx_Element) -> *Ufbx_Nurbs_Trim_Surface #foreign ufbx;
ufbx_as_nurbs_trim_boundary :: (element: *Ufbx_Element) -> *Ufbx_Nurbs_Trim_Boundary #foreign ufbx;
ufbx_as_procedural_geometry :: (element: *Ufbx_Element) -> *Ufbx_Procedural_Geometry #foreign ufbx;
ufbx_as_stereo_camera :: (element: *Ufbx_Element) -> *Ufbx_Stereo_Camera #foreign ufbx;
ufbx_as_camera_switcher :: (element: *Ufbx_Element) -> *Ufbx_Camera_Switcher #foreign ufbx;
ufbx_as_marker :: (element: *Ufbx_Element) -> *Ufbx_Marker #foreign ufbx;
ufbx_as_lod_group :: (element: *Ufbx_Element) -> *Ufbx_Lod_Group #foreign ufbx;
ufbx_as_skin_deformer :: (element: *Ufbx_Element) -> *Ufbx_Skin_Deformer #foreign ufbx;
ufbx_as_skin_cluster :: (element: *Ufbx_Element) -> *Ufbx_Skin_Cluster #foreign ufbx;
ufbx_as_blend_deformer :: (element: *Ufbx_Element) -> *Ufbx_Blend_Deformer #foreign ufbx;
ufbx_as_blend_channel :: (element: *Ufbx_Element) -> *Ufbx_Blend_Channel #foreign ufbx;
ufbx_as_blend_shape :: (element: *Ufbx_Element) -> *Ufbx_Blend_Shape #foreign ufbx;
ufbx_as_cache_deformer :: (element: *Ufbx_Element) -> *Ufbx_Cache_Deformer #foreign ufbx;
ufbx_as_cache_file :: (element: *Ufbx_Element) -> *Ufbx_Cache_File #foreign ufbx;
ufbx_as_material :: (element: *Ufbx_Element) -> *Ufbx_Material #foreign ufbx;
ufbx_as_texture :: (element: *Ufbx_Element) -> *Ufbx_Texture #foreign ufbx;
ufbx_as_video :: (element: *Ufbx_Element) -> *Ufbx_Video #foreign ufbx;
ufbx_as_shader :: (element: *Ufbx_Element) -> *Ufbx_Shader #foreign ufbx;
ufbx_as_shader_binding :: (element: *Ufbx_Element) -> *Ufbx_Shader_Binding #foreign ufbx;
ufbx_as_anim_stack :: (element: *Ufbx_Element) -> *Ufbx_Anim_Stack #foreign ufbx;
ufbx_as_anim_layer :: (element: *Ufbx_Element) -> *Ufbx_Anim_Layer #foreign ufbx;
ufbx_as_anim_value :: (element: *Ufbx_Element) -> *Ufbx_Anim_Value #foreign ufbx;
ufbx_as_anim_curve :: (element: *Ufbx_Element) -> *Ufbx_Anim_Curve #foreign ufbx;
ufbx_as_display_layer :: (element: *Ufbx_Element) -> *Ufbx_Display_Layer #foreign ufbx;
ufbx_as_selection_set :: (element: *Ufbx_Element) -> *Ufbx_Selection_Set #foreign ufbx;
ufbx_as_selection_node :: (element: *Ufbx_Element) -> *Ufbx_Selection_Node #foreign ufbx;
ufbx_as_character :: (element: *Ufbx_Element) -> *Ufbx_Character #foreign ufbx;
ufbx_as_constraint :: (element: *Ufbx_Element) -> *Ufbx_Constraint #foreign ufbx;
ufbx_as_audio_layer :: (element: *Ufbx_Element) -> *Ufbx_Audio_Layer #foreign ufbx;
ufbx_as_audio_clip :: (element: *Ufbx_Element) -> *Ufbx_Audio_Clip #foreign ufbx;
ufbx_as_pose :: (element: *Ufbx_Element) -> *Ufbx_Pose #foreign ufbx;
ufbx_as_metadata_object :: (element: *Ufbx_Element) -> *Ufbx_Metadata_Object #foreign ufbx;

#scope_file

#import "Basic"; // For assert

ufbx :: #library,no_dll "windows/ufbx";

#run {
    {
        info := type_info(Ufbx_String);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_String.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_String.data has unexpected size % instead of 8", it.type.runtime_size);
                case "length";
                    assert(it.offset_in_bytes == 8, "Ufbx_String.length has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_String.length has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_String) == 16, "Ufbx_String has size % instead of 16", size_of(Ufbx_String));
    }

    {
        info := type_info(Ufbx_Blob);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Blob.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blob.data has unexpected size % instead of 8", it.type.runtime_size);
                case "size";
                    assert(it.offset_in_bytes == 8, "Ufbx_Blob.size has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blob.size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blob) == 16, "Ufbx_Blob has size % instead of 16", size_of(Ufbx_Blob));
    }

    {
        info := type_info(Ufbx_Transform);
        for info.members {
            if it.name == {
                case "translation";
                    assert(it.offset_in_bytes == 0, "Ufbx_Transform.translation has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Transform.translation has unexpected size % instead of 12", it.type.runtime_size);
                case "rotation";
                    assert(it.offset_in_bytes == 12, "Ufbx_Transform.rotation has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Transform.rotation has unexpected size % instead of 16", it.type.runtime_size);
                case "scale";
                    assert(it.offset_in_bytes == 28, "Ufbx_Transform.scale has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Transform.scale has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Transform) == 40, "Ufbx_Transform has size % instead of 40", size_of(Ufbx_Transform));
    }

    assert(size_of(Ufbx_Matrix) == 48, "Ufbx_Matrix has size % instead of 48", size_of(Ufbx_Matrix));

    {
        info := type_info(Ufbx_Void_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Void_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Void_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Void_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Void_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Void_List) == 16, "Ufbx_Void_List has size % instead of 16", size_of(Ufbx_Void_List));
    }

    {
        info := type_info(Ufbx_Bool_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Bool_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bool_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Bool_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bool_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Bool_List) == 16, "Ufbx_Bool_List has size % instead of 16", size_of(Ufbx_Bool_List));
    }

    {
        info := type_info(Ufbx_Uint32_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Uint32_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Uint32_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Uint32_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Uint32_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Uint32_List) == 16, "Ufbx_Uint32_List has size % instead of 16", size_of(Ufbx_Uint32_List));
    }

    {
        info := type_info(Ufbx_Real_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Real_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Real_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Real_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Real_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Real_List) == 16, "Ufbx_Real_List has size % instead of 16", size_of(Ufbx_Real_List));
    }

    {
        info := type_info(Ufbx_Vec2_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vec2_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vec2_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vec2_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vec2_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vec2_List) == 16, "Ufbx_Vec2_List has size % instead of 16", size_of(Ufbx_Vec2_List));
    }

    {
        info := type_info(Ufbx_Vec3_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vec3_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vec3_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vec3_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vec3_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vec3_List) == 16, "Ufbx_Vec3_List has size % instead of 16", size_of(Ufbx_Vec3_List));
    }

    {
        info := type_info(Ufbx_Vec4_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vec4_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vec4_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vec4_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vec4_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vec4_List) == 16, "Ufbx_Vec4_List has size % instead of 16", size_of(Ufbx_Vec4_List));
    }

    {
        info := type_info(Ufbx_String_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_String_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_String_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_String_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_String_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_String_List) == 16, "Ufbx_String_List has size % instead of 16", size_of(Ufbx_String_List));
    }

    {
        info := type_info(Ufbx_Dom_Value);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 0, "Ufbx_Dom_Value.type has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Dom_Value.type has unexpected size % instead of 4", it.type.runtime_size);
                case "value_str";
                    assert(it.offset_in_bytes == 8, "Ufbx_Dom_Value.value_str has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Dom_Value.value_str has unexpected size % instead of 16", it.type.runtime_size);
                case "value_blob";
                    assert(it.offset_in_bytes == 24, "Ufbx_Dom_Value.value_blob has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Dom_Value.value_blob has unexpected size % instead of 16", it.type.runtime_size);
                case "value_int";
                    assert(it.offset_in_bytes == 40, "Ufbx_Dom_Value.value_int has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Dom_Value.value_int has unexpected size % instead of 8", it.type.runtime_size);
                case "value_float";
                    assert(it.offset_in_bytes == 48, "Ufbx_Dom_Value.value_float has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Dom_Value.value_float has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Dom_Value) == 56, "Ufbx_Dom_Value has size % instead of 56", size_of(Ufbx_Dom_Value));
    }

    {
        info := type_info(Ufbx_Dom_Node_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Dom_Node_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Dom_Node_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Dom_Node_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Dom_Node_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Dom_Node_List) == 16, "Ufbx_Dom_Node_List has size % instead of 16", size_of(Ufbx_Dom_Node_List));
    }

    {
        info := type_info(Ufbx_Dom_Value_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Dom_Value_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Dom_Value_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Dom_Value_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Dom_Value_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Dom_Value_List) == 16, "Ufbx_Dom_Value_List has size % instead of 16", size_of(Ufbx_Dom_Value_List));
    }

    {
        info := type_info(Ufbx_Dom_Node);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Dom_Node.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Dom_Node.name has unexpected size % instead of 16", it.type.runtime_size);
                case "children";
                    assert(it.offset_in_bytes == 16, "Ufbx_Dom_Node.children has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Dom_Node.children has unexpected size % instead of 16", it.type.runtime_size);
                case "values";
                    assert(it.offset_in_bytes == 32, "Ufbx_Dom_Node.values has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Dom_Node.values has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Dom_Node) == 48, "Ufbx_Dom_Node has size % instead of 48", size_of(Ufbx_Dom_Node));
    }

    {
        info := type_info(Ufbx_Prop);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Prop.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop.name has unexpected size % instead of 16", it.type.runtime_size);
                case "_internal_key";
                    assert(it.offset_in_bytes == 16, "Ufbx_Prop._internal_key has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Prop._internal_key has unexpected size % instead of 4", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 20, "Ufbx_Prop.type has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Prop.type has unexpected size % instead of 4", it.type.runtime_size);
                case "flags";
                    assert(it.offset_in_bytes == 24, "Ufbx_Prop.flags has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Prop.flags has unexpected size % instead of 4", it.type.runtime_size);
                case "value_str";
                    assert(it.offset_in_bytes == 32, "Ufbx_Prop.value_str has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop.value_str has unexpected size % instead of 16", it.type.runtime_size);
                case "value_blob";
                    assert(it.offset_in_bytes == 48, "Ufbx_Prop.value_blob has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop.value_blob has unexpected size % instead of 16", it.type.runtime_size);
                case "value_int";
                    assert(it.offset_in_bytes == 64, "Ufbx_Prop.value_int has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop.value_int has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Prop) == 88, "Ufbx_Prop has size % instead of 88", size_of(Ufbx_Prop));
    }

    {
        info := type_info(Ufbx_Prop_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Prop_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Prop_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Prop_List) == 16, "Ufbx_Prop_List has size % instead of 16", size_of(Ufbx_Prop_List));
    }

    {
        info := type_info(Ufbx_Props);
        for info.members {
            if it.name == {
                case "props";
                    assert(it.offset_in_bytes == 0, "Ufbx_Props.props has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Props.props has unexpected size % instead of 16", it.type.runtime_size);
                case "num_animated";
                    assert(it.offset_in_bytes == 16, "Ufbx_Props.num_animated has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Props.num_animated has unexpected size % instead of 8", it.type.runtime_size);
                case "defaults";
                    assert(it.offset_in_bytes == 24, "Ufbx_Props.defaults has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Props.defaults has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Props) == 32, "Ufbx_Props has size % instead of 32", size_of(Ufbx_Props));
    }

    {
        info := type_info(Ufbx_Element_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Element_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Element_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Element_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Element_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Element_List) == 16, "Ufbx_Element_List has size % instead of 16", size_of(Ufbx_Element_List));
    }

    {
        info := type_info(Ufbx_Unknown_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Unknown_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Unknown_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Unknown_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Unknown_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Unknown_List) == 16, "Ufbx_Unknown_List has size % instead of 16", size_of(Ufbx_Unknown_List));
    }

    {
        info := type_info(Ufbx_Node_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Node_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Node_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Node_List) == 16, "Ufbx_Node_List has size % instead of 16", size_of(Ufbx_Node_List));
    }

    {
        info := type_info(Ufbx_Mesh_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Mesh_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Mesh_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Mesh_List) == 16, "Ufbx_Mesh_List has size % instead of 16", size_of(Ufbx_Mesh_List));
    }

    {
        info := type_info(Ufbx_Light_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Light_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Light_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Light_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Light_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Light_List) == 16, "Ufbx_Light_List has size % instead of 16", size_of(Ufbx_Light_List));
    }

    {
        info := type_info(Ufbx_Camera_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Camera_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Camera_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Camera_List) == 16, "Ufbx_Camera_List has size % instead of 16", size_of(Ufbx_Camera_List));
    }

    {
        info := type_info(Ufbx_Bone_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Bone_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bone_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Bone_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bone_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Bone_List) == 16, "Ufbx_Bone_List has size % instead of 16", size_of(Ufbx_Bone_List));
    }

    {
        info := type_info(Ufbx_Empty_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Empty_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Empty_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Empty_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Empty_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Empty_List) == 16, "Ufbx_Empty_List has size % instead of 16", size_of(Ufbx_Empty_List));
    }

    {
        info := type_info(Ufbx_Line_Curve_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Line_Curve_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Line_Curve_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Line_Curve_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Line_Curve_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Line_Curve_List) == 16, "Ufbx_Line_Curve_List has size % instead of 16", size_of(Ufbx_Line_Curve_List));
    }

    {
        info := type_info(Ufbx_Nurbs_Curve_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Nurbs_Curve_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Curve_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Nurbs_Curve_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Curve_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Curve_List) == 16, "Ufbx_Nurbs_Curve_List has size % instead of 16", size_of(Ufbx_Nurbs_Curve_List));
    }

    {
        info := type_info(Ufbx_Nurbs_Surface_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Nurbs_Surface_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Surface_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Nurbs_Surface_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Surface_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Surface_List) == 16, "Ufbx_Nurbs_Surface_List has size % instead of 16", size_of(Ufbx_Nurbs_Surface_List));
    }

    {
        info := type_info(Ufbx_Nurbs_Trim_Surface_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Nurbs_Trim_Surface_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Trim_Surface_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Nurbs_Trim_Surface_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Trim_Surface_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Trim_Surface_List) == 16, "Ufbx_Nurbs_Trim_Surface_List has size % instead of 16", size_of(Ufbx_Nurbs_Trim_Surface_List));
    }

    {
        info := type_info(Ufbx_Nurbs_Trim_Boundary_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Nurbs_Trim_Boundary_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Trim_Boundary_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Nurbs_Trim_Boundary_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Trim_Boundary_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Trim_Boundary_List) == 16, "Ufbx_Nurbs_Trim_Boundary_List has size % instead of 16", size_of(Ufbx_Nurbs_Trim_Boundary_List));
    }

    {
        info := type_info(Ufbx_Procedural_Geometry_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Procedural_Geometry_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Procedural_Geometry_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Procedural_Geometry_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Procedural_Geometry_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Procedural_Geometry_List) == 16, "Ufbx_Procedural_Geometry_List has size % instead of 16", size_of(Ufbx_Procedural_Geometry_List));
    }

    {
        info := type_info(Ufbx_Stereo_Camera_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Stereo_Camera_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stereo_Camera_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Stereo_Camera_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stereo_Camera_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Stereo_Camera_List) == 16, "Ufbx_Stereo_Camera_List has size % instead of 16", size_of(Ufbx_Stereo_Camera_List));
    }

    {
        info := type_info(Ufbx_Camera_Switcher_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Camera_Switcher_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera_Switcher_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Camera_Switcher_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera_Switcher_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Camera_Switcher_List) == 16, "Ufbx_Camera_Switcher_List has size % instead of 16", size_of(Ufbx_Camera_Switcher_List));
    }

    {
        info := type_info(Ufbx_Marker_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Marker_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Marker_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Marker_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Marker_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Marker_List) == 16, "Ufbx_Marker_List has size % instead of 16", size_of(Ufbx_Marker_List));
    }

    {
        info := type_info(Ufbx_Lod_Group_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Lod_Group_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Lod_Group_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Lod_Group_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Lod_Group_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Lod_Group_List) == 16, "Ufbx_Lod_Group_List has size % instead of 16", size_of(Ufbx_Lod_Group_List));
    }

    {
        info := type_info(Ufbx_Skin_Deformer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Skin_Deformer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Deformer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Skin_Deformer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Deformer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Deformer_List) == 16, "Ufbx_Skin_Deformer_List has size % instead of 16", size_of(Ufbx_Skin_Deformer_List));
    }

    {
        info := type_info(Ufbx_Skin_Cluster_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Skin_Cluster_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Cluster_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Skin_Cluster_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Cluster_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Cluster_List) == 16, "Ufbx_Skin_Cluster_List has size % instead of 16", size_of(Ufbx_Skin_Cluster_List));
    }

    {
        info := type_info(Ufbx_Blend_Deformer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Blend_Deformer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Deformer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Blend_Deformer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Deformer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Deformer_List) == 16, "Ufbx_Blend_Deformer_List has size % instead of 16", size_of(Ufbx_Blend_Deformer_List));
    }

    {
        info := type_info(Ufbx_Blend_Channel_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Blend_Channel_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Channel_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Blend_Channel_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Channel_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Channel_List) == 16, "Ufbx_Blend_Channel_List has size % instead of 16", size_of(Ufbx_Blend_Channel_List));
    }

    {
        info := type_info(Ufbx_Blend_Shape_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Blend_Shape_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Shape_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Blend_Shape_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Shape_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Shape_List) == 16, "Ufbx_Blend_Shape_List has size % instead of 16", size_of(Ufbx_Blend_Shape_List));
    }

    {
        info := type_info(Ufbx_Cache_Deformer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Cache_Deformer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Deformer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Cache_Deformer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Deformer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_Deformer_List) == 16, "Ufbx_Cache_Deformer_List has size % instead of 16", size_of(Ufbx_Cache_Deformer_List));
    }

    {
        info := type_info(Ufbx_Cache_File_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Cache_File_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_File_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Cache_File_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_File_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_File_List) == 16, "Ufbx_Cache_File_List has size % instead of 16", size_of(Ufbx_Cache_File_List));
    }

    {
        info := type_info(Ufbx_Material_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Material_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Material_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Material_List) == 16, "Ufbx_Material_List has size % instead of 16", size_of(Ufbx_Material_List));
    }

    {
        info := type_info(Ufbx_Texture_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Texture_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Texture_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Texture_List) == 16, "Ufbx_Texture_List has size % instead of 16", size_of(Ufbx_Texture_List));
    }

    {
        info := type_info(Ufbx_Video_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Video_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Video_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Video_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Video_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Video_List) == 16, "Ufbx_Video_List has size % instead of 16", size_of(Ufbx_Video_List));
    }

    {
        info := type_info(Ufbx_Shader_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Shader_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_List) == 16, "Ufbx_Shader_List has size % instead of 16", size_of(Ufbx_Shader_List));
    }

    {
        info := type_info(Ufbx_Shader_Binding_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_Binding_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Binding_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Shader_Binding_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Binding_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Binding_List) == 16, "Ufbx_Shader_Binding_List has size % instead of 16", size_of(Ufbx_Shader_Binding_List));
    }

    {
        info := type_info(Ufbx_Anim_Stack_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Stack_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Stack_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Stack_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Stack_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Stack_List) == 16, "Ufbx_Anim_Stack_List has size % instead of 16", size_of(Ufbx_Anim_Stack_List));
    }

    {
        info := type_info(Ufbx_Anim_Layer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Layer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Layer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Layer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Layer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Layer_List) == 16, "Ufbx_Anim_Layer_List has size % instead of 16", size_of(Ufbx_Anim_Layer_List));
    }

    {
        info := type_info(Ufbx_Anim_Value_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Value_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Value_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Value_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Value_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Value_List) == 16, "Ufbx_Anim_Value_List has size % instead of 16", size_of(Ufbx_Anim_Value_List));
    }

    {
        info := type_info(Ufbx_Anim_Curve_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Curve_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Curve_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Curve_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Curve_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Curve_List) == 16, "Ufbx_Anim_Curve_List has size % instead of 16", size_of(Ufbx_Anim_Curve_List));
    }

    {
        info := type_info(Ufbx_Display_Layer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Display_Layer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Display_Layer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Display_Layer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Display_Layer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Display_Layer_List) == 16, "Ufbx_Display_Layer_List has size % instead of 16", size_of(Ufbx_Display_Layer_List));
    }

    {
        info := type_info(Ufbx_Selection_Set_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Selection_Set_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Selection_Set_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Selection_Set_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Selection_Set_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Selection_Set_List) == 16, "Ufbx_Selection_Set_List has size % instead of 16", size_of(Ufbx_Selection_Set_List));
    }

    {
        info := type_info(Ufbx_Selection_Node_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Selection_Node_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Selection_Node_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Selection_Node_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Selection_Node_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Selection_Node_List) == 16, "Ufbx_Selection_Node_List has size % instead of 16", size_of(Ufbx_Selection_Node_List));
    }

    {
        info := type_info(Ufbx_Character_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Character_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Character_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Character_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Character_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Character_List) == 16, "Ufbx_Character_List has size % instead of 16", size_of(Ufbx_Character_List));
    }

    {
        info := type_info(Ufbx_Constraint_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Constraint_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Constraint_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Constraint_List) == 16, "Ufbx_Constraint_List has size % instead of 16", size_of(Ufbx_Constraint_List));
    }

    {
        info := type_info(Ufbx_Audio_Layer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Audio_Layer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Audio_Layer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Audio_Layer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Audio_Layer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Audio_Layer_List) == 16, "Ufbx_Audio_Layer_List has size % instead of 16", size_of(Ufbx_Audio_Layer_List));
    }

    {
        info := type_info(Ufbx_Audio_Clip_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Audio_Clip_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Audio_Clip_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Audio_Clip_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Audio_Clip_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Audio_Clip_List) == 16, "Ufbx_Audio_Clip_List has size % instead of 16", size_of(Ufbx_Audio_Clip_List));
    }

    {
        info := type_info(Ufbx_Pose_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Pose_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Pose_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Pose_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Pose_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Pose_List) == 16, "Ufbx_Pose_List has size % instead of 16", size_of(Ufbx_Pose_List));
    }

    {
        info := type_info(Ufbx_Metadata_Object_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Metadata_Object_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata_Object_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Metadata_Object_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata_Object_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Metadata_Object_List) == 16, "Ufbx_Metadata_Object_List has size % instead of 16", size_of(Ufbx_Metadata_Object_List));
    }

    {
        info := type_info(Ufbx_Connection);
        for info.members {
            if it.name == {
                case "src";
                    assert(it.offset_in_bytes == 0, "Ufbx_Connection.src has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Connection.src has unexpected size % instead of 8", it.type.runtime_size);
                case "dst";
                    assert(it.offset_in_bytes == 8, "Ufbx_Connection.dst has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Connection.dst has unexpected size % instead of 8", it.type.runtime_size);
                case "src_prop";
                    assert(it.offset_in_bytes == 16, "Ufbx_Connection.src_prop has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Connection.src_prop has unexpected size % instead of 16", it.type.runtime_size);
                case "dst_prop";
                    assert(it.offset_in_bytes == 32, "Ufbx_Connection.dst_prop has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Connection.dst_prop has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Connection) == 48, "Ufbx_Connection has size % instead of 48", size_of(Ufbx_Connection));
    }

    {
        info := type_info(Ufbx_Connection_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Connection_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Connection_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Connection_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Connection_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Connection_List) == 16, "Ufbx_Connection_List has size % instead of 16", size_of(Ufbx_Connection_List));
    }

    {
        info := type_info(Ufbx_Element);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Element.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Element.name has unexpected size % instead of 16", it.type.runtime_size);
                case "props";
                    assert(it.offset_in_bytes == 16, "Ufbx_Element.props has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "Ufbx_Element.props has unexpected size % instead of 32", it.type.runtime_size);
                case "element_id";
                    assert(it.offset_in_bytes == 48, "Ufbx_Element.element_id has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Element.element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "typed_id";
                    assert(it.offset_in_bytes == 52, "Ufbx_Element.typed_id has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Element.typed_id has unexpected size % instead of 4", it.type.runtime_size);
                case "instances";
                    assert(it.offset_in_bytes == 56, "Ufbx_Element.instances has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Element.instances has unexpected size % instead of 16", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 72, "Ufbx_Element.type has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Element.type has unexpected size % instead of 4", it.type.runtime_size);
                case "connections_src";
                    assert(it.offset_in_bytes == 80, "Ufbx_Element.connections_src has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Element.connections_src has unexpected size % instead of 16", it.type.runtime_size);
                case "connections_dst";
                    assert(it.offset_in_bytes == 96, "Ufbx_Element.connections_dst has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Element.connections_dst has unexpected size % instead of 16", it.type.runtime_size);
                case "dom_node";
                    assert(it.offset_in_bytes == 112, "Ufbx_Element.dom_node has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Element.dom_node has unexpected size % instead of 8", it.type.runtime_size);
                case "scene";
                    assert(it.offset_in_bytes == 120, "Ufbx_Element.scene has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Element.scene has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Element) == 128, "Ufbx_Element has size % instead of 128", size_of(Ufbx_Element));
    }

    {
        info := type_info(Ufbx_Unknown);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 128, "Ufbx_Unknown.type has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Unknown.type has unexpected size % instead of 16", it.type.runtime_size);
                case "super_type";
                    assert(it.offset_in_bytes == 144, "Ufbx_Unknown.super_type has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Unknown.super_type has unexpected size % instead of 16", it.type.runtime_size);
                case "sub_type";
                    assert(it.offset_in_bytes == 160, "Ufbx_Unknown.sub_type has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Unknown.sub_type has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Unknown) == 176, "Ufbx_Unknown has size % instead of 176", size_of(Ufbx_Unknown));
    }

    {
        info := type_info(Ufbx_Node);
        for info.members {
            if it.name == {
                case "parent";
                    assert(it.offset_in_bytes == 128, "Ufbx_Node.parent has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.parent has unexpected size % instead of 8", it.type.runtime_size);
                case "children";
                    assert(it.offset_in_bytes == 136, "Ufbx_Node.children has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Node.children has unexpected size % instead of 16", it.type.runtime_size);
                case "mesh";
                    assert(it.offset_in_bytes == 152, "Ufbx_Node.mesh has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.mesh has unexpected size % instead of 8", it.type.runtime_size);
                case "light";
                    assert(it.offset_in_bytes == 160, "Ufbx_Node.light has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.light has unexpected size % instead of 8", it.type.runtime_size);
                case "camera";
                    assert(it.offset_in_bytes == 168, "Ufbx_Node.camera has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.camera has unexpected size % instead of 8", it.type.runtime_size);
                case "bone";
                    assert(it.offset_in_bytes == 176, "Ufbx_Node.bone has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.bone has unexpected size % instead of 8", it.type.runtime_size);
                case "attrib";
                    assert(it.offset_in_bytes == 184, "Ufbx_Node.attrib has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.attrib has unexpected size % instead of 8", it.type.runtime_size);
                case "geometry_transform_helper";
                    assert(it.offset_in_bytes == 192, "Ufbx_Node.geometry_transform_helper has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.geometry_transform_helper has unexpected size % instead of 8", it.type.runtime_size);
                case "scale_helper";
                    assert(it.offset_in_bytes == 200, "Ufbx_Node.scale_helper has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.scale_helper has unexpected size % instead of 8", it.type.runtime_size);
                case "attrib_type";
                    assert(it.offset_in_bytes == 208, "Ufbx_Node.attrib_type has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.attrib_type has unexpected size % instead of 4", it.type.runtime_size);
                case "all_attribs";
                    assert(it.offset_in_bytes == 216, "Ufbx_Node.all_attribs has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Node.all_attribs has unexpected size % instead of 16", it.type.runtime_size);
                case "inherit_mode";
                    assert(it.offset_in_bytes == 232, "Ufbx_Node.inherit_mode has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.inherit_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "original_inherit_mode";
                    assert(it.offset_in_bytes == 236, "Ufbx_Node.original_inherit_mode has unexpected offset % instead of 236", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.original_inherit_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "local_transform";
                    assert(it.offset_in_bytes == 240, "Ufbx_Node.local_transform has unexpected offset % instead of 240", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Node.local_transform has unexpected size % instead of 40", it.type.runtime_size);
                case "geometry_transform";
                    assert(it.offset_in_bytes == 280, "Ufbx_Node.geometry_transform has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Node.geometry_transform has unexpected size % instead of 40", it.type.runtime_size);
                case "inherit_scale";
                    assert(it.offset_in_bytes == 320, "Ufbx_Node.inherit_scale has unexpected offset % instead of 320", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Node.inherit_scale has unexpected size % instead of 12", it.type.runtime_size);
                case "inherit_scale_node";
                    assert(it.offset_in_bytes == 336, "Ufbx_Node.inherit_scale_node has unexpected offset % instead of 336", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.inherit_scale_node has unexpected size % instead of 8", it.type.runtime_size);
                case "rotation_order";
                    assert(it.offset_in_bytes == 344, "Ufbx_Node.rotation_order has unexpected offset % instead of 344", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.rotation_order has unexpected size % instead of 4", it.type.runtime_size);
                case "euler_rotation";
                    assert(it.offset_in_bytes == 348, "Ufbx_Node.euler_rotation has unexpected offset % instead of 348", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Node.euler_rotation has unexpected size % instead of 12", it.type.runtime_size);
                case "node_to_parent";
                    assert(it.offset_in_bytes == 360, "Ufbx_Node.node_to_parent has unexpected offset % instead of 360", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Node.node_to_parent has unexpected size % instead of 48", it.type.runtime_size);
                case "node_to_world";
                    assert(it.offset_in_bytes == 408, "Ufbx_Node.node_to_world has unexpected offset % instead of 408", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Node.node_to_world has unexpected size % instead of 48", it.type.runtime_size);
                case "geometry_to_node";
                    assert(it.offset_in_bytes == 456, "Ufbx_Node.geometry_to_node has unexpected offset % instead of 456", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Node.geometry_to_node has unexpected size % instead of 48", it.type.runtime_size);
                case "geometry_to_world";
                    assert(it.offset_in_bytes == 504, "Ufbx_Node.geometry_to_world has unexpected offset % instead of 504", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Node.geometry_to_world has unexpected size % instead of 48", it.type.runtime_size);
                case "unscaled_node_to_world";
                    assert(it.offset_in_bytes == 552, "Ufbx_Node.unscaled_node_to_world has unexpected offset % instead of 552", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Node.unscaled_node_to_world has unexpected size % instead of 48", it.type.runtime_size);
                case "adjust_pre_translation";
                    assert(it.offset_in_bytes == 600, "Ufbx_Node.adjust_pre_translation has unexpected offset % instead of 600", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Node.adjust_pre_translation has unexpected size % instead of 12", it.type.runtime_size);
                case "adjust_pre_rotation";
                    assert(it.offset_in_bytes == 612, "Ufbx_Node.adjust_pre_rotation has unexpected offset % instead of 612", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Node.adjust_pre_rotation has unexpected size % instead of 16", it.type.runtime_size);
                case "adjust_pre_scale";
                    assert(it.offset_in_bytes == 628, "Ufbx_Node.adjust_pre_scale has unexpected offset % instead of 628", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.adjust_pre_scale has unexpected size % instead of 4", it.type.runtime_size);
                case "adjust_post_rotation";
                    assert(it.offset_in_bytes == 632, "Ufbx_Node.adjust_post_rotation has unexpected offset % instead of 632", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Node.adjust_post_rotation has unexpected size % instead of 16", it.type.runtime_size);
                case "adjust_post_scale";
                    assert(it.offset_in_bytes == 648, "Ufbx_Node.adjust_post_scale has unexpected offset % instead of 648", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.adjust_post_scale has unexpected size % instead of 4", it.type.runtime_size);
                case "adjust_translation_scale";
                    assert(it.offset_in_bytes == 652, "Ufbx_Node.adjust_translation_scale has unexpected offset % instead of 652", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.adjust_translation_scale has unexpected size % instead of 4", it.type.runtime_size);
                case "adjust_mirror_axis";
                    assert(it.offset_in_bytes == 656, "Ufbx_Node.adjust_mirror_axis has unexpected offset % instead of 656", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.adjust_mirror_axis has unexpected size % instead of 4", it.type.runtime_size);
                case "materials";
                    assert(it.offset_in_bytes == 664, "Ufbx_Node.materials has unexpected offset % instead of 664", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Node.materials has unexpected size % instead of 16", it.type.runtime_size);
                case "bind_pose";
                    assert(it.offset_in_bytes == 680, "Ufbx_Node.bind_pose has unexpected offset % instead of 680", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Node.bind_pose has unexpected size % instead of 8", it.type.runtime_size);
                case "visible";
                    assert(it.offset_in_bytes == 688, "Ufbx_Node.visible has unexpected offset % instead of 688", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.visible has unexpected size % instead of 1", it.type.runtime_size);
                case "is_root";
                    assert(it.offset_in_bytes == 689, "Ufbx_Node.is_root has unexpected offset % instead of 689", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.is_root has unexpected size % instead of 1", it.type.runtime_size);
                case "has_geometry_transform";
                    assert(it.offset_in_bytes == 690, "Ufbx_Node.has_geometry_transform has unexpected offset % instead of 690", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.has_geometry_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "has_adjust_transform";
                    assert(it.offset_in_bytes == 691, "Ufbx_Node.has_adjust_transform has unexpected offset % instead of 691", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.has_adjust_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "has_root_adjust_transform";
                    assert(it.offset_in_bytes == 692, "Ufbx_Node.has_root_adjust_transform has unexpected offset % instead of 692", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.has_root_adjust_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "is_geometry_transform_helper";
                    assert(it.offset_in_bytes == 693, "Ufbx_Node.is_geometry_transform_helper has unexpected offset % instead of 693", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.is_geometry_transform_helper has unexpected size % instead of 1", it.type.runtime_size);
                case "is_scale_helper";
                    assert(it.offset_in_bytes == 694, "Ufbx_Node.is_scale_helper has unexpected offset % instead of 694", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.is_scale_helper has unexpected size % instead of 1", it.type.runtime_size);
                case "is_scale_compensate_parent";
                    assert(it.offset_in_bytes == 695, "Ufbx_Node.is_scale_compensate_parent has unexpected offset % instead of 695", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Node.is_scale_compensate_parent has unexpected size % instead of 1", it.type.runtime_size);
                case "node_depth";
                    assert(it.offset_in_bytes == 696, "Ufbx_Node.node_depth has unexpected offset % instead of 696", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Node.node_depth has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Node) == 704, "Ufbx_Node has size % instead of 704", size_of(Ufbx_Node));
    }

    {
        info := type_info(Ufbx_Vertex_Attrib);
        for info.members {
            if it.name == {
                case "exists";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vertex_Attrib.exists has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Attrib.exists has unexpected size % instead of 1", it.type.runtime_size);
                case "values";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vertex_Attrib.values has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Attrib.values has unexpected size % instead of 16", it.type.runtime_size);
                case "indices";
                    assert(it.offset_in_bytes == 24, "Ufbx_Vertex_Attrib.indices has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Attrib.indices has unexpected size % instead of 16", it.type.runtime_size);
                case "value_reals";
                    assert(it.offset_in_bytes == 40, "Ufbx_Vertex_Attrib.value_reals has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Attrib.value_reals has unexpected size % instead of 8", it.type.runtime_size);
                case "unique_per_vertex";
                    assert(it.offset_in_bytes == 48, "Ufbx_Vertex_Attrib.unique_per_vertex has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Attrib.unique_per_vertex has unexpected size % instead of 1", it.type.runtime_size);
                case "values_w";
                    assert(it.offset_in_bytes == 56, "Ufbx_Vertex_Attrib.values_w has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Attrib.values_w has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vertex_Attrib) == 72, "Ufbx_Vertex_Attrib has size % instead of 72", size_of(Ufbx_Vertex_Attrib));
    }

    {
        info := type_info(Ufbx_Vertex_Real);
        for info.members {
            if it.name == {
                case "exists";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vertex_Real.exists has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Real.exists has unexpected size % instead of 1", it.type.runtime_size);
                case "values";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vertex_Real.values has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Real.values has unexpected size % instead of 16", it.type.runtime_size);
                case "indices";
                    assert(it.offset_in_bytes == 24, "Ufbx_Vertex_Real.indices has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Real.indices has unexpected size % instead of 16", it.type.runtime_size);
                case "value_reals";
                    assert(it.offset_in_bytes == 40, "Ufbx_Vertex_Real.value_reals has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Real.value_reals has unexpected size % instead of 8", it.type.runtime_size);
                case "unique_per_vertex";
                    assert(it.offset_in_bytes == 48, "Ufbx_Vertex_Real.unique_per_vertex has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Real.unique_per_vertex has unexpected size % instead of 1", it.type.runtime_size);
                case "values_w";
                    assert(it.offset_in_bytes == 56, "Ufbx_Vertex_Real.values_w has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Real.values_w has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vertex_Real) == 72, "Ufbx_Vertex_Real has size % instead of 72", size_of(Ufbx_Vertex_Real));
    }

    {
        info := type_info(Ufbx_Vertex_Vec2);
        for info.members {
            if it.name == {
                case "exists";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vertex_Vec2.exists has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Vec2.exists has unexpected size % instead of 1", it.type.runtime_size);
                case "values";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vertex_Vec2.values has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec2.values has unexpected size % instead of 16", it.type.runtime_size);
                case "indices";
                    assert(it.offset_in_bytes == 24, "Ufbx_Vertex_Vec2.indices has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec2.indices has unexpected size % instead of 16", it.type.runtime_size);
                case "value_reals";
                    assert(it.offset_in_bytes == 40, "Ufbx_Vertex_Vec2.value_reals has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Vec2.value_reals has unexpected size % instead of 8", it.type.runtime_size);
                case "unique_per_vertex";
                    assert(it.offset_in_bytes == 48, "Ufbx_Vertex_Vec2.unique_per_vertex has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Vec2.unique_per_vertex has unexpected size % instead of 1", it.type.runtime_size);
                case "values_w";
                    assert(it.offset_in_bytes == 56, "Ufbx_Vertex_Vec2.values_w has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec2.values_w has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vertex_Vec2) == 72, "Ufbx_Vertex_Vec2 has size % instead of 72", size_of(Ufbx_Vertex_Vec2));
    }

    {
        info := type_info(Ufbx_Vertex_Vec3);
        for info.members {
            if it.name == {
                case "exists";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vertex_Vec3.exists has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Vec3.exists has unexpected size % instead of 1", it.type.runtime_size);
                case "values";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vertex_Vec3.values has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec3.values has unexpected size % instead of 16", it.type.runtime_size);
                case "indices";
                    assert(it.offset_in_bytes == 24, "Ufbx_Vertex_Vec3.indices has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec3.indices has unexpected size % instead of 16", it.type.runtime_size);
                case "value_reals";
                    assert(it.offset_in_bytes == 40, "Ufbx_Vertex_Vec3.value_reals has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Vec3.value_reals has unexpected size % instead of 8", it.type.runtime_size);
                case "unique_per_vertex";
                    assert(it.offset_in_bytes == 48, "Ufbx_Vertex_Vec3.unique_per_vertex has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Vec3.unique_per_vertex has unexpected size % instead of 1", it.type.runtime_size);
                case "values_w";
                    assert(it.offset_in_bytes == 56, "Ufbx_Vertex_Vec3.values_w has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec3.values_w has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vertex_Vec3) == 72, "Ufbx_Vertex_Vec3 has size % instead of 72", size_of(Ufbx_Vertex_Vec3));
    }

    {
        info := type_info(Ufbx_Vertex_Vec4);
        for info.members {
            if it.name == {
                case "exists";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vertex_Vec4.exists has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Vec4.exists has unexpected size % instead of 1", it.type.runtime_size);
                case "values";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vertex_Vec4.values has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec4.values has unexpected size % instead of 16", it.type.runtime_size);
                case "indices";
                    assert(it.offset_in_bytes == 24, "Ufbx_Vertex_Vec4.indices has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec4.indices has unexpected size % instead of 16", it.type.runtime_size);
                case "value_reals";
                    assert(it.offset_in_bytes == 40, "Ufbx_Vertex_Vec4.value_reals has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Vec4.value_reals has unexpected size % instead of 8", it.type.runtime_size);
                case "unique_per_vertex";
                    assert(it.offset_in_bytes == 48, "Ufbx_Vertex_Vec4.unique_per_vertex has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Vertex_Vec4.unique_per_vertex has unexpected size % instead of 1", it.type.runtime_size);
                case "values_w";
                    assert(it.offset_in_bytes == 56, "Ufbx_Vertex_Vec4.values_w has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Vertex_Vec4.values_w has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vertex_Vec4) == 72, "Ufbx_Vertex_Vec4 has size % instead of 72", size_of(Ufbx_Vertex_Vec4));
    }

    {
        info := type_info(Ufbx_Uv_Set);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Uv_Set.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Uv_Set.name has unexpected size % instead of 16", it.type.runtime_size);
                case "index";
                    assert(it.offset_in_bytes == 16, "Ufbx_Uv_Set.index has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Uv_Set.index has unexpected size % instead of 4", it.type.runtime_size);
                case "vertex_uv";
                    assert(it.offset_in_bytes == 24, "Ufbx_Uv_Set.vertex_uv has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Uv_Set.vertex_uv has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_tangent";
                    assert(it.offset_in_bytes == 96, "Ufbx_Uv_Set.vertex_tangent has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Uv_Set.vertex_tangent has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_bitangent";
                    assert(it.offset_in_bytes == 168, "Ufbx_Uv_Set.vertex_bitangent has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Uv_Set.vertex_bitangent has unexpected size % instead of 72", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Uv_Set) == 240, "Ufbx_Uv_Set has size % instead of 240", size_of(Ufbx_Uv_Set));
    }

    {
        info := type_info(Ufbx_Color_Set);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Color_Set.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Color_Set.name has unexpected size % instead of 16", it.type.runtime_size);
                case "index";
                    assert(it.offset_in_bytes == 16, "Ufbx_Color_Set.index has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Color_Set.index has unexpected size % instead of 4", it.type.runtime_size);
                case "vertex_color";
                    assert(it.offset_in_bytes == 24, "Ufbx_Color_Set.vertex_color has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Color_Set.vertex_color has unexpected size % instead of 72", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Color_Set) == 96, "Ufbx_Color_Set has size % instead of 96", size_of(Ufbx_Color_Set));
    }

    {
        info := type_info(Ufbx_Uv_Set_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Uv_Set_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Uv_Set_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Uv_Set_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Uv_Set_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Uv_Set_List) == 16, "Ufbx_Uv_Set_List has size % instead of 16", size_of(Ufbx_Uv_Set_List));
    }

    {
        info := type_info(Ufbx_Color_Set_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Color_Set_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Color_Set_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Color_Set_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Color_Set_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Color_Set_List) == 16, "Ufbx_Color_Set_List has size % instead of 16", size_of(Ufbx_Color_Set_List));
    }

    assert(size_of(Ufbx_Edge) == 8, "Ufbx_Edge has size % instead of 8", size_of(Ufbx_Edge));

    {
        info := type_info(Ufbx_Edge_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Edge_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Edge_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Edge_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Edge_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Edge_List) == 16, "Ufbx_Edge_List has size % instead of 16", size_of(Ufbx_Edge_List));
    }

    {
        info := type_info(Ufbx_Face);
        for info.members {
            if it.name == {
                case "index_begin";
                    assert(it.offset_in_bytes == 0, "Ufbx_Face.index_begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Face.index_begin has unexpected size % instead of 4", it.type.runtime_size);
                case "num_indices";
                    assert(it.offset_in_bytes == 4, "Ufbx_Face.num_indices has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Face.num_indices has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Face) == 8, "Ufbx_Face has size % instead of 8", size_of(Ufbx_Face));
    }

    {
        info := type_info(Ufbx_Face_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Face_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Face_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Face_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Face_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Face_List) == 16, "Ufbx_Face_List has size % instead of 16", size_of(Ufbx_Face_List));
    }

    {
        info := type_info(Ufbx_Mesh_Part);
        for info.members {
            if it.name == {
                case "index";
                    assert(it.offset_in_bytes == 0, "Ufbx_Mesh_Part.index has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Mesh_Part.index has unexpected size % instead of 4", it.type.runtime_size);
                case "num_faces";
                    assert(it.offset_in_bytes == 8, "Ufbx_Mesh_Part.num_faces has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part.num_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "num_triangles";
                    assert(it.offset_in_bytes == 16, "Ufbx_Mesh_Part.num_triangles has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part.num_triangles has unexpected size % instead of 8", it.type.runtime_size);
                case "num_empty_faces";
                    assert(it.offset_in_bytes == 24, "Ufbx_Mesh_Part.num_empty_faces has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part.num_empty_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "num_point_faces";
                    assert(it.offset_in_bytes == 32, "Ufbx_Mesh_Part.num_point_faces has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part.num_point_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "num_line_faces";
                    assert(it.offset_in_bytes == 40, "Ufbx_Mesh_Part.num_line_faces has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part.num_line_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "face_indices";
                    assert(it.offset_in_bytes == 48, "Ufbx_Mesh_Part.face_indices has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh_Part.face_indices has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Mesh_Part) == 64, "Ufbx_Mesh_Part has size % instead of 64", size_of(Ufbx_Mesh_Part));
    }

    {
        info := type_info(Ufbx_Mesh_Part_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Mesh_Part_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Mesh_Part_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh_Part_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Mesh_Part_List) == 16, "Ufbx_Mesh_Part_List has size % instead of 16", size_of(Ufbx_Mesh_Part_List));
    }

    {
        info := type_info(Ufbx_Face_Group);
        for info.members {
            if it.name == {
                case "id";
                    assert(it.offset_in_bytes == 0, "Ufbx_Face_Group.id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Face_Group.id has unexpected size % instead of 4", it.type.runtime_size);
                case "name";
                    assert(it.offset_in_bytes == 8, "Ufbx_Face_Group.name has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Face_Group.name has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Face_Group) == 24, "Ufbx_Face_Group has size % instead of 24", size_of(Ufbx_Face_Group));
    }

    {
        info := type_info(Ufbx_Face_Group_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Face_Group_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Face_Group_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Face_Group_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Face_Group_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Face_Group_List) == 16, "Ufbx_Face_Group_List has size % instead of 16", size_of(Ufbx_Face_Group_List));
    }

    {
        info := type_info(Ufbx_Subdivision_Weight_Range);
        for info.members {
            if it.name == {
                case "weight_begin";
                    assert(it.offset_in_bytes == 0, "Ufbx_Subdivision_Weight_Range.weight_begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivision_Weight_Range.weight_begin has unexpected size % instead of 4", it.type.runtime_size);
                case "num_weights";
                    assert(it.offset_in_bytes == 4, "Ufbx_Subdivision_Weight_Range.num_weights has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivision_Weight_Range.num_weights has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Subdivision_Weight_Range) == 8, "Ufbx_Subdivision_Weight_Range has size % instead of 8", size_of(Ufbx_Subdivision_Weight_Range));
    }

    {
        info := type_info(Ufbx_Subdivision_Weight_Range_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Subdivision_Weight_Range_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Weight_Range_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Subdivision_Weight_Range_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Weight_Range_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Subdivision_Weight_Range_List) == 16, "Ufbx_Subdivision_Weight_Range_List has size % instead of 16", size_of(Ufbx_Subdivision_Weight_Range_List));
    }

    {
        info := type_info(Ufbx_Subdivision_Weight);
        for info.members {
            if it.name == {
                case "weight";
                    assert(it.offset_in_bytes == 0, "Ufbx_Subdivision_Weight.weight has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivision_Weight.weight has unexpected size % instead of 4", it.type.runtime_size);
                case "index";
                    assert(it.offset_in_bytes == 4, "Ufbx_Subdivision_Weight.index has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivision_Weight.index has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Subdivision_Weight) == 8, "Ufbx_Subdivision_Weight has size % instead of 8", size_of(Ufbx_Subdivision_Weight));
    }

    {
        info := type_info(Ufbx_Subdivision_Weight_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Subdivision_Weight_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Weight_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Subdivision_Weight_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Weight_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Subdivision_Weight_List) == 16, "Ufbx_Subdivision_Weight_List has size % instead of 16", size_of(Ufbx_Subdivision_Weight_List));
    }

    {
        info := type_info(Ufbx_Subdivision_Result);
        for info.members {
            if it.name == {
                case "result_memory_used";
                    assert(it.offset_in_bytes == 0, "Ufbx_Subdivision_Result.result_memory_used has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Result.result_memory_used has unexpected size % instead of 8", it.type.runtime_size);
                case "temp_memory_used";
                    assert(it.offset_in_bytes == 8, "Ufbx_Subdivision_Result.temp_memory_used has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Result.temp_memory_used has unexpected size % instead of 8", it.type.runtime_size);
                case "result_allocs";
                    assert(it.offset_in_bytes == 16, "Ufbx_Subdivision_Result.result_allocs has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Result.result_allocs has unexpected size % instead of 8", it.type.runtime_size);
                case "temp_allocs";
                    assert(it.offset_in_bytes == 24, "Ufbx_Subdivision_Result.temp_allocs has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivision_Result.temp_allocs has unexpected size % instead of 8", it.type.runtime_size);
                case "source_vertex_ranges";
                    assert(it.offset_in_bytes == 32, "Ufbx_Subdivision_Result.source_vertex_ranges has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Subdivision_Result.source_vertex_ranges has unexpected size % instead of 16", it.type.runtime_size);
                case "source_vertex_weights";
                    assert(it.offset_in_bytes == 48, "Ufbx_Subdivision_Result.source_vertex_weights has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Subdivision_Result.source_vertex_weights has unexpected size % instead of 16", it.type.runtime_size);
                case "skin_cluster_ranges";
                    assert(it.offset_in_bytes == 64, "Ufbx_Subdivision_Result.skin_cluster_ranges has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Subdivision_Result.skin_cluster_ranges has unexpected size % instead of 16", it.type.runtime_size);
                case "skin_cluster_weights";
                    assert(it.offset_in_bytes == 80, "Ufbx_Subdivision_Result.skin_cluster_weights has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Subdivision_Result.skin_cluster_weights has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Subdivision_Result) == 96, "Ufbx_Subdivision_Result has size % instead of 96", size_of(Ufbx_Subdivision_Result));
    }

    {
        info := type_info(Ufbx_Mesh);
        for info.members {
            if it.name == {
                case "num_vertices";
                    assert(it.offset_in_bytes == 128, "Ufbx_Mesh.num_vertices has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_vertices has unexpected size % instead of 8", it.type.runtime_size);
                case "num_indices";
                    assert(it.offset_in_bytes == 136, "Ufbx_Mesh.num_indices has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_indices has unexpected size % instead of 8", it.type.runtime_size);
                case "num_faces";
                    assert(it.offset_in_bytes == 144, "Ufbx_Mesh.num_faces has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "num_triangles";
                    assert(it.offset_in_bytes == 152, "Ufbx_Mesh.num_triangles has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_triangles has unexpected size % instead of 8", it.type.runtime_size);
                case "num_edges";
                    assert(it.offset_in_bytes == 160, "Ufbx_Mesh.num_edges has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_edges has unexpected size % instead of 8", it.type.runtime_size);
                case "max_face_triangles";
                    assert(it.offset_in_bytes == 168, "Ufbx_Mesh.max_face_triangles has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.max_face_triangles has unexpected size % instead of 8", it.type.runtime_size);
                case "num_empty_faces";
                    assert(it.offset_in_bytes == 176, "Ufbx_Mesh.num_empty_faces has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_empty_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "num_point_faces";
                    assert(it.offset_in_bytes == 184, "Ufbx_Mesh.num_point_faces has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_point_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "num_line_faces";
                    assert(it.offset_in_bytes == 192, "Ufbx_Mesh.num_line_faces has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.num_line_faces has unexpected size % instead of 8", it.type.runtime_size);
                case "faces";
                    assert(it.offset_in_bytes == 200, "Ufbx_Mesh.faces has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.faces has unexpected size % instead of 16", it.type.runtime_size);
                case "face_smoothing";
                    assert(it.offset_in_bytes == 216, "Ufbx_Mesh.face_smoothing has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.face_smoothing has unexpected size % instead of 16", it.type.runtime_size);
                case "face_material";
                    assert(it.offset_in_bytes == 232, "Ufbx_Mesh.face_material has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.face_material has unexpected size % instead of 16", it.type.runtime_size);
                case "face_group";
                    assert(it.offset_in_bytes == 248, "Ufbx_Mesh.face_group has unexpected offset % instead of 248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.face_group has unexpected size % instead of 16", it.type.runtime_size);
                case "face_hole";
                    assert(it.offset_in_bytes == 264, "Ufbx_Mesh.face_hole has unexpected offset % instead of 264", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.face_hole has unexpected size % instead of 16", it.type.runtime_size);
                case "edges";
                    assert(it.offset_in_bytes == 280, "Ufbx_Mesh.edges has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.edges has unexpected size % instead of 16", it.type.runtime_size);
                case "edge_smoothing";
                    assert(it.offset_in_bytes == 296, "Ufbx_Mesh.edge_smoothing has unexpected offset % instead of 296", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.edge_smoothing has unexpected size % instead of 16", it.type.runtime_size);
                case "edge_crease";
                    assert(it.offset_in_bytes == 312, "Ufbx_Mesh.edge_crease has unexpected offset % instead of 312", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.edge_crease has unexpected size % instead of 16", it.type.runtime_size);
                case "edge_visibility";
                    assert(it.offset_in_bytes == 328, "Ufbx_Mesh.edge_visibility has unexpected offset % instead of 328", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.edge_visibility has unexpected size % instead of 16", it.type.runtime_size);
                case "vertex_indices";
                    assert(it.offset_in_bytes == 344, "Ufbx_Mesh.vertex_indices has unexpected offset % instead of 344", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.vertex_indices has unexpected size % instead of 16", it.type.runtime_size);
                case "vertices";
                    assert(it.offset_in_bytes == 360, "Ufbx_Mesh.vertices has unexpected offset % instead of 360", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.vertices has unexpected size % instead of 16", it.type.runtime_size);
                case "vertex_first_index";
                    assert(it.offset_in_bytes == 376, "Ufbx_Mesh.vertex_first_index has unexpected offset % instead of 376", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.vertex_first_index has unexpected size % instead of 16", it.type.runtime_size);
                case "vertex_position";
                    assert(it.offset_in_bytes == 392, "Ufbx_Mesh.vertex_position has unexpected offset % instead of 392", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_position has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_normal";
                    assert(it.offset_in_bytes == 464, "Ufbx_Mesh.vertex_normal has unexpected offset % instead of 464", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_normal has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_uv";
                    assert(it.offset_in_bytes == 536, "Ufbx_Mesh.vertex_uv has unexpected offset % instead of 536", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_uv has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_tangent";
                    assert(it.offset_in_bytes == 608, "Ufbx_Mesh.vertex_tangent has unexpected offset % instead of 608", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_tangent has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_bitangent";
                    assert(it.offset_in_bytes == 680, "Ufbx_Mesh.vertex_bitangent has unexpected offset % instead of 680", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_bitangent has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_color";
                    assert(it.offset_in_bytes == 752, "Ufbx_Mesh.vertex_color has unexpected offset % instead of 752", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_color has unexpected size % instead of 72", it.type.runtime_size);
                case "vertex_crease";
                    assert(it.offset_in_bytes == 824, "Ufbx_Mesh.vertex_crease has unexpected offset % instead of 824", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.vertex_crease has unexpected size % instead of 72", it.type.runtime_size);
                case "uv_sets";
                    assert(it.offset_in_bytes == 896, "Ufbx_Mesh.uv_sets has unexpected offset % instead of 896", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.uv_sets has unexpected size % instead of 16", it.type.runtime_size);
                case "color_sets";
                    assert(it.offset_in_bytes == 912, "Ufbx_Mesh.color_sets has unexpected offset % instead of 912", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.color_sets has unexpected size % instead of 16", it.type.runtime_size);
                case "materials";
                    assert(it.offset_in_bytes == 928, "Ufbx_Mesh.materials has unexpected offset % instead of 928", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.materials has unexpected size % instead of 16", it.type.runtime_size);
                case "face_groups";
                    assert(it.offset_in_bytes == 944, "Ufbx_Mesh.face_groups has unexpected offset % instead of 944", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.face_groups has unexpected size % instead of 16", it.type.runtime_size);
                case "material_parts";
                    assert(it.offset_in_bytes == 960, "Ufbx_Mesh.material_parts has unexpected offset % instead of 960", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.material_parts has unexpected size % instead of 16", it.type.runtime_size);
                case "face_group_parts";
                    assert(it.offset_in_bytes == 976, "Ufbx_Mesh.face_group_parts has unexpected offset % instead of 976", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.face_group_parts has unexpected size % instead of 16", it.type.runtime_size);
                case "material_part_usage_order";
                    assert(it.offset_in_bytes == 992, "Ufbx_Mesh.material_part_usage_order has unexpected offset % instead of 992", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.material_part_usage_order has unexpected size % instead of 16", it.type.runtime_size);
                case "skinned_is_local";
                    assert(it.offset_in_bytes == 1008, "Ufbx_Mesh.skinned_is_local has unexpected offset % instead of 1008", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Mesh.skinned_is_local has unexpected size % instead of 1", it.type.runtime_size);
                case "skinned_position";
                    assert(it.offset_in_bytes == 1016, "Ufbx_Mesh.skinned_position has unexpected offset % instead of 1016", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.skinned_position has unexpected size % instead of 72", it.type.runtime_size);
                case "skinned_normal";
                    assert(it.offset_in_bytes == 1088, "Ufbx_Mesh.skinned_normal has unexpected offset % instead of 1088", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Mesh.skinned_normal has unexpected size % instead of 72", it.type.runtime_size);
                case "skin_deformers";
                    assert(it.offset_in_bytes == 1160, "Ufbx_Mesh.skin_deformers has unexpected offset % instead of 1160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.skin_deformers has unexpected size % instead of 16", it.type.runtime_size);
                case "blend_deformers";
                    assert(it.offset_in_bytes == 1176, "Ufbx_Mesh.blend_deformers has unexpected offset % instead of 1176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.blend_deformers has unexpected size % instead of 16", it.type.runtime_size);
                case "cache_deformers";
                    assert(it.offset_in_bytes == 1192, "Ufbx_Mesh.cache_deformers has unexpected offset % instead of 1192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.cache_deformers has unexpected size % instead of 16", it.type.runtime_size);
                case "all_deformers";
                    assert(it.offset_in_bytes == 1208, "Ufbx_Mesh.all_deformers has unexpected offset % instead of 1208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Mesh.all_deformers has unexpected size % instead of 16", it.type.runtime_size);
                case "subdivision_preview_levels";
                    assert(it.offset_in_bytes == 1224, "Ufbx_Mesh.subdivision_preview_levels has unexpected offset % instead of 1224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Mesh.subdivision_preview_levels has unexpected size % instead of 4", it.type.runtime_size);
                case "subdivision_render_levels";
                    assert(it.offset_in_bytes == 1228, "Ufbx_Mesh.subdivision_render_levels has unexpected offset % instead of 1228", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Mesh.subdivision_render_levels has unexpected size % instead of 4", it.type.runtime_size);
                case "subdivision_display_mode";
                    assert(it.offset_in_bytes == 1232, "Ufbx_Mesh.subdivision_display_mode has unexpected offset % instead of 1232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Mesh.subdivision_display_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "subdivision_boundary";
                    assert(it.offset_in_bytes == 1236, "Ufbx_Mesh.subdivision_boundary has unexpected offset % instead of 1236", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Mesh.subdivision_boundary has unexpected size % instead of 4", it.type.runtime_size);
                case "subdivision_uv_boundary";
                    assert(it.offset_in_bytes == 1240, "Ufbx_Mesh.subdivision_uv_boundary has unexpected offset % instead of 1240", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Mesh.subdivision_uv_boundary has unexpected size % instead of 4", it.type.runtime_size);
                case "reversed_winding";
                    assert(it.offset_in_bytes == 1244, "Ufbx_Mesh.reversed_winding has unexpected offset % instead of 1244", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Mesh.reversed_winding has unexpected size % instead of 1", it.type.runtime_size);
                case "generated_normals";
                    assert(it.offset_in_bytes == 1245, "Ufbx_Mesh.generated_normals has unexpected offset % instead of 1245", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Mesh.generated_normals has unexpected size % instead of 1", it.type.runtime_size);
                case "subdivision_evaluated";
                    assert(it.offset_in_bytes == 1246, "Ufbx_Mesh.subdivision_evaluated has unexpected offset % instead of 1246", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Mesh.subdivision_evaluated has unexpected size % instead of 1", it.type.runtime_size);
                case "subdivision_result";
                    assert(it.offset_in_bytes == 1248, "Ufbx_Mesh.subdivision_result has unexpected offset % instead of 1248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Mesh.subdivision_result has unexpected size % instead of 8", it.type.runtime_size);
                case "from_tessellated_nurbs";
                    assert(it.offset_in_bytes == 1256, "Ufbx_Mesh.from_tessellated_nurbs has unexpected offset % instead of 1256", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Mesh.from_tessellated_nurbs has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Mesh) == 1264, "Ufbx_Mesh has size % instead of 1264", size_of(Ufbx_Mesh));
    }

    {
        info := type_info(Ufbx_Light);
        for info.members {
            if it.name == {
                case "color";
                    assert(it.offset_in_bytes == 128, "Ufbx_Light.color has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Light.color has unexpected size % instead of 12", it.type.runtime_size);
                case "intensity";
                    assert(it.offset_in_bytes == 140, "Ufbx_Light.intensity has unexpected offset % instead of 140", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Light.intensity has unexpected size % instead of 4", it.type.runtime_size);
                case "local_direction";
                    assert(it.offset_in_bytes == 144, "Ufbx_Light.local_direction has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Light.local_direction has unexpected size % instead of 12", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 156, "Ufbx_Light.type has unexpected offset % instead of 156", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Light.type has unexpected size % instead of 4", it.type.runtime_size);
                case "decay";
                    assert(it.offset_in_bytes == 160, "Ufbx_Light.decay has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Light.decay has unexpected size % instead of 4", it.type.runtime_size);
                case "area_shape";
                    assert(it.offset_in_bytes == 164, "Ufbx_Light.area_shape has unexpected offset % instead of 164", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Light.area_shape has unexpected size % instead of 4", it.type.runtime_size);
                case "inner_angle";
                    assert(it.offset_in_bytes == 168, "Ufbx_Light.inner_angle has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Light.inner_angle has unexpected size % instead of 4", it.type.runtime_size);
                case "outer_angle";
                    assert(it.offset_in_bytes == 172, "Ufbx_Light.outer_angle has unexpected offset % instead of 172", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Light.outer_angle has unexpected size % instead of 4", it.type.runtime_size);
                case "cast_light";
                    assert(it.offset_in_bytes == 176, "Ufbx_Light.cast_light has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Light.cast_light has unexpected size % instead of 1", it.type.runtime_size);
                case "cast_shadows";
                    assert(it.offset_in_bytes == 177, "Ufbx_Light.cast_shadows has unexpected offset % instead of 177", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Light.cast_shadows has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Light) == 184, "Ufbx_Light has size % instead of 184", size_of(Ufbx_Light));
    }

    {
        info := type_info(Ufbx_Coordinate_Axes);
        for info.members {
            if it.name == {
                case "right";
                    assert(it.offset_in_bytes == 0, "Ufbx_Coordinate_Axes.right has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Coordinate_Axes.right has unexpected size % instead of 4", it.type.runtime_size);
                case "up";
                    assert(it.offset_in_bytes == 4, "Ufbx_Coordinate_Axes.up has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Coordinate_Axes.up has unexpected size % instead of 4", it.type.runtime_size);
                case "front";
                    assert(it.offset_in_bytes == 8, "Ufbx_Coordinate_Axes.front has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Coordinate_Axes.front has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Coordinate_Axes) == 12, "Ufbx_Coordinate_Axes has size % instead of 12", size_of(Ufbx_Coordinate_Axes));
    }

    {
        info := type_info(Ufbx_Camera);
        for info.members {
            if it.name == {
                case "projection_mode";
                    assert(it.offset_in_bytes == 128, "Ufbx_Camera.projection_mode has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.projection_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "resolution_is_pixels";
                    assert(it.offset_in_bytes == 132, "Ufbx_Camera.resolution_is_pixels has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Camera.resolution_is_pixels has unexpected size % instead of 1", it.type.runtime_size);
                case "resolution";
                    assert(it.offset_in_bytes == 136, "Ufbx_Camera.resolution has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.resolution has unexpected size % instead of 8", it.type.runtime_size);
                case "field_of_view_deg";
                    assert(it.offset_in_bytes == 144, "Ufbx_Camera.field_of_view_deg has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.field_of_view_deg has unexpected size % instead of 8", it.type.runtime_size);
                case "field_of_view_tan";
                    assert(it.offset_in_bytes == 152, "Ufbx_Camera.field_of_view_tan has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.field_of_view_tan has unexpected size % instead of 8", it.type.runtime_size);
                case "orthographic_extent";
                    assert(it.offset_in_bytes == 160, "Ufbx_Camera.orthographic_extent has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.orthographic_extent has unexpected size % instead of 4", it.type.runtime_size);
                case "orthographic_size";
                    assert(it.offset_in_bytes == 164, "Ufbx_Camera.orthographic_size has unexpected offset % instead of 164", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.orthographic_size has unexpected size % instead of 8", it.type.runtime_size);
                case "projection_plane";
                    assert(it.offset_in_bytes == 172, "Ufbx_Camera.projection_plane has unexpected offset % instead of 172", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.projection_plane has unexpected size % instead of 8", it.type.runtime_size);
                case "aspect_ratio";
                    assert(it.offset_in_bytes == 180, "Ufbx_Camera.aspect_ratio has unexpected offset % instead of 180", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.aspect_ratio has unexpected size % instead of 4", it.type.runtime_size);
                case "near_plane";
                    assert(it.offset_in_bytes == 184, "Ufbx_Camera.near_plane has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.near_plane has unexpected size % instead of 4", it.type.runtime_size);
                case "far_plane";
                    assert(it.offset_in_bytes == 188, "Ufbx_Camera.far_plane has unexpected offset % instead of 188", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.far_plane has unexpected size % instead of 4", it.type.runtime_size);
                case "projection_axes";
                    assert(it.offset_in_bytes == 192, "Ufbx_Camera.projection_axes has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Camera.projection_axes has unexpected size % instead of 12", it.type.runtime_size);
                case "aspect_mode";
                    assert(it.offset_in_bytes == 204, "Ufbx_Camera.aspect_mode has unexpected offset % instead of 204", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.aspect_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "aperture_mode";
                    assert(it.offset_in_bytes == 208, "Ufbx_Camera.aperture_mode has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.aperture_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "gate_fit";
                    assert(it.offset_in_bytes == 212, "Ufbx_Camera.gate_fit has unexpected offset % instead of 212", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.gate_fit has unexpected size % instead of 4", it.type.runtime_size);
                case "aperture_format";
                    assert(it.offset_in_bytes == 216, "Ufbx_Camera.aperture_format has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.aperture_format has unexpected size % instead of 4", it.type.runtime_size);
                case "focal_length_mm";
                    assert(it.offset_in_bytes == 220, "Ufbx_Camera.focal_length_mm has unexpected offset % instead of 220", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.focal_length_mm has unexpected size % instead of 4", it.type.runtime_size);
                case "film_size_inch";
                    assert(it.offset_in_bytes == 224, "Ufbx_Camera.film_size_inch has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.film_size_inch has unexpected size % instead of 8", it.type.runtime_size);
                case "aperture_size_inch";
                    assert(it.offset_in_bytes == 232, "Ufbx_Camera.aperture_size_inch has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Camera.aperture_size_inch has unexpected size % instead of 8", it.type.runtime_size);
                case "squeeze_ratio";
                    assert(it.offset_in_bytes == 240, "Ufbx_Camera.squeeze_ratio has unexpected offset % instead of 240", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Camera.squeeze_ratio has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Camera) == 248, "Ufbx_Camera has size % instead of 248", size_of(Ufbx_Camera));
    }

    {
        info := type_info(Ufbx_Bone);
        for info.members {
            if it.name == {
                case "radius";
                    assert(it.offset_in_bytes == 128, "Ufbx_Bone.radius has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Bone.radius has unexpected size % instead of 4", it.type.runtime_size);
                case "relative_length";
                    assert(it.offset_in_bytes == 132, "Ufbx_Bone.relative_length has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Bone.relative_length has unexpected size % instead of 4", it.type.runtime_size);
                case "is_root";
                    assert(it.offset_in_bytes == 136, "Ufbx_Bone.is_root has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bone.is_root has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Bone) == 144, "Ufbx_Bone has size % instead of 144", size_of(Ufbx_Bone));
    }

    assert(size_of(Ufbx_Empty) == 128, "Ufbx_Empty has size % instead of 128", size_of(Ufbx_Empty));

    {
        info := type_info(Ufbx_Line_Segment);
        for info.members {
            if it.name == {
                case "index_begin";
                    assert(it.offset_in_bytes == 0, "Ufbx_Line_Segment.index_begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Line_Segment.index_begin has unexpected size % instead of 4", it.type.runtime_size);
                case "num_indices";
                    assert(it.offset_in_bytes == 4, "Ufbx_Line_Segment.num_indices has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Line_Segment.num_indices has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Line_Segment) == 8, "Ufbx_Line_Segment has size % instead of 8", size_of(Ufbx_Line_Segment));
    }

    {
        info := type_info(Ufbx_Line_Segment_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Line_Segment_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Line_Segment_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Line_Segment_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Line_Segment_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Line_Segment_List) == 16, "Ufbx_Line_Segment_List has size % instead of 16", size_of(Ufbx_Line_Segment_List));
    }

    {
        info := type_info(Ufbx_Line_Curve);
        for info.members {
            if it.name == {
                case "color";
                    assert(it.offset_in_bytes == 128, "Ufbx_Line_Curve.color has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Line_Curve.color has unexpected size % instead of 12", it.type.runtime_size);
                case "control_points";
                    assert(it.offset_in_bytes == 144, "Ufbx_Line_Curve.control_points has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Line_Curve.control_points has unexpected size % instead of 16", it.type.runtime_size);
                case "point_indices";
                    assert(it.offset_in_bytes == 160, "Ufbx_Line_Curve.point_indices has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Line_Curve.point_indices has unexpected size % instead of 16", it.type.runtime_size);
                case "segments";
                    assert(it.offset_in_bytes == 176, "Ufbx_Line_Curve.segments has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Line_Curve.segments has unexpected size % instead of 16", it.type.runtime_size);
                case "from_tessellated_nurbs";
                    assert(it.offset_in_bytes == 192, "Ufbx_Line_Curve.from_tessellated_nurbs has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Line_Curve.from_tessellated_nurbs has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Line_Curve) == 200, "Ufbx_Line_Curve has size % instead of 200", size_of(Ufbx_Line_Curve));
    }

    {
        info := type_info(Ufbx_Nurbs_Basis);
        for info.members {
            if it.name == {
                case "order";
                    assert(it.offset_in_bytes == 0, "Ufbx_Nurbs_Basis.order has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Nurbs_Basis.order has unexpected size % instead of 4", it.type.runtime_size);
                case "topology";
                    assert(it.offset_in_bytes == 4, "Ufbx_Nurbs_Basis.topology has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Nurbs_Basis.topology has unexpected size % instead of 4", it.type.runtime_size);
                case "knot_vector";
                    assert(it.offset_in_bytes == 8, "Ufbx_Nurbs_Basis.knot_vector has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Nurbs_Basis.knot_vector has unexpected size % instead of 16", it.type.runtime_size);
                case "t_min";
                    assert(it.offset_in_bytes == 24, "Ufbx_Nurbs_Basis.t_min has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Nurbs_Basis.t_min has unexpected size % instead of 4", it.type.runtime_size);
                case "t_max";
                    assert(it.offset_in_bytes == 28, "Ufbx_Nurbs_Basis.t_max has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Nurbs_Basis.t_max has unexpected size % instead of 4", it.type.runtime_size);
                case "spans";
                    assert(it.offset_in_bytes == 32, "Ufbx_Nurbs_Basis.spans has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Nurbs_Basis.spans has unexpected size % instead of 16", it.type.runtime_size);
                case "is_2d";
                    assert(it.offset_in_bytes == 48, "Ufbx_Nurbs_Basis.is_2d has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Nurbs_Basis.is_2d has unexpected size % instead of 1", it.type.runtime_size);
                case "num_wrap_control_points";
                    assert(it.offset_in_bytes == 56, "Ufbx_Nurbs_Basis.num_wrap_control_points has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Basis.num_wrap_control_points has unexpected size % instead of 8", it.type.runtime_size);
                case "valid";
                    assert(it.offset_in_bytes == 64, "Ufbx_Nurbs_Basis.valid has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Nurbs_Basis.valid has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Basis) == 72, "Ufbx_Nurbs_Basis has size % instead of 72", size_of(Ufbx_Nurbs_Basis));
    }

    {
        info := type_info(Ufbx_Nurbs_Curve);
        for info.members {
            if it.name == {
                case "basis";
                    assert(it.offset_in_bytes == 128, "Ufbx_Nurbs_Curve.basis has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Nurbs_Curve.basis has unexpected size % instead of 72", it.type.runtime_size);
                case "control_points";
                    assert(it.offset_in_bytes == 200, "Ufbx_Nurbs_Curve.control_points has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Nurbs_Curve.control_points has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Curve) == 216, "Ufbx_Nurbs_Curve has size % instead of 216", size_of(Ufbx_Nurbs_Curve));
    }

    {
        info := type_info(Ufbx_Nurbs_Surface);
        for info.members {
            if it.name == {
                case "basis_u";
                    assert(it.offset_in_bytes == 128, "Ufbx_Nurbs_Surface.basis_u has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Nurbs_Surface.basis_u has unexpected size % instead of 72", it.type.runtime_size);
                case "basis_v";
                    assert(it.offset_in_bytes == 200, "Ufbx_Nurbs_Surface.basis_v has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Nurbs_Surface.basis_v has unexpected size % instead of 72", it.type.runtime_size);
                case "num_control_points_u";
                    assert(it.offset_in_bytes == 272, "Ufbx_Nurbs_Surface.num_control_points_u has unexpected offset % instead of 272", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Surface.num_control_points_u has unexpected size % instead of 8", it.type.runtime_size);
                case "num_control_points_v";
                    assert(it.offset_in_bytes == 280, "Ufbx_Nurbs_Surface.num_control_points_v has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Surface.num_control_points_v has unexpected size % instead of 8", it.type.runtime_size);
                case "control_points";
                    assert(it.offset_in_bytes == 288, "Ufbx_Nurbs_Surface.control_points has unexpected offset % instead of 288", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Nurbs_Surface.control_points has unexpected size % instead of 16", it.type.runtime_size);
                case "span_subdivision_u";
                    assert(it.offset_in_bytes == 304, "Ufbx_Nurbs_Surface.span_subdivision_u has unexpected offset % instead of 304", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Nurbs_Surface.span_subdivision_u has unexpected size % instead of 4", it.type.runtime_size);
                case "span_subdivision_v";
                    assert(it.offset_in_bytes == 308, "Ufbx_Nurbs_Surface.span_subdivision_v has unexpected offset % instead of 308", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Nurbs_Surface.span_subdivision_v has unexpected size % instead of 4", it.type.runtime_size);
                case "flip_normals";
                    assert(it.offset_in_bytes == 312, "Ufbx_Nurbs_Surface.flip_normals has unexpected offset % instead of 312", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Nurbs_Surface.flip_normals has unexpected size % instead of 1", it.type.runtime_size);
                case "material";
                    assert(it.offset_in_bytes == 320, "Ufbx_Nurbs_Surface.material has unexpected offset % instead of 320", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Nurbs_Surface.material has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Nurbs_Surface) == 328, "Ufbx_Nurbs_Surface has size % instead of 328", size_of(Ufbx_Nurbs_Surface));
    }

    assert(size_of(Ufbx_Nurbs_Trim_Surface) == 128, "Ufbx_Nurbs_Trim_Surface has size % instead of 128", size_of(Ufbx_Nurbs_Trim_Surface));

    assert(size_of(Ufbx_Nurbs_Trim_Boundary) == 128, "Ufbx_Nurbs_Trim_Boundary has size % instead of 128", size_of(Ufbx_Nurbs_Trim_Boundary));

    assert(size_of(Ufbx_Procedural_Geometry) == 128, "Ufbx_Procedural_Geometry has size % instead of 128", size_of(Ufbx_Procedural_Geometry));

    {
        info := type_info(Ufbx_Stereo_Camera);
        for info.members {
            if it.name == {
                case "left";
                    assert(it.offset_in_bytes == 128, "Ufbx_Stereo_Camera.left has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stereo_Camera.left has unexpected size % instead of 8", it.type.runtime_size);
                case "right";
                    assert(it.offset_in_bytes == 136, "Ufbx_Stereo_Camera.right has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stereo_Camera.right has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Stereo_Camera) == 144, "Ufbx_Stereo_Camera has size % instead of 144", size_of(Ufbx_Stereo_Camera));
    }

    assert(size_of(Ufbx_Camera_Switcher) == 128, "Ufbx_Camera_Switcher has size % instead of 128", size_of(Ufbx_Camera_Switcher));

    {
        info := type_info(Ufbx_Marker);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 128, "Ufbx_Marker.type has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Marker.type has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Marker) == 136, "Ufbx_Marker has size % instead of 136", size_of(Ufbx_Marker));
    }

    {
        info := type_info(Ufbx_Lod_Level);
        for info.members {
            if it.name == {
                case "distance";
                    assert(it.offset_in_bytes == 0, "Ufbx_Lod_Level.distance has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Lod_Level.distance has unexpected size % instead of 4", it.type.runtime_size);
                case "display";
                    assert(it.offset_in_bytes == 4, "Ufbx_Lod_Level.display has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Lod_Level.display has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Lod_Level) == 8, "Ufbx_Lod_Level has size % instead of 8", size_of(Ufbx_Lod_Level));
    }

    {
        info := type_info(Ufbx_Lod_Level_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Lod_Level_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Lod_Level_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Lod_Level_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Lod_Level_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Lod_Level_List) == 16, "Ufbx_Lod_Level_List has size % instead of 16", size_of(Ufbx_Lod_Level_List));
    }

    {
        info := type_info(Ufbx_Lod_Group);
        for info.members {
            if it.name == {
                case "relative_distances";
                    assert(it.offset_in_bytes == 128, "Ufbx_Lod_Group.relative_distances has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Lod_Group.relative_distances has unexpected size % instead of 1", it.type.runtime_size);
                case "lod_levels";
                    assert(it.offset_in_bytes == 136, "Ufbx_Lod_Group.lod_levels has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Lod_Group.lod_levels has unexpected size % instead of 16", it.type.runtime_size);
                case "ignore_parent_transform";
                    assert(it.offset_in_bytes == 152, "Ufbx_Lod_Group.ignore_parent_transform has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Lod_Group.ignore_parent_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "use_distance_limit";
                    assert(it.offset_in_bytes == 153, "Ufbx_Lod_Group.use_distance_limit has unexpected offset % instead of 153", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Lod_Group.use_distance_limit has unexpected size % instead of 1", it.type.runtime_size);
                case "distance_limit_min";
                    assert(it.offset_in_bytes == 156, "Ufbx_Lod_Group.distance_limit_min has unexpected offset % instead of 156", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Lod_Group.distance_limit_min has unexpected size % instead of 4", it.type.runtime_size);
                case "distance_limit_max";
                    assert(it.offset_in_bytes == 160, "Ufbx_Lod_Group.distance_limit_max has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Lod_Group.distance_limit_max has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Lod_Group) == 168, "Ufbx_Lod_Group has size % instead of 168", size_of(Ufbx_Lod_Group));
    }

    {
        info := type_info(Ufbx_Skin_Vertex);
        for info.members {
            if it.name == {
                case "weight_begin";
                    assert(it.offset_in_bytes == 0, "Ufbx_Skin_Vertex.weight_begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Skin_Vertex.weight_begin has unexpected size % instead of 4", it.type.runtime_size);
                case "num_weights";
                    assert(it.offset_in_bytes == 4, "Ufbx_Skin_Vertex.num_weights has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Skin_Vertex.num_weights has unexpected size % instead of 4", it.type.runtime_size);
                case "dq_weight";
                    assert(it.offset_in_bytes == 8, "Ufbx_Skin_Vertex.dq_weight has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Skin_Vertex.dq_weight has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Vertex) == 12, "Ufbx_Skin_Vertex has size % instead of 12", size_of(Ufbx_Skin_Vertex));
    }

    {
        info := type_info(Ufbx_Skin_Vertex_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Skin_Vertex_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Vertex_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Skin_Vertex_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Vertex_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Vertex_List) == 16, "Ufbx_Skin_Vertex_List has size % instead of 16", size_of(Ufbx_Skin_Vertex_List));
    }

    {
        info := type_info(Ufbx_Skin_Weight);
        for info.members {
            if it.name == {
                case "cluster_index";
                    assert(it.offset_in_bytes == 0, "Ufbx_Skin_Weight.cluster_index has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Skin_Weight.cluster_index has unexpected size % instead of 4", it.type.runtime_size);
                case "weight";
                    assert(it.offset_in_bytes == 4, "Ufbx_Skin_Weight.weight has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Skin_Weight.weight has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Weight) == 8, "Ufbx_Skin_Weight has size % instead of 8", size_of(Ufbx_Skin_Weight));
    }

    {
        info := type_info(Ufbx_Skin_Weight_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Skin_Weight_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Weight_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Skin_Weight_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Weight_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Weight_List) == 16, "Ufbx_Skin_Weight_List has size % instead of 16", size_of(Ufbx_Skin_Weight_List));
    }

    {
        info := type_info(Ufbx_Skin_Deformer);
        for info.members {
            if it.name == {
                case "skinning_method";
                    assert(it.offset_in_bytes == 128, "Ufbx_Skin_Deformer.skinning_method has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Skin_Deformer.skinning_method has unexpected size % instead of 4", it.type.runtime_size);
                case "clusters";
                    assert(it.offset_in_bytes == 136, "Ufbx_Skin_Deformer.clusters has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Deformer.clusters has unexpected size % instead of 16", it.type.runtime_size);
                case "vertices";
                    assert(it.offset_in_bytes == 152, "Ufbx_Skin_Deformer.vertices has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Deformer.vertices has unexpected size % instead of 16", it.type.runtime_size);
                case "weights";
                    assert(it.offset_in_bytes == 168, "Ufbx_Skin_Deformer.weights has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Deformer.weights has unexpected size % instead of 16", it.type.runtime_size);
                case "max_weights_per_vertex";
                    assert(it.offset_in_bytes == 184, "Ufbx_Skin_Deformer.max_weights_per_vertex has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Deformer.max_weights_per_vertex has unexpected size % instead of 8", it.type.runtime_size);
                case "num_dq_weights";
                    assert(it.offset_in_bytes == 192, "Ufbx_Skin_Deformer.num_dq_weights has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Deformer.num_dq_weights has unexpected size % instead of 8", it.type.runtime_size);
                case "dq_vertices";
                    assert(it.offset_in_bytes == 200, "Ufbx_Skin_Deformer.dq_vertices has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Deformer.dq_vertices has unexpected size % instead of 16", it.type.runtime_size);
                case "dq_weights";
                    assert(it.offset_in_bytes == 216, "Ufbx_Skin_Deformer.dq_weights has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Deformer.dq_weights has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Deformer) == 232, "Ufbx_Skin_Deformer has size % instead of 232", size_of(Ufbx_Skin_Deformer));
    }

    {
        info := type_info(Ufbx_Skin_Cluster);
        for info.members {
            if it.name == {
                case "bone_node";
                    assert(it.offset_in_bytes == 128, "Ufbx_Skin_Cluster.bone_node has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Cluster.bone_node has unexpected size % instead of 8", it.type.runtime_size);
                case "geometry_to_bone";
                    assert(it.offset_in_bytes == 136, "Ufbx_Skin_Cluster.geometry_to_bone has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Skin_Cluster.geometry_to_bone has unexpected size % instead of 48", it.type.runtime_size);
                case "mesh_node_to_bone";
                    assert(it.offset_in_bytes == 184, "Ufbx_Skin_Cluster.mesh_node_to_bone has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Skin_Cluster.mesh_node_to_bone has unexpected size % instead of 48", it.type.runtime_size);
                case "bind_to_world";
                    assert(it.offset_in_bytes == 232, "Ufbx_Skin_Cluster.bind_to_world has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Skin_Cluster.bind_to_world has unexpected size % instead of 48", it.type.runtime_size);
                case "geometry_to_world";
                    assert(it.offset_in_bytes == 280, "Ufbx_Skin_Cluster.geometry_to_world has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Skin_Cluster.geometry_to_world has unexpected size % instead of 48", it.type.runtime_size);
                case "geometry_to_world_transform";
                    assert(it.offset_in_bytes == 328, "Ufbx_Skin_Cluster.geometry_to_world_transform has unexpected offset % instead of 328", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Skin_Cluster.geometry_to_world_transform has unexpected size % instead of 40", it.type.runtime_size);
                case "num_weights";
                    assert(it.offset_in_bytes == 368, "Ufbx_Skin_Cluster.num_weights has unexpected offset % instead of 368", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Skin_Cluster.num_weights has unexpected size % instead of 8", it.type.runtime_size);
                case "vertices";
                    assert(it.offset_in_bytes == 376, "Ufbx_Skin_Cluster.vertices has unexpected offset % instead of 376", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Cluster.vertices has unexpected size % instead of 16", it.type.runtime_size);
                case "weights";
                    assert(it.offset_in_bytes == 392, "Ufbx_Skin_Cluster.weights has unexpected offset % instead of 392", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Skin_Cluster.weights has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Skin_Cluster) == 408, "Ufbx_Skin_Cluster has size % instead of 408", size_of(Ufbx_Skin_Cluster));
    }

    {
        info := type_info(Ufbx_Blend_Deformer);
        for info.members {
            if it.name == {
                case "channels";
                    assert(it.offset_in_bytes == 128, "Ufbx_Blend_Deformer.channels has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Blend_Deformer.channels has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Deformer) == 144, "Ufbx_Blend_Deformer has size % instead of 144", size_of(Ufbx_Blend_Deformer));
    }

    {
        info := type_info(Ufbx_Blend_Keyframe);
        for info.members {
            if it.name == {
                case "shape";
                    assert(it.offset_in_bytes == 0, "Ufbx_Blend_Keyframe.shape has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Keyframe.shape has unexpected size % instead of 8", it.type.runtime_size);
                case "target_weight";
                    assert(it.offset_in_bytes == 8, "Ufbx_Blend_Keyframe.target_weight has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Blend_Keyframe.target_weight has unexpected size % instead of 4", it.type.runtime_size);
                case "effective_weight";
                    assert(it.offset_in_bytes == 12, "Ufbx_Blend_Keyframe.effective_weight has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Blend_Keyframe.effective_weight has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Keyframe) == 16, "Ufbx_Blend_Keyframe has size % instead of 16", size_of(Ufbx_Blend_Keyframe));
    }

    {
        info := type_info(Ufbx_Blend_Keyframe_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Blend_Keyframe_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Keyframe_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Blend_Keyframe_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Keyframe_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Keyframe_List) == 16, "Ufbx_Blend_Keyframe_List has size % instead of 16", size_of(Ufbx_Blend_Keyframe_List));
    }

    {
        info := type_info(Ufbx_Blend_Channel);
        for info.members {
            if it.name == {
                case "weight";
                    assert(it.offset_in_bytes == 128, "Ufbx_Blend_Channel.weight has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Blend_Channel.weight has unexpected size % instead of 4", it.type.runtime_size);
                case "keyframes";
                    assert(it.offset_in_bytes == 136, "Ufbx_Blend_Channel.keyframes has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Blend_Channel.keyframes has unexpected size % instead of 16", it.type.runtime_size);
                case "target_shape";
                    assert(it.offset_in_bytes == 152, "Ufbx_Blend_Channel.target_shape has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Channel.target_shape has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Channel) == 160, "Ufbx_Blend_Channel has size % instead of 160", size_of(Ufbx_Blend_Channel));
    }

    {
        info := type_info(Ufbx_Blend_Shape);
        for info.members {
            if it.name == {
                case "num_offsets";
                    assert(it.offset_in_bytes == 128, "Ufbx_Blend_Shape.num_offsets has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Blend_Shape.num_offsets has unexpected size % instead of 8", it.type.runtime_size);
                case "offset_vertices";
                    assert(it.offset_in_bytes == 136, "Ufbx_Blend_Shape.offset_vertices has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Blend_Shape.offset_vertices has unexpected size % instead of 16", it.type.runtime_size);
                case "position_offsets";
                    assert(it.offset_in_bytes == 152, "Ufbx_Blend_Shape.position_offsets has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Blend_Shape.position_offsets has unexpected size % instead of 16", it.type.runtime_size);
                case "normal_offsets";
                    assert(it.offset_in_bytes == 168, "Ufbx_Blend_Shape.normal_offsets has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Blend_Shape.normal_offsets has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Blend_Shape) == 184, "Ufbx_Blend_Shape has size % instead of 184", size_of(Ufbx_Blend_Shape));
    }

    {
        info := type_info(Ufbx_Cache_Frame);
        for info.members {
            if it.name == {
                case "channel";
                    assert(it.offset_in_bytes == 0, "Ufbx_Cache_Frame.channel has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_Frame.channel has unexpected size % instead of 16", it.type.runtime_size);
                case "time";
                    assert(it.offset_in_bytes == 16, "Ufbx_Cache_Frame.time has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Frame.time has unexpected size % instead of 8", it.type.runtime_size);
                case "filename";
                    assert(it.offset_in_bytes == 24, "Ufbx_Cache_Frame.filename has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_Frame.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "file_format";
                    assert(it.offset_in_bytes == 40, "Ufbx_Cache_Frame.file_format has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.file_format has unexpected size % instead of 4", it.type.runtime_size);
                case "mirror_axis";
                    assert(it.offset_in_bytes == 44, "Ufbx_Cache_Frame.mirror_axis has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.mirror_axis has unexpected size % instead of 4", it.type.runtime_size);
                case "scale_factor";
                    assert(it.offset_in_bytes == 48, "Ufbx_Cache_Frame.scale_factor has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.scale_factor has unexpected size % instead of 4", it.type.runtime_size);
                case "data_format";
                    assert(it.offset_in_bytes == 52, "Ufbx_Cache_Frame.data_format has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.data_format has unexpected size % instead of 4", it.type.runtime_size);
                case "data_encoding";
                    assert(it.offset_in_bytes == 56, "Ufbx_Cache_Frame.data_encoding has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.data_encoding has unexpected size % instead of 4", it.type.runtime_size);
                case "data_offset";
                    assert(it.offset_in_bytes == 64, "Ufbx_Cache_Frame.data_offset has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Frame.data_offset has unexpected size % instead of 8", it.type.runtime_size);
                case "data_count";
                    assert(it.offset_in_bytes == 72, "Ufbx_Cache_Frame.data_count has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.data_count has unexpected size % instead of 4", it.type.runtime_size);
                case "data_element_bytes";
                    assert(it.offset_in_bytes == 76, "Ufbx_Cache_Frame.data_element_bytes has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Frame.data_element_bytes has unexpected size % instead of 4", it.type.runtime_size);
                case "data_total_bytes";
                    assert(it.offset_in_bytes == 80, "Ufbx_Cache_Frame.data_total_bytes has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Frame.data_total_bytes has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_Frame) == 88, "Ufbx_Cache_Frame has size % instead of 88", size_of(Ufbx_Cache_Frame));
    }

    {
        info := type_info(Ufbx_Cache_Frame_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Cache_Frame_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Frame_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Cache_Frame_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Frame_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_Frame_List) == 16, "Ufbx_Cache_Frame_List has size % instead of 16", size_of(Ufbx_Cache_Frame_List));
    }

    {
        info := type_info(Ufbx_Cache_Channel);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Cache_Channel.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_Channel.name has unexpected size % instead of 16", it.type.runtime_size);
                case "interpretation";
                    assert(it.offset_in_bytes == 16, "Ufbx_Cache_Channel.interpretation has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Channel.interpretation has unexpected size % instead of 4", it.type.runtime_size);
                case "interpretation_name";
                    assert(it.offset_in_bytes == 24, "Ufbx_Cache_Channel.interpretation_name has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_Channel.interpretation_name has unexpected size % instead of 16", it.type.runtime_size);
                case "frames";
                    assert(it.offset_in_bytes == 40, "Ufbx_Cache_Channel.frames has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_Channel.frames has unexpected size % instead of 16", it.type.runtime_size);
                case "mirror_axis";
                    assert(it.offset_in_bytes == 56, "Ufbx_Cache_Channel.mirror_axis has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Channel.mirror_axis has unexpected size % instead of 4", it.type.runtime_size);
                case "scale_factor";
                    assert(it.offset_in_bytes == 60, "Ufbx_Cache_Channel.scale_factor has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_Channel.scale_factor has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_Channel) == 64, "Ufbx_Cache_Channel has size % instead of 64", size_of(Ufbx_Cache_Channel));
    }

    {
        info := type_info(Ufbx_Cache_Channel_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Cache_Channel_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Channel_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Cache_Channel_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Channel_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_Channel_List) == 16, "Ufbx_Cache_Channel_List has size % instead of 16", size_of(Ufbx_Cache_Channel_List));
    }

    {
        info := type_info(Ufbx_Geometry_Cache);
        for info.members {
            if it.name == {
                case "root_filename";
                    assert(it.offset_in_bytes == 0, "Ufbx_Geometry_Cache.root_filename has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Geometry_Cache.root_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "channels";
                    assert(it.offset_in_bytes == 16, "Ufbx_Geometry_Cache.channels has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Geometry_Cache.channels has unexpected size % instead of 16", it.type.runtime_size);
                case "frames";
                    assert(it.offset_in_bytes == 32, "Ufbx_Geometry_Cache.frames has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Geometry_Cache.frames has unexpected size % instead of 16", it.type.runtime_size);
                case "extra_info";
                    assert(it.offset_in_bytes == 48, "Ufbx_Geometry_Cache.extra_info has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Geometry_Cache.extra_info has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Geometry_Cache) == 64, "Ufbx_Geometry_Cache has size % instead of 64", size_of(Ufbx_Geometry_Cache));
    }

    {
        info := type_info(Ufbx_Cache_Deformer);
        for info.members {
            if it.name == {
                case "channel";
                    assert(it.offset_in_bytes == 128, "Ufbx_Cache_Deformer.channel has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_Deformer.channel has unexpected size % instead of 16", it.type.runtime_size);
                case "file";
                    assert(it.offset_in_bytes == 144, "Ufbx_Cache_Deformer.file has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Deformer.file has unexpected size % instead of 8", it.type.runtime_size);
                case "external_cache";
                    assert(it.offset_in_bytes == 152, "Ufbx_Cache_Deformer.external_cache has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Deformer.external_cache has unexpected size % instead of 8", it.type.runtime_size);
                case "external_channel";
                    assert(it.offset_in_bytes == 160, "Ufbx_Cache_Deformer.external_channel has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_Deformer.external_channel has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_Deformer) == 168, "Ufbx_Cache_Deformer has size % instead of 168", size_of(Ufbx_Cache_Deformer));
    }

    {
        info := type_info(Ufbx_Cache_File);
        for info.members {
            if it.name == {
                case "filename";
                    assert(it.offset_in_bytes == 128, "Ufbx_Cache_File.filename has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_File.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "absolute_filename";
                    assert(it.offset_in_bytes == 144, "Ufbx_Cache_File.absolute_filename has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_File.absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "relative_filename";
                    assert(it.offset_in_bytes == 160, "Ufbx_Cache_File.relative_filename has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_File.relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 176, "Ufbx_Cache_File.raw_filename has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_File.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_absolute_filename";
                    assert(it.offset_in_bytes == 192, "Ufbx_Cache_File.raw_absolute_filename has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_File.raw_absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_relative_filename";
                    assert(it.offset_in_bytes == 208, "Ufbx_Cache_File.raw_relative_filename has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Cache_File.raw_relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "format";
                    assert(it.offset_in_bytes == 224, "Ufbx_Cache_File.format has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Cache_File.format has unexpected size % instead of 4", it.type.runtime_size);
                case "external_cache";
                    assert(it.offset_in_bytes == 232, "Ufbx_Cache_File.external_cache has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Cache_File.external_cache has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Cache_File) == 240, "Ufbx_Cache_File has size % instead of 240", size_of(Ufbx_Cache_File));
    }

    {
        info := type_info(Ufbx_Material_Map);
        for info.members {
            if it.name == {
                case "value_int";
                    assert(it.offset_in_bytes == 16, "Ufbx_Material_Map.value_int has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_Map.value_int has unexpected size % instead of 8", it.type.runtime_size);
                case "texture";
                    assert(it.offset_in_bytes == 24, "Ufbx_Material_Map.texture has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_Map.texture has unexpected size % instead of 8", it.type.runtime_size);
                case "has_value";
                    assert(it.offset_in_bytes == 32, "Ufbx_Material_Map.has_value has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Material_Map.has_value has unexpected size % instead of 1", it.type.runtime_size);
                case "texture_enabled";
                    assert(it.offset_in_bytes == 33, "Ufbx_Material_Map.texture_enabled has unexpected offset % instead of 33", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Material_Map.texture_enabled has unexpected size % instead of 1", it.type.runtime_size);
                case "feature_disabled";
                    assert(it.offset_in_bytes == 34, "Ufbx_Material_Map.feature_disabled has unexpected offset % instead of 34", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Material_Map.feature_disabled has unexpected size % instead of 1", it.type.runtime_size);
                case "value_components";
                    assert(it.offset_in_bytes == 35, "Ufbx_Material_Map.value_components has unexpected offset % instead of 35", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Material_Map.value_components has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Material_Map) == 40, "Ufbx_Material_Map has size % instead of 40", size_of(Ufbx_Material_Map));
    }

    {
        info := type_info(Ufbx_Material_Feature_Info);
        for info.members {
            if it.name == {
                case "enabled";
                    assert(it.offset_in_bytes == 0, "Ufbx_Material_Feature_Info.enabled has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Material_Feature_Info.enabled has unexpected size % instead of 1", it.type.runtime_size);
                case "is_explicit";
                    assert(it.offset_in_bytes == 1, "Ufbx_Material_Feature_Info.is_explicit has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Material_Feature_Info.is_explicit has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Material_Feature_Info) == 2, "Ufbx_Material_Feature_Info has size % instead of 2", size_of(Ufbx_Material_Feature_Info));
    }

    {
        info := type_info(Ufbx_Material_Texture);
        for info.members {
            if it.name == {
                case "material_prop";
                    assert(it.offset_in_bytes == 0, "Ufbx_Material_Texture.material_prop has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Material_Texture.material_prop has unexpected size % instead of 16", it.type.runtime_size);
                case "shader_prop";
                    assert(it.offset_in_bytes == 16, "Ufbx_Material_Texture.shader_prop has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Material_Texture.shader_prop has unexpected size % instead of 16", it.type.runtime_size);
                case "texture";
                    assert(it.offset_in_bytes == 32, "Ufbx_Material_Texture.texture has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_Texture.texture has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Material_Texture) == 40, "Ufbx_Material_Texture has size % instead of 40", size_of(Ufbx_Material_Texture));
    }

    {
        info := type_info(Ufbx_Material_Texture_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Material_Texture_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_Texture_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Material_Texture_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material_Texture_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Material_Texture_List) == 16, "Ufbx_Material_Texture_List has size % instead of 16", size_of(Ufbx_Material_Texture_List));
    }

    assert(size_of(Ufbx_Material_Fbx_Maps) == 800, "Ufbx_Material_Fbx_Maps has size % instead of 800", size_of(Ufbx_Material_Fbx_Maps));

    assert(size_of(Ufbx_Material_Pbr_Maps) == 2240, "Ufbx_Material_Pbr_Maps has size % instead of 2240", size_of(Ufbx_Material_Pbr_Maps));

    assert(size_of(Ufbx_Material_Features) == 46, "Ufbx_Material_Features has size % instead of 46", size_of(Ufbx_Material_Features));

    {
        info := type_info(Ufbx_Material);
        for info.members {
            if it.name == {
                case "fbx";
                    assert(it.offset_in_bytes == 128, "Ufbx_Material.fbx has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 800, "Ufbx_Material.fbx has unexpected size % instead of 800", it.type.runtime_size);
                case "pbr";
                    assert(it.offset_in_bytes == 928, "Ufbx_Material.pbr has unexpected offset % instead of 928", it.offset_in_bytes);
                    assert(it.type.runtime_size == 2240, "Ufbx_Material.pbr has unexpected size % instead of 2240", it.type.runtime_size);
                case "features";
                    assert(it.offset_in_bytes == 3168, "Ufbx_Material.features has unexpected offset % instead of 3168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 46, "Ufbx_Material.features has unexpected size % instead of 46", it.type.runtime_size);
                case "shader_type";
                    assert(it.offset_in_bytes == 3216, "Ufbx_Material.shader_type has unexpected offset % instead of 3216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Material.shader_type has unexpected size % instead of 4", it.type.runtime_size);
                case "shader";
                    assert(it.offset_in_bytes == 3224, "Ufbx_Material.shader has unexpected offset % instead of 3224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Material.shader has unexpected size % instead of 8", it.type.runtime_size);
                case "shading_model_name";
                    assert(it.offset_in_bytes == 3232, "Ufbx_Material.shading_model_name has unexpected offset % instead of 3232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Material.shading_model_name has unexpected size % instead of 16", it.type.runtime_size);
                case "shader_prop_prefix";
                    assert(it.offset_in_bytes == 3248, "Ufbx_Material.shader_prop_prefix has unexpected offset % instead of 3248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Material.shader_prop_prefix has unexpected size % instead of 16", it.type.runtime_size);
                case "textures";
                    assert(it.offset_in_bytes == 3264, "Ufbx_Material.textures has unexpected offset % instead of 3264", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Material.textures has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Material) == 3280, "Ufbx_Material has size % instead of 3280", size_of(Ufbx_Material));
    }

    {
        info := type_info(Ufbx_Texture_Layer);
        for info.members {
            if it.name == {
                case "texture";
                    assert(it.offset_in_bytes == 0, "Ufbx_Texture_Layer.texture has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_Layer.texture has unexpected size % instead of 8", it.type.runtime_size);
                case "blend_mode";
                    assert(it.offset_in_bytes == 8, "Ufbx_Texture_Layer.blend_mode has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture_Layer.blend_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "alpha";
                    assert(it.offset_in_bytes == 12, "Ufbx_Texture_Layer.alpha has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture_Layer.alpha has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Texture_Layer) == 16, "Ufbx_Texture_Layer has size % instead of 16", size_of(Ufbx_Texture_Layer));
    }

    {
        info := type_info(Ufbx_Texture_Layer_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Texture_Layer_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_Layer_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Texture_Layer_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_Layer_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Texture_Layer_List) == 16, "Ufbx_Texture_Layer_List has size % instead of 16", size_of(Ufbx_Texture_Layer_List));
    }

    {
        info := type_info(Ufbx_Shader_Texture_Input);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_Texture_Input.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture_Input.name has unexpected size % instead of 16", it.type.runtime_size);
                case "value_int";
                    assert(it.offset_in_bytes == 32, "Ufbx_Shader_Texture_Input.value_int has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input.value_int has unexpected size % instead of 8", it.type.runtime_size);
                case "value_str";
                    assert(it.offset_in_bytes == 40, "Ufbx_Shader_Texture_Input.value_str has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture_Input.value_str has unexpected size % instead of 16", it.type.runtime_size);
                case "value_blob";
                    assert(it.offset_in_bytes == 56, "Ufbx_Shader_Texture_Input.value_blob has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture_Input.value_blob has unexpected size % instead of 16", it.type.runtime_size);
                case "texture";
                    assert(it.offset_in_bytes == 72, "Ufbx_Shader_Texture_Input.texture has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input.texture has unexpected size % instead of 8", it.type.runtime_size);
                case "texture_output_index";
                    assert(it.offset_in_bytes == 80, "Ufbx_Shader_Texture_Input.texture_output_index has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input.texture_output_index has unexpected size % instead of 8", it.type.runtime_size);
                case "texture_enabled";
                    assert(it.offset_in_bytes == 88, "Ufbx_Shader_Texture_Input.texture_enabled has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Shader_Texture_Input.texture_enabled has unexpected size % instead of 1", it.type.runtime_size);
                case "prop";
                    assert(it.offset_in_bytes == 96, "Ufbx_Shader_Texture_Input.prop has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input.prop has unexpected size % instead of 8", it.type.runtime_size);
                case "texture_prop";
                    assert(it.offset_in_bytes == 104, "Ufbx_Shader_Texture_Input.texture_prop has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input.texture_prop has unexpected size % instead of 8", it.type.runtime_size);
                case "texture_enabled_prop";
                    assert(it.offset_in_bytes == 112, "Ufbx_Shader_Texture_Input.texture_enabled_prop has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input.texture_enabled_prop has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Texture_Input) == 120, "Ufbx_Shader_Texture_Input has size % instead of 120", size_of(Ufbx_Shader_Texture_Input));
    }

    {
        info := type_info(Ufbx_Shader_Texture_Input_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_Texture_Input_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Shader_Texture_Input_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture_Input_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Texture_Input_List) == 16, "Ufbx_Shader_Texture_Input_List has size % instead of 16", size_of(Ufbx_Shader_Texture_Input_List));
    }

    {
        info := type_info(Ufbx_Shader_Texture);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_Texture.type has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Shader_Texture.type has unexpected size % instead of 4", it.type.runtime_size);
                case "shader_name";
                    assert(it.offset_in_bytes == 8, "Ufbx_Shader_Texture.shader_name has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture.shader_name has unexpected size % instead of 16", it.type.runtime_size);
                case "shader_type_id";
                    assert(it.offset_in_bytes == 24, "Ufbx_Shader_Texture.shader_type_id has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture.shader_type_id has unexpected size % instead of 8", it.type.runtime_size);
                case "inputs";
                    assert(it.offset_in_bytes == 32, "Ufbx_Shader_Texture.inputs has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture.inputs has unexpected size % instead of 16", it.type.runtime_size);
                case "shader_source";
                    assert(it.offset_in_bytes == 48, "Ufbx_Shader_Texture.shader_source has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture.shader_source has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_shader_source";
                    assert(it.offset_in_bytes == 64, "Ufbx_Shader_Texture.raw_shader_source has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture.raw_shader_source has unexpected size % instead of 16", it.type.runtime_size);
                case "main_texture";
                    assert(it.offset_in_bytes == 80, "Ufbx_Shader_Texture.main_texture has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture.main_texture has unexpected size % instead of 8", it.type.runtime_size);
                case "main_texture_output_index";
                    assert(it.offset_in_bytes == 88, "Ufbx_Shader_Texture.main_texture_output_index has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Texture.main_texture_output_index has unexpected size % instead of 8", it.type.runtime_size);
                case "prop_prefix";
                    assert(it.offset_in_bytes == 96, "Ufbx_Shader_Texture.prop_prefix has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Texture.prop_prefix has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Texture) == 112, "Ufbx_Shader_Texture has size % instead of 112", size_of(Ufbx_Shader_Texture));
    }

    {
        info := type_info(Ufbx_Texture_File);
        for info.members {
            if it.name == {
                case "index";
                    assert(it.offset_in_bytes == 0, "Ufbx_Texture_File.index has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture_File.index has unexpected size % instead of 4", it.type.runtime_size);
                case "filename";
                    assert(it.offset_in_bytes == 8, "Ufbx_Texture_File.filename has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "absolute_filename";
                    assert(it.offset_in_bytes == 24, "Ufbx_Texture_File.absolute_filename has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "relative_filename";
                    assert(it.offset_in_bytes == 40, "Ufbx_Texture_File.relative_filename has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 56, "Ufbx_Texture_File.raw_filename has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_absolute_filename";
                    assert(it.offset_in_bytes == 72, "Ufbx_Texture_File.raw_absolute_filename has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.raw_absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_relative_filename";
                    assert(it.offset_in_bytes == 88, "Ufbx_Texture_File.raw_relative_filename has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.raw_relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "content";
                    assert(it.offset_in_bytes == 104, "Ufbx_Texture_File.content has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture_File.content has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Texture_File) == 120, "Ufbx_Texture_File has size % instead of 120", size_of(Ufbx_Texture_File));
    }

    {
        info := type_info(Ufbx_Texture_File_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Texture_File_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_File_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Texture_File_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture_File_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Texture_File_List) == 16, "Ufbx_Texture_File_List has size % instead of 16", size_of(Ufbx_Texture_File_List));
    }

    {
        info := type_info(Ufbx_Texture);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 128, "Ufbx_Texture.type has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture.type has unexpected size % instead of 4", it.type.runtime_size);
                case "filename";
                    assert(it.offset_in_bytes == 136, "Ufbx_Texture.filename has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "absolute_filename";
                    assert(it.offset_in_bytes == 152, "Ufbx_Texture.absolute_filename has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "relative_filename";
                    assert(it.offset_in_bytes == 168, "Ufbx_Texture.relative_filename has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 184, "Ufbx_Texture.raw_filename has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_absolute_filename";
                    assert(it.offset_in_bytes == 200, "Ufbx_Texture.raw_absolute_filename has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.raw_absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_relative_filename";
                    assert(it.offset_in_bytes == 216, "Ufbx_Texture.raw_relative_filename has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.raw_relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "content";
                    assert(it.offset_in_bytes == 232, "Ufbx_Texture.content has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.content has unexpected size % instead of 16", it.type.runtime_size);
                case "video";
                    assert(it.offset_in_bytes == 248, "Ufbx_Texture.video has unexpected offset % instead of 248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture.video has unexpected size % instead of 8", it.type.runtime_size);
                case "file_index";
                    assert(it.offset_in_bytes == 256, "Ufbx_Texture.file_index has unexpected offset % instead of 256", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture.file_index has unexpected size % instead of 4", it.type.runtime_size);
                case "has_file";
                    assert(it.offset_in_bytes == 260, "Ufbx_Texture.has_file has unexpected offset % instead of 260", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Texture.has_file has unexpected size % instead of 1", it.type.runtime_size);
                case "layers";
                    assert(it.offset_in_bytes == 264, "Ufbx_Texture.layers has unexpected offset % instead of 264", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.layers has unexpected size % instead of 16", it.type.runtime_size);
                case "shader";
                    assert(it.offset_in_bytes == 280, "Ufbx_Texture.shader has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Texture.shader has unexpected size % instead of 8", it.type.runtime_size);
                case "file_textures";
                    assert(it.offset_in_bytes == 288, "Ufbx_Texture.file_textures has unexpected offset % instead of 288", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.file_textures has unexpected size % instead of 16", it.type.runtime_size);
                case "uv_set";
                    assert(it.offset_in_bytes == 304, "Ufbx_Texture.uv_set has unexpected offset % instead of 304", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Texture.uv_set has unexpected size % instead of 16", it.type.runtime_size);
                case "wrap_u";
                    assert(it.offset_in_bytes == 320, "Ufbx_Texture.wrap_u has unexpected offset % instead of 320", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture.wrap_u has unexpected size % instead of 4", it.type.runtime_size);
                case "wrap_v";
                    assert(it.offset_in_bytes == 324, "Ufbx_Texture.wrap_v has unexpected offset % instead of 324", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Texture.wrap_v has unexpected size % instead of 4", it.type.runtime_size);
                case "has_uv_transform";
                    assert(it.offset_in_bytes == 328, "Ufbx_Texture.has_uv_transform has unexpected offset % instead of 328", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Texture.has_uv_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "uv_transform";
                    assert(it.offset_in_bytes == 332, "Ufbx_Texture.uv_transform has unexpected offset % instead of 332", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Texture.uv_transform has unexpected size % instead of 40", it.type.runtime_size);
                case "texture_to_uv";
                    assert(it.offset_in_bytes == 372, "Ufbx_Texture.texture_to_uv has unexpected offset % instead of 372", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Texture.texture_to_uv has unexpected size % instead of 48", it.type.runtime_size);
                case "uv_to_texture";
                    assert(it.offset_in_bytes == 420, "Ufbx_Texture.uv_to_texture has unexpected offset % instead of 420", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Texture.uv_to_texture has unexpected size % instead of 48", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Texture) == 472, "Ufbx_Texture has size % instead of 472", size_of(Ufbx_Texture));
    }

    {
        info := type_info(Ufbx_Video);
        for info.members {
            if it.name == {
                case "filename";
                    assert(it.offset_in_bytes == 128, "Ufbx_Video.filename has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "absolute_filename";
                    assert(it.offset_in_bytes == 144, "Ufbx_Video.absolute_filename has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "relative_filename";
                    assert(it.offset_in_bytes == 160, "Ufbx_Video.relative_filename has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 176, "Ufbx_Video.raw_filename has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_absolute_filename";
                    assert(it.offset_in_bytes == 192, "Ufbx_Video.raw_absolute_filename has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.raw_absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_relative_filename";
                    assert(it.offset_in_bytes == 208, "Ufbx_Video.raw_relative_filename has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.raw_relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "content";
                    assert(it.offset_in_bytes == 224, "Ufbx_Video.content has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Video.content has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Video) == 240, "Ufbx_Video has size % instead of 240", size_of(Ufbx_Video));
    }

    {
        info := type_info(Ufbx_Shader);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 128, "Ufbx_Shader.type has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Shader.type has unexpected size % instead of 4", it.type.runtime_size);
                case "bindings";
                    assert(it.offset_in_bytes == 136, "Ufbx_Shader.bindings has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader.bindings has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader) == 152, "Ufbx_Shader has size % instead of 152", size_of(Ufbx_Shader));
    }

    {
        info := type_info(Ufbx_Shader_Prop_Binding);
        for info.members {
            if it.name == {
                case "shader_prop";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_Prop_Binding.shader_prop has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Prop_Binding.shader_prop has unexpected size % instead of 16", it.type.runtime_size);
                case "material_prop";
                    assert(it.offset_in_bytes == 16, "Ufbx_Shader_Prop_Binding.material_prop has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Prop_Binding.material_prop has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Prop_Binding) == 32, "Ufbx_Shader_Prop_Binding has size % instead of 32", size_of(Ufbx_Shader_Prop_Binding));
    }

    {
        info := type_info(Ufbx_Shader_Prop_Binding_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Shader_Prop_Binding_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Prop_Binding_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Shader_Prop_Binding_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Shader_Prop_Binding_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Prop_Binding_List) == 16, "Ufbx_Shader_Prop_Binding_List has size % instead of 16", size_of(Ufbx_Shader_Prop_Binding_List));
    }

    {
        info := type_info(Ufbx_Shader_Binding);
        for info.members {
            if it.name == {
                case "prop_bindings";
                    assert(it.offset_in_bytes == 128, "Ufbx_Shader_Binding.prop_bindings has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Shader_Binding.prop_bindings has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Shader_Binding) == 144, "Ufbx_Shader_Binding has size % instead of 144", size_of(Ufbx_Shader_Binding));
    }

    {
        info := type_info(Ufbx_Prop_Override);
        for info.members {
            if it.name == {
                case "element_id";
                    assert(it.offset_in_bytes == 0, "Ufbx_Prop_Override.element_id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Prop_Override.element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "_internal_key";
                    assert(it.offset_in_bytes == 4, "Ufbx_Prop_Override._internal_key has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Prop_Override._internal_key has unexpected size % instead of 4", it.type.runtime_size);
                case "prop_name";
                    assert(it.offset_in_bytes == 8, "Ufbx_Prop_Override.prop_name has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop_Override.prop_name has unexpected size % instead of 16", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 24, "Ufbx_Prop_Override.value has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop_Override.value has unexpected size % instead of 16", it.type.runtime_size);
                case "value_str";
                    assert(it.offset_in_bytes == 40, "Ufbx_Prop_Override.value_str has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop_Override.value_str has unexpected size % instead of 16", it.type.runtime_size);
                case "value_int";
                    assert(it.offset_in_bytes == 56, "Ufbx_Prop_Override.value_int has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop_Override.value_int has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Prop_Override) == 64, "Ufbx_Prop_Override has size % instead of 64", size_of(Ufbx_Prop_Override));
    }

    {
        info := type_info(Ufbx_Prop_Override_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Prop_Override_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop_Override_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Prop_Override_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop_Override_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Prop_Override_List) == 16, "Ufbx_Prop_Override_List has size % instead of 16", size_of(Ufbx_Prop_Override_List));
    }

    {
        info := type_info(Ufbx_Transform_Override);
        for info.members {
            if it.name == {
                case "node_id";
                    assert(it.offset_in_bytes == 0, "Ufbx_Transform_Override.node_id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Transform_Override.node_id has unexpected size % instead of 4", it.type.runtime_size);
                case "transform";
                    assert(it.offset_in_bytes == 4, "Ufbx_Transform_Override.transform has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Transform_Override.transform has unexpected size % instead of 40", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Transform_Override) == 44, "Ufbx_Transform_Override has size % instead of 44", size_of(Ufbx_Transform_Override));
    }

    {
        info := type_info(Ufbx_Transform_Override_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Transform_Override_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Transform_Override_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Transform_Override_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Transform_Override_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Transform_Override_List) == 16, "Ufbx_Transform_Override_List has size % instead of 16", size_of(Ufbx_Transform_Override_List));
    }

    {
        info := type_info(Ufbx_Anim);
        for info.members {
            if it.name == {
                case "time_begin";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim.time_begin has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim.time_begin has unexpected size % instead of 8", it.type.runtime_size);
                case "time_end";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim.time_end has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim.time_end has unexpected size % instead of 8", it.type.runtime_size);
                case "layers";
                    assert(it.offset_in_bytes == 16, "Ufbx_Anim.layers has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim.layers has unexpected size % instead of 16", it.type.runtime_size);
                case "override_layer_weights";
                    assert(it.offset_in_bytes == 32, "Ufbx_Anim.override_layer_weights has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim.override_layer_weights has unexpected size % instead of 16", it.type.runtime_size);
                case "prop_overrides";
                    assert(it.offset_in_bytes == 48, "Ufbx_Anim.prop_overrides has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim.prop_overrides has unexpected size % instead of 16", it.type.runtime_size);
                case "transform_overrides";
                    assert(it.offset_in_bytes == 64, "Ufbx_Anim.transform_overrides has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim.transform_overrides has unexpected size % instead of 16", it.type.runtime_size);
                case "ignore_connections";
                    assert(it.offset_in_bytes == 80, "Ufbx_Anim.ignore_connections has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim.ignore_connections has unexpected size % instead of 1", it.type.runtime_size);
                case "custom";
                    assert(it.offset_in_bytes == 81, "Ufbx_Anim.custom has unexpected offset % instead of 81", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim.custom has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim) == 88, "Ufbx_Anim has size % instead of 88", size_of(Ufbx_Anim));
    }

    {
        info := type_info(Ufbx_Anim_Stack);
        for info.members {
            if it.name == {
                case "time_begin";
                    assert(it.offset_in_bytes == 128, "Ufbx_Anim_Stack.time_begin has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Stack.time_begin has unexpected size % instead of 8", it.type.runtime_size);
                case "time_end";
                    assert(it.offset_in_bytes == 136, "Ufbx_Anim_Stack.time_end has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Stack.time_end has unexpected size % instead of 8", it.type.runtime_size);
                case "layers";
                    assert(it.offset_in_bytes == 144, "Ufbx_Anim_Stack.layers has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Stack.layers has unexpected size % instead of 16", it.type.runtime_size);
                case "anim";
                    assert(it.offset_in_bytes == 160, "Ufbx_Anim_Stack.anim has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Stack.anim has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Stack) == 168, "Ufbx_Anim_Stack has size % instead of 168", size_of(Ufbx_Anim_Stack));
    }

    {
        info := type_info(Ufbx_Anim_Prop);
        for info.members {
            if it.name == {
                case "element";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Prop.element has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Prop.element has unexpected size % instead of 8", it.type.runtime_size);
                case "_internal_key";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Prop._internal_key has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Prop._internal_key has unexpected size % instead of 4", it.type.runtime_size);
                case "prop_name";
                    assert(it.offset_in_bytes == 16, "Ufbx_Anim_Prop.prop_name has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Prop.prop_name has unexpected size % instead of 16", it.type.runtime_size);
                case "anim_value";
                    assert(it.offset_in_bytes == 32, "Ufbx_Anim_Prop.anim_value has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Prop.anim_value has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Prop) == 40, "Ufbx_Anim_Prop has size % instead of 40", size_of(Ufbx_Anim_Prop));
    }

    {
        info := type_info(Ufbx_Anim_Prop_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Prop_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Prop_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Prop_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Prop_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Prop_List) == 16, "Ufbx_Anim_Prop_List has size % instead of 16", size_of(Ufbx_Anim_Prop_List));
    }

    {
        info := type_info(Ufbx_Anim_Layer);
        for info.members {
            if it.name == {
                case "weight";
                    assert(it.offset_in_bytes == 128, "Ufbx_Anim_Layer.weight has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Layer.weight has unexpected size % instead of 4", it.type.runtime_size);
                case "weight_is_animated";
                    assert(it.offset_in_bytes == 132, "Ufbx_Anim_Layer.weight_is_animated has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim_Layer.weight_is_animated has unexpected size % instead of 1", it.type.runtime_size);
                case "blended";
                    assert(it.offset_in_bytes == 133, "Ufbx_Anim_Layer.blended has unexpected offset % instead of 133", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim_Layer.blended has unexpected size % instead of 1", it.type.runtime_size);
                case "additive";
                    assert(it.offset_in_bytes == 134, "Ufbx_Anim_Layer.additive has unexpected offset % instead of 134", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim_Layer.additive has unexpected size % instead of 1", it.type.runtime_size);
                case "compose_rotation";
                    assert(it.offset_in_bytes == 135, "Ufbx_Anim_Layer.compose_rotation has unexpected offset % instead of 135", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim_Layer.compose_rotation has unexpected size % instead of 1", it.type.runtime_size);
                case "compose_scale";
                    assert(it.offset_in_bytes == 136, "Ufbx_Anim_Layer.compose_scale has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim_Layer.compose_scale has unexpected size % instead of 1", it.type.runtime_size);
                case "anim_values";
                    assert(it.offset_in_bytes == 144, "Ufbx_Anim_Layer.anim_values has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Layer.anim_values has unexpected size % instead of 16", it.type.runtime_size);
                case "anim_props";
                    assert(it.offset_in_bytes == 160, "Ufbx_Anim_Layer.anim_props has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Layer.anim_props has unexpected size % instead of 16", it.type.runtime_size);
                case "anim";
                    assert(it.offset_in_bytes == 176, "Ufbx_Anim_Layer.anim has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Layer.anim has unexpected size % instead of 8", it.type.runtime_size);
                case "_min_element_id";
                    assert(it.offset_in_bytes == 184, "Ufbx_Anim_Layer._min_element_id has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Layer._min_element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "_max_element_id";
                    assert(it.offset_in_bytes == 188, "Ufbx_Anim_Layer._max_element_id has unexpected offset % instead of 188", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Layer._max_element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "_element_id_bitmask";
                    assert(it.offset_in_bytes == 192, "Ufbx_Anim_Layer._element_id_bitmask has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Layer._element_id_bitmask has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Layer) == 208, "Ufbx_Anim_Layer has size % instead of 208", size_of(Ufbx_Anim_Layer));
    }

    {
        info := type_info(Ufbx_Anim_Value);
        for info.members {
            if it.name == {
                case "default_value";
                    assert(it.offset_in_bytes == 128, "Ufbx_Anim_Value.default_value has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Anim_Value.default_value has unexpected size % instead of 12", it.type.runtime_size);
                case "curves";
                    assert(it.offset_in_bytes == 144, "Ufbx_Anim_Value.curves has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "Ufbx_Anim_Value.curves has unexpected size % instead of 24", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Value) == 168, "Ufbx_Anim_Value has size % instead of 168", size_of(Ufbx_Anim_Value));
    }

    {
        info := type_info(Ufbx_Extrapolation);
        for info.members {
            if it.name == {
                case "mode";
                    assert(it.offset_in_bytes == 0, "Ufbx_Extrapolation.mode has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Extrapolation.mode has unexpected size % instead of 4", it.type.runtime_size);
                case "repeat_count";
                    assert(it.offset_in_bytes == 4, "Ufbx_Extrapolation.repeat_count has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Extrapolation.repeat_count has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Extrapolation) == 8, "Ufbx_Extrapolation has size % instead of 8", size_of(Ufbx_Extrapolation));
    }

    {
        info := type_info(Ufbx_Tangent);
        for info.members {
            if it.name == {
                case "dx";
                    assert(it.offset_in_bytes == 0, "Ufbx_Tangent.dx has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Tangent.dx has unexpected size % instead of 4", it.type.runtime_size);
                case "dy";
                    assert(it.offset_in_bytes == 4, "Ufbx_Tangent.dy has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Tangent.dy has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Tangent) == 8, "Ufbx_Tangent has size % instead of 8", size_of(Ufbx_Tangent));
    }

    {
        info := type_info(Ufbx_Keyframe);
        for info.members {
            if it.name == {
                case "time";
                    assert(it.offset_in_bytes == 0, "Ufbx_Keyframe.time has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Keyframe.time has unexpected size % instead of 8", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 8, "Ufbx_Keyframe.value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Keyframe.value has unexpected size % instead of 4", it.type.runtime_size);
                case "interpolation";
                    assert(it.offset_in_bytes == 12, "Ufbx_Keyframe.interpolation has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Keyframe.interpolation has unexpected size % instead of 4", it.type.runtime_size);
                case "left";
                    assert(it.offset_in_bytes == 16, "Ufbx_Keyframe.left has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Keyframe.left has unexpected size % instead of 8", it.type.runtime_size);
                case "right";
                    assert(it.offset_in_bytes == 24, "Ufbx_Keyframe.right has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Keyframe.right has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Keyframe) == 32, "Ufbx_Keyframe has size % instead of 32", size_of(Ufbx_Keyframe));
    }

    {
        info := type_info(Ufbx_Keyframe_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Keyframe_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Keyframe_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Keyframe_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Keyframe_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Keyframe_List) == 16, "Ufbx_Keyframe_List has size % instead of 16", size_of(Ufbx_Keyframe_List));
    }

    {
        info := type_info(Ufbx_Anim_Curve);
        for info.members {
            if it.name == {
                case "keyframes";
                    assert(it.offset_in_bytes == 128, "Ufbx_Anim_Curve.keyframes has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Curve.keyframes has unexpected size % instead of 16", it.type.runtime_size);
                case "pre_extrapolation";
                    assert(it.offset_in_bytes == 144, "Ufbx_Anim_Curve.pre_extrapolation has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Curve.pre_extrapolation has unexpected size % instead of 8", it.type.runtime_size);
                case "post_extrapolation";
                    assert(it.offset_in_bytes == 152, "Ufbx_Anim_Curve.post_extrapolation has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Curve.post_extrapolation has unexpected size % instead of 8", it.type.runtime_size);
                case "min_value";
                    assert(it.offset_in_bytes == 160, "Ufbx_Anim_Curve.min_value has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Curve.min_value has unexpected size % instead of 4", it.type.runtime_size);
                case "max_value";
                    assert(it.offset_in_bytes == 164, "Ufbx_Anim_Curve.max_value has unexpected offset % instead of 164", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Curve.max_value has unexpected size % instead of 4", it.type.runtime_size);
                case "min_time";
                    assert(it.offset_in_bytes == 168, "Ufbx_Anim_Curve.min_time has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Curve.min_time has unexpected size % instead of 8", it.type.runtime_size);
                case "max_time";
                    assert(it.offset_in_bytes == 176, "Ufbx_Anim_Curve.max_time has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Anim_Curve.max_time has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Curve) == 184, "Ufbx_Anim_Curve has size % instead of 184", size_of(Ufbx_Anim_Curve));
    }

    {
        info := type_info(Ufbx_Display_Layer);
        for info.members {
            if it.name == {
                case "nodes";
                    assert(it.offset_in_bytes == 128, "Ufbx_Display_Layer.nodes has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Display_Layer.nodes has unexpected size % instead of 16", it.type.runtime_size);
                case "visible";
                    assert(it.offset_in_bytes == 144, "Ufbx_Display_Layer.visible has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Display_Layer.visible has unexpected size % instead of 1", it.type.runtime_size);
                case "frozen";
                    assert(it.offset_in_bytes == 145, "Ufbx_Display_Layer.frozen has unexpected offset % instead of 145", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Display_Layer.frozen has unexpected size % instead of 1", it.type.runtime_size);
                case "ui_color";
                    assert(it.offset_in_bytes == 148, "Ufbx_Display_Layer.ui_color has unexpected offset % instead of 148", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Display_Layer.ui_color has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Display_Layer) == 160, "Ufbx_Display_Layer has size % instead of 160", size_of(Ufbx_Display_Layer));
    }

    {
        info := type_info(Ufbx_Selection_Set);
        for info.members {
            if it.name == {
                case "nodes";
                    assert(it.offset_in_bytes == 128, "Ufbx_Selection_Set.nodes has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Selection_Set.nodes has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Selection_Set) == 144, "Ufbx_Selection_Set has size % instead of 144", size_of(Ufbx_Selection_Set));
    }

    {
        info := type_info(Ufbx_Selection_Node);
        for info.members {
            if it.name == {
                case "target_node";
                    assert(it.offset_in_bytes == 128, "Ufbx_Selection_Node.target_node has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Selection_Node.target_node has unexpected size % instead of 8", it.type.runtime_size);
                case "target_mesh";
                    assert(it.offset_in_bytes == 136, "Ufbx_Selection_Node.target_mesh has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Selection_Node.target_mesh has unexpected size % instead of 8", it.type.runtime_size);
                case "include_node";
                    assert(it.offset_in_bytes == 144, "Ufbx_Selection_Node.include_node has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Selection_Node.include_node has unexpected size % instead of 1", it.type.runtime_size);
                case "vertices";
                    assert(it.offset_in_bytes == 152, "Ufbx_Selection_Node.vertices has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Selection_Node.vertices has unexpected size % instead of 16", it.type.runtime_size);
                case "edges";
                    assert(it.offset_in_bytes == 168, "Ufbx_Selection_Node.edges has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Selection_Node.edges has unexpected size % instead of 16", it.type.runtime_size);
                case "faces";
                    assert(it.offset_in_bytes == 184, "Ufbx_Selection_Node.faces has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Selection_Node.faces has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Selection_Node) == 200, "Ufbx_Selection_Node has size % instead of 200", size_of(Ufbx_Selection_Node));
    }

    assert(size_of(Ufbx_Character) == 128, "Ufbx_Character has size % instead of 128", size_of(Ufbx_Character));

    {
        info := type_info(Ufbx_Constraint_Target);
        for info.members {
            if it.name == {
                case "node";
                    assert(it.offset_in_bytes == 0, "Ufbx_Constraint_Target.node has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint_Target.node has unexpected size % instead of 8", it.type.runtime_size);
                case "weight";
                    assert(it.offset_in_bytes == 8, "Ufbx_Constraint_Target.weight has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Constraint_Target.weight has unexpected size % instead of 4", it.type.runtime_size);
                case "transform";
                    assert(it.offset_in_bytes == 12, "Ufbx_Constraint_Target.transform has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Constraint_Target.transform has unexpected size % instead of 40", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Constraint_Target) == 56, "Ufbx_Constraint_Target has size % instead of 56", size_of(Ufbx_Constraint_Target));
    }

    {
        info := type_info(Ufbx_Constraint_Target_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Constraint_Target_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint_Target_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Constraint_Target_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint_Target_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Constraint_Target_List) == 16, "Ufbx_Constraint_Target_List has size % instead of 16", size_of(Ufbx_Constraint_Target_List));
    }

    {
        info := type_info(Ufbx_Constraint);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 128, "Ufbx_Constraint.type has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Constraint.type has unexpected size % instead of 4", it.type.runtime_size);
                case "type_name";
                    assert(it.offset_in_bytes == 136, "Ufbx_Constraint.type_name has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Constraint.type_name has unexpected size % instead of 16", it.type.runtime_size);
                case "node";
                    assert(it.offset_in_bytes == 152, "Ufbx_Constraint.node has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint.node has unexpected size % instead of 8", it.type.runtime_size);
                case "targets";
                    assert(it.offset_in_bytes == 160, "Ufbx_Constraint.targets has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Constraint.targets has unexpected size % instead of 16", it.type.runtime_size);
                case "weight";
                    assert(it.offset_in_bytes == 176, "Ufbx_Constraint.weight has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Constraint.weight has unexpected size % instead of 4", it.type.runtime_size);
                case "active";
                    assert(it.offset_in_bytes == 180, "Ufbx_Constraint.active has unexpected offset % instead of 180", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Constraint.active has unexpected size % instead of 1", it.type.runtime_size);
                case "constrain_translation";
                    assert(it.offset_in_bytes == 181, "Ufbx_Constraint.constrain_translation has unexpected offset % instead of 181", it.offset_in_bytes);
                    assert(it.type.runtime_size == 3, "Ufbx_Constraint.constrain_translation has unexpected size % instead of 3", it.type.runtime_size);
                case "constrain_rotation";
                    assert(it.offset_in_bytes == 184, "Ufbx_Constraint.constrain_rotation has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 3, "Ufbx_Constraint.constrain_rotation has unexpected size % instead of 3", it.type.runtime_size);
                case "constrain_scale";
                    assert(it.offset_in_bytes == 187, "Ufbx_Constraint.constrain_scale has unexpected offset % instead of 187", it.offset_in_bytes);
                    assert(it.type.runtime_size == 3, "Ufbx_Constraint.constrain_scale has unexpected size % instead of 3", it.type.runtime_size);
                case "transform_offset";
                    assert(it.offset_in_bytes == 192, "Ufbx_Constraint.transform_offset has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Constraint.transform_offset has unexpected size % instead of 40", it.type.runtime_size);
                case "aim_vector";
                    assert(it.offset_in_bytes == 232, "Ufbx_Constraint.aim_vector has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Constraint.aim_vector has unexpected size % instead of 12", it.type.runtime_size);
                case "aim_up_type";
                    assert(it.offset_in_bytes == 244, "Ufbx_Constraint.aim_up_type has unexpected offset % instead of 244", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Constraint.aim_up_type has unexpected size % instead of 4", it.type.runtime_size);
                case "aim_up_node";
                    assert(it.offset_in_bytes == 248, "Ufbx_Constraint.aim_up_node has unexpected offset % instead of 248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint.aim_up_node has unexpected size % instead of 8", it.type.runtime_size);
                case "aim_up_vector";
                    assert(it.offset_in_bytes == 256, "Ufbx_Constraint.aim_up_vector has unexpected offset % instead of 256", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Constraint.aim_up_vector has unexpected size % instead of 12", it.type.runtime_size);
                case "ik_effector";
                    assert(it.offset_in_bytes == 272, "Ufbx_Constraint.ik_effector has unexpected offset % instead of 272", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint.ik_effector has unexpected size % instead of 8", it.type.runtime_size);
                case "ik_end_node";
                    assert(it.offset_in_bytes == 280, "Ufbx_Constraint.ik_end_node has unexpected offset % instead of 280", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Constraint.ik_end_node has unexpected size % instead of 8", it.type.runtime_size);
                case "ik_pole_vector";
                    assert(it.offset_in_bytes == 288, "Ufbx_Constraint.ik_pole_vector has unexpected offset % instead of 288", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Constraint.ik_pole_vector has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Constraint) == 304, "Ufbx_Constraint has size % instead of 304", size_of(Ufbx_Constraint));
    }

    {
        info := type_info(Ufbx_Audio_Layer);
        for info.members {
            if it.name == {
                case "clips";
                    assert(it.offset_in_bytes == 128, "Ufbx_Audio_Layer.clips has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Layer.clips has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Audio_Layer) == 144, "Ufbx_Audio_Layer has size % instead of 144", size_of(Ufbx_Audio_Layer));
    }

    {
        info := type_info(Ufbx_Audio_Clip);
        for info.members {
            if it.name == {
                case "filename";
                    assert(it.offset_in_bytes == 128, "Ufbx_Audio_Clip.filename has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "absolute_filename";
                    assert(it.offset_in_bytes == 144, "Ufbx_Audio_Clip.absolute_filename has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "relative_filename";
                    assert(it.offset_in_bytes == 160, "Ufbx_Audio_Clip.relative_filename has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 176, "Ufbx_Audio_Clip.raw_filename has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_absolute_filename";
                    assert(it.offset_in_bytes == 192, "Ufbx_Audio_Clip.raw_absolute_filename has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.raw_absolute_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_relative_filename";
                    assert(it.offset_in_bytes == 208, "Ufbx_Audio_Clip.raw_relative_filename has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.raw_relative_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "content";
                    assert(it.offset_in_bytes == 224, "Ufbx_Audio_Clip.content has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Audio_Clip.content has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Audio_Clip) == 240, "Ufbx_Audio_Clip has size % instead of 240", size_of(Ufbx_Audio_Clip));
    }

    {
        info := type_info(Ufbx_Bone_Pose);
        for info.members {
            if it.name == {
                case "bone_node";
                    assert(it.offset_in_bytes == 0, "Ufbx_Bone_Pose.bone_node has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bone_Pose.bone_node has unexpected size % instead of 8", it.type.runtime_size);
                case "bone_to_world";
                    assert(it.offset_in_bytes == 8, "Ufbx_Bone_Pose.bone_to_world has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Bone_Pose.bone_to_world has unexpected size % instead of 48", it.type.runtime_size);
                case "bone_to_parent";
                    assert(it.offset_in_bytes == 56, "Ufbx_Bone_Pose.bone_to_parent has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Bone_Pose.bone_to_parent has unexpected size % instead of 48", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Bone_Pose) == 104, "Ufbx_Bone_Pose has size % instead of 104", size_of(Ufbx_Bone_Pose));
    }

    {
        info := type_info(Ufbx_Bone_Pose_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Bone_Pose_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bone_Pose_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Bone_Pose_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bone_Pose_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Bone_Pose_List) == 16, "Ufbx_Bone_Pose_List has size % instead of 16", size_of(Ufbx_Bone_Pose_List));
    }

    {
        info := type_info(Ufbx_Pose);
        for info.members {
            if it.name == {
                case "is_bind_pose";
                    assert(it.offset_in_bytes == 128, "Ufbx_Pose.is_bind_pose has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Pose.is_bind_pose has unexpected size % instead of 1", it.type.runtime_size);
                case "bone_poses";
                    assert(it.offset_in_bytes == 136, "Ufbx_Pose.bone_poses has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Pose.bone_poses has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Pose) == 152, "Ufbx_Pose has size % instead of 152", size_of(Ufbx_Pose));
    }

    assert(size_of(Ufbx_Metadata_Object) == 128, "Ufbx_Metadata_Object has size % instead of 128", size_of(Ufbx_Metadata_Object));

    {
        info := type_info(Ufbx_Name_Element);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Name_Element.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Name_Element.name has unexpected size % instead of 16", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 16, "Ufbx_Name_Element.type has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Name_Element.type has unexpected size % instead of 4", it.type.runtime_size);
                case "_internal_key";
                    assert(it.offset_in_bytes == 20, "Ufbx_Name_Element._internal_key has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Name_Element._internal_key has unexpected size % instead of 4", it.type.runtime_size);
                case "element";
                    assert(it.offset_in_bytes == 24, "Ufbx_Name_Element.element has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Name_Element.element has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Name_Element) == 32, "Ufbx_Name_Element has size % instead of 32", size_of(Ufbx_Name_Element));
    }

    {
        info := type_info(Ufbx_Name_Element_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Name_Element_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Name_Element_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Name_Element_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Name_Element_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Name_Element_List) == 16, "Ufbx_Name_Element_List has size % instead of 16", size_of(Ufbx_Name_Element_List));
    }

    {
        info := type_info(Ufbx_Application);
        for info.members {
            if it.name == {
                case "vendor";
                    assert(it.offset_in_bytes == 0, "Ufbx_Application.vendor has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Application.vendor has unexpected size % instead of 16", it.type.runtime_size);
                case "name";
                    assert(it.offset_in_bytes == 16, "Ufbx_Application.name has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Application.name has unexpected size % instead of 16", it.type.runtime_size);
                case "version";
                    assert(it.offset_in_bytes == 32, "Ufbx_Application.version has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Application.version has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Application) == 48, "Ufbx_Application has size % instead of 48", size_of(Ufbx_Application));
    }

    {
        info := type_info(Ufbx_Warning);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 0, "Ufbx_Warning.type has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Warning.type has unexpected size % instead of 4", it.type.runtime_size);
                case "description";
                    assert(it.offset_in_bytes == 8, "Ufbx_Warning.description has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Warning.description has unexpected size % instead of 16", it.type.runtime_size);
                case "element_id";
                    assert(it.offset_in_bytes == 24, "Ufbx_Warning.element_id has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Warning.element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 32, "Ufbx_Warning.count has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Warning.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Warning) == 40, "Ufbx_Warning has size % instead of 40", size_of(Ufbx_Warning));
    }

    {
        info := type_info(Ufbx_Warning_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Warning_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Warning_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Warning_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Warning_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Warning_List) == 16, "Ufbx_Warning_List has size % instead of 16", size_of(Ufbx_Warning_List));
    }

    {
        info := type_info(Ufbx_Thumbnail);
        for info.members {
            if it.name == {
                case "props";
                    assert(it.offset_in_bytes == 0, "Ufbx_Thumbnail.props has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "Ufbx_Thumbnail.props has unexpected size % instead of 32", it.type.runtime_size);
                case "width";
                    assert(it.offset_in_bytes == 32, "Ufbx_Thumbnail.width has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Thumbnail.width has unexpected size % instead of 4", it.type.runtime_size);
                case "height";
                    assert(it.offset_in_bytes == 36, "Ufbx_Thumbnail.height has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Thumbnail.height has unexpected size % instead of 4", it.type.runtime_size);
                case "format";
                    assert(it.offset_in_bytes == 40, "Ufbx_Thumbnail.format has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Thumbnail.format has unexpected size % instead of 4", it.type.runtime_size);
                case "data";
                    assert(it.offset_in_bytes == 48, "Ufbx_Thumbnail.data has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Thumbnail.data has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Thumbnail) == 64, "Ufbx_Thumbnail has size % instead of 64", size_of(Ufbx_Thumbnail));
    }

    {
        info := type_info(Ufbx_Metadata);
        for info.members {
            if it.name == {
                case "warnings";
                    assert(it.offset_in_bytes == 0, "Ufbx_Metadata.warnings has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.warnings has unexpected size % instead of 16", it.type.runtime_size);
                case "ascii";
                    assert(it.offset_in_bytes == 16, "Ufbx_Metadata.ascii has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.ascii has unexpected size % instead of 1", it.type.runtime_size);
                case "version";
                    assert(it.offset_in_bytes == 20, "Ufbx_Metadata.version has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.version has unexpected size % instead of 4", it.type.runtime_size);
                case "file_format";
                    assert(it.offset_in_bytes == 24, "Ufbx_Metadata.file_format has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.file_format has unexpected size % instead of 4", it.type.runtime_size);
                case "may_contain_no_index";
                    assert(it.offset_in_bytes == 28, "Ufbx_Metadata.may_contain_no_index has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.may_contain_no_index has unexpected size % instead of 1", it.type.runtime_size);
                case "may_contain_missing_vertex_position";
                    assert(it.offset_in_bytes == 29, "Ufbx_Metadata.may_contain_missing_vertex_position has unexpected offset % instead of 29", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.may_contain_missing_vertex_position has unexpected size % instead of 1", it.type.runtime_size);
                case "may_contain_broken_elements";
                    assert(it.offset_in_bytes == 30, "Ufbx_Metadata.may_contain_broken_elements has unexpected offset % instead of 30", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.may_contain_broken_elements has unexpected size % instead of 1", it.type.runtime_size);
                case "is_unsafe";
                    assert(it.offset_in_bytes == 31, "Ufbx_Metadata.is_unsafe has unexpected offset % instead of 31", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.is_unsafe has unexpected size % instead of 1", it.type.runtime_size);
                case "has_warning";
                    assert(it.offset_in_bytes == 32, "Ufbx_Metadata.has_warning has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 15, "Ufbx_Metadata.has_warning has unexpected size % instead of 15", it.type.runtime_size);
                case "creator";
                    assert(it.offset_in_bytes == 48, "Ufbx_Metadata.creator has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.creator has unexpected size % instead of 16", it.type.runtime_size);
                case "big_endian";
                    assert(it.offset_in_bytes == 64, "Ufbx_Metadata.big_endian has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.big_endian has unexpected size % instead of 1", it.type.runtime_size);
                case "filename";
                    assert(it.offset_in_bytes == 72, "Ufbx_Metadata.filename has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "relative_root";
                    assert(it.offset_in_bytes == 88, "Ufbx_Metadata.relative_root has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.relative_root has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 104, "Ufbx_Metadata.raw_filename has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_relative_root";
                    assert(it.offset_in_bytes == 120, "Ufbx_Metadata.raw_relative_root has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.raw_relative_root has unexpected size % instead of 16", it.type.runtime_size);
                case "exporter";
                    assert(it.offset_in_bytes == 136, "Ufbx_Metadata.exporter has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.exporter has unexpected size % instead of 4", it.type.runtime_size);
                case "exporter_version";
                    assert(it.offset_in_bytes == 140, "Ufbx_Metadata.exporter_version has unexpected offset % instead of 140", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.exporter_version has unexpected size % instead of 4", it.type.runtime_size);
                case "scene_props";
                    assert(it.offset_in_bytes == 144, "Ufbx_Metadata.scene_props has unexpected offset % instead of 144", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "Ufbx_Metadata.scene_props has unexpected size % instead of 32", it.type.runtime_size);
                case "original_application";
                    assert(it.offset_in_bytes == 176, "Ufbx_Metadata.original_application has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Metadata.original_application has unexpected size % instead of 48", it.type.runtime_size);
                case "latest_application";
                    assert(it.offset_in_bytes == 224, "Ufbx_Metadata.latest_application has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "Ufbx_Metadata.latest_application has unexpected size % instead of 48", it.type.runtime_size);
                case "thumbnail";
                    assert(it.offset_in_bytes == 272, "Ufbx_Metadata.thumbnail has unexpected offset % instead of 272", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "Ufbx_Metadata.thumbnail has unexpected size % instead of 64", it.type.runtime_size);
                case "geometry_ignored";
                    assert(it.offset_in_bytes == 336, "Ufbx_Metadata.geometry_ignored has unexpected offset % instead of 336", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.geometry_ignored has unexpected size % instead of 1", it.type.runtime_size);
                case "animation_ignored";
                    assert(it.offset_in_bytes == 337, "Ufbx_Metadata.animation_ignored has unexpected offset % instead of 337", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.animation_ignored has unexpected size % instead of 1", it.type.runtime_size);
                case "embedded_ignored";
                    assert(it.offset_in_bytes == 338, "Ufbx_Metadata.embedded_ignored has unexpected offset % instead of 338", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.embedded_ignored has unexpected size % instead of 1", it.type.runtime_size);
                case "max_face_triangles";
                    assert(it.offset_in_bytes == 344, "Ufbx_Metadata.max_face_triangles has unexpected offset % instead of 344", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.max_face_triangles has unexpected size % instead of 8", it.type.runtime_size);
                case "result_memory_used";
                    assert(it.offset_in_bytes == 352, "Ufbx_Metadata.result_memory_used has unexpected offset % instead of 352", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.result_memory_used has unexpected size % instead of 8", it.type.runtime_size);
                case "temp_memory_used";
                    assert(it.offset_in_bytes == 360, "Ufbx_Metadata.temp_memory_used has unexpected offset % instead of 360", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.temp_memory_used has unexpected size % instead of 8", it.type.runtime_size);
                case "result_allocs";
                    assert(it.offset_in_bytes == 368, "Ufbx_Metadata.result_allocs has unexpected offset % instead of 368", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.result_allocs has unexpected size % instead of 8", it.type.runtime_size);
                case "temp_allocs";
                    assert(it.offset_in_bytes == 376, "Ufbx_Metadata.temp_allocs has unexpected offset % instead of 376", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.temp_allocs has unexpected size % instead of 8", it.type.runtime_size);
                case "element_buffer_size";
                    assert(it.offset_in_bytes == 384, "Ufbx_Metadata.element_buffer_size has unexpected offset % instead of 384", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.element_buffer_size has unexpected size % instead of 8", it.type.runtime_size);
                case "num_shader_textures";
                    assert(it.offset_in_bytes == 392, "Ufbx_Metadata.num_shader_textures has unexpected offset % instead of 392", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.num_shader_textures has unexpected size % instead of 8", it.type.runtime_size);
                case "bone_prop_size_unit";
                    assert(it.offset_in_bytes == 400, "Ufbx_Metadata.bone_prop_size_unit has unexpected offset % instead of 400", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.bone_prop_size_unit has unexpected size % instead of 4", it.type.runtime_size);
                case "bone_prop_limb_length_relative";
                    assert(it.offset_in_bytes == 404, "Ufbx_Metadata.bone_prop_limb_length_relative has unexpected offset % instead of 404", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Metadata.bone_prop_limb_length_relative has unexpected size % instead of 1", it.type.runtime_size);
                case "ortho_size_unit";
                    assert(it.offset_in_bytes == 408, "Ufbx_Metadata.ortho_size_unit has unexpected offset % instead of 408", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.ortho_size_unit has unexpected size % instead of 4", it.type.runtime_size);
                case "ktime_second";
                    assert(it.offset_in_bytes == 416, "Ufbx_Metadata.ktime_second has unexpected offset % instead of 416", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Metadata.ktime_second has unexpected size % instead of 8", it.type.runtime_size);
                case "original_file_path";
                    assert(it.offset_in_bytes == 424, "Ufbx_Metadata.original_file_path has unexpected offset % instead of 424", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.original_file_path has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_original_file_path";
                    assert(it.offset_in_bytes == 440, "Ufbx_Metadata.raw_original_file_path has unexpected offset % instead of 440", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.raw_original_file_path has unexpected size % instead of 16", it.type.runtime_size);
                case "space_conversion";
                    assert(it.offset_in_bytes == 456, "Ufbx_Metadata.space_conversion has unexpected offset % instead of 456", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.space_conversion has unexpected size % instead of 4", it.type.runtime_size);
                case "root_rotation";
                    assert(it.offset_in_bytes == 460, "Ufbx_Metadata.root_rotation has unexpected offset % instead of 460", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Metadata.root_rotation has unexpected size % instead of 16", it.type.runtime_size);
                case "root_scale";
                    assert(it.offset_in_bytes == 476, "Ufbx_Metadata.root_scale has unexpected offset % instead of 476", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.root_scale has unexpected size % instead of 4", it.type.runtime_size);
                case "mirror_axis";
                    assert(it.offset_in_bytes == 480, "Ufbx_Metadata.mirror_axis has unexpected offset % instead of 480", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.mirror_axis has unexpected size % instead of 4", it.type.runtime_size);
                case "geometry_scale";
                    assert(it.offset_in_bytes == 484, "Ufbx_Metadata.geometry_scale has unexpected offset % instead of 484", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Metadata.geometry_scale has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Metadata) == 488, "Ufbx_Metadata has size % instead of 488", size_of(Ufbx_Metadata));
    }

    {
        info := type_info(Ufbx_Scene_Settings);
        for info.members {
            if it.name == {
                case "props";
                    assert(it.offset_in_bytes == 0, "Ufbx_Scene_Settings.props has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "Ufbx_Scene_Settings.props has unexpected size % instead of 32", it.type.runtime_size);
                case "axes";
                    assert(it.offset_in_bytes == 32, "Ufbx_Scene_Settings.axes has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Scene_Settings.axes has unexpected size % instead of 12", it.type.runtime_size);
                case "unit_meters";
                    assert(it.offset_in_bytes == 44, "Ufbx_Scene_Settings.unit_meters has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Scene_Settings.unit_meters has unexpected size % instead of 4", it.type.runtime_size);
                case "frames_per_second";
                    assert(it.offset_in_bytes == 48, "Ufbx_Scene_Settings.frames_per_second has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Scene_Settings.frames_per_second has unexpected size % instead of 8", it.type.runtime_size);
                case "ambient_color";
                    assert(it.offset_in_bytes == 56, "Ufbx_Scene_Settings.ambient_color has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Scene_Settings.ambient_color has unexpected size % instead of 12", it.type.runtime_size);
                case "default_camera";
                    assert(it.offset_in_bytes == 72, "Ufbx_Scene_Settings.default_camera has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Scene_Settings.default_camera has unexpected size % instead of 16", it.type.runtime_size);
                case "time_mode";
                    assert(it.offset_in_bytes == 88, "Ufbx_Scene_Settings.time_mode has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Scene_Settings.time_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "time_protocol";
                    assert(it.offset_in_bytes == 92, "Ufbx_Scene_Settings.time_protocol has unexpected offset % instead of 92", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Scene_Settings.time_protocol has unexpected size % instead of 4", it.type.runtime_size);
                case "snap_mode";
                    assert(it.offset_in_bytes == 96, "Ufbx_Scene_Settings.snap_mode has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Scene_Settings.snap_mode has unexpected size % instead of 4", it.type.runtime_size);
                case "original_axis_up";
                    assert(it.offset_in_bytes == 100, "Ufbx_Scene_Settings.original_axis_up has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Scene_Settings.original_axis_up has unexpected size % instead of 4", it.type.runtime_size);
                case "original_unit_meters";
                    assert(it.offset_in_bytes == 104, "Ufbx_Scene_Settings.original_unit_meters has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Scene_Settings.original_unit_meters has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Scene_Settings) == 112, "Ufbx_Scene_Settings has size % instead of 112", size_of(Ufbx_Scene_Settings));
    }

    {
        info := type_info(Ufbx_Scene);
        for info.members {
            if it.name == {
                case "metadata";
                    assert(it.offset_in_bytes == 0, "Ufbx_Scene.metadata has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 488, "Ufbx_Scene.metadata has unexpected size % instead of 488", it.type.runtime_size);
                case "settings";
                    assert(it.offset_in_bytes == 488, "Ufbx_Scene.settings has unexpected offset % instead of 488", it.offset_in_bytes);
                    assert(it.type.runtime_size == 112, "Ufbx_Scene.settings has unexpected size % instead of 112", it.type.runtime_size);
                case "root_node";
                    assert(it.offset_in_bytes == 600, "Ufbx_Scene.root_node has unexpected offset % instead of 600", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Scene.root_node has unexpected size % instead of 8", it.type.runtime_size);
                case "anim";
                    assert(it.offset_in_bytes == 608, "Ufbx_Scene.anim has unexpected offset % instead of 608", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Scene.anim has unexpected size % instead of 8", it.type.runtime_size);
                case "texture_files";
                    assert(it.offset_in_bytes == 1288, "Ufbx_Scene.texture_files has unexpected offset % instead of 1288", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Scene.texture_files has unexpected size % instead of 16", it.type.runtime_size);
                case "elements";
                    assert(it.offset_in_bytes == 1304, "Ufbx_Scene.elements has unexpected offset % instead of 1304", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Scene.elements has unexpected size % instead of 16", it.type.runtime_size);
                case "connections_src";
                    assert(it.offset_in_bytes == 1320, "Ufbx_Scene.connections_src has unexpected offset % instead of 1320", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Scene.connections_src has unexpected size % instead of 16", it.type.runtime_size);
                case "connections_dst";
                    assert(it.offset_in_bytes == 1336, "Ufbx_Scene.connections_dst has unexpected offset % instead of 1336", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Scene.connections_dst has unexpected size % instead of 16", it.type.runtime_size);
                case "elements_by_name";
                    assert(it.offset_in_bytes == 1352, "Ufbx_Scene.elements_by_name has unexpected offset % instead of 1352", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Scene.elements_by_name has unexpected size % instead of 16", it.type.runtime_size);
                case "dom_root";
                    assert(it.offset_in_bytes == 1368, "Ufbx_Scene.dom_root has unexpected offset % instead of 1368", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Scene.dom_root has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Scene) == 1376, "Ufbx_Scene has size % instead of 1376", size_of(Ufbx_Scene));
    }

    {
        info := type_info(Ufbx_Curve_Point);
        for info.members {
            if it.name == {
                case "valid";
                    assert(it.offset_in_bytes == 0, "Ufbx_Curve_Point.valid has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Curve_Point.valid has unexpected size % instead of 1", it.type.runtime_size);
                case "position";
                    assert(it.offset_in_bytes == 4, "Ufbx_Curve_Point.position has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Curve_Point.position has unexpected size % instead of 12", it.type.runtime_size);
                case "derivative";
                    assert(it.offset_in_bytes == 16, "Ufbx_Curve_Point.derivative has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Curve_Point.derivative has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Curve_Point) == 28, "Ufbx_Curve_Point has size % instead of 28", size_of(Ufbx_Curve_Point));
    }

    {
        info := type_info(Ufbx_Surface_Point);
        for info.members {
            if it.name == {
                case "valid";
                    assert(it.offset_in_bytes == 0, "Ufbx_Surface_Point.valid has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Surface_Point.valid has unexpected size % instead of 1", it.type.runtime_size);
                case "position";
                    assert(it.offset_in_bytes == 4, "Ufbx_Surface_Point.position has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Surface_Point.position has unexpected size % instead of 12", it.type.runtime_size);
                case "derivative_u";
                    assert(it.offset_in_bytes == 16, "Ufbx_Surface_Point.derivative_u has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Surface_Point.derivative_u has unexpected size % instead of 12", it.type.runtime_size);
                case "derivative_v";
                    assert(it.offset_in_bytes == 28, "Ufbx_Surface_Point.derivative_v has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Surface_Point.derivative_v has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Surface_Point) == 40, "Ufbx_Surface_Point has size % instead of 40", size_of(Ufbx_Surface_Point));
    }

    {
        info := type_info(Ufbx_Topo_Edge);
        for info.members {
            if it.name == {
                case "index";
                    assert(it.offset_in_bytes == 0, "Ufbx_Topo_Edge.index has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.index has unexpected size % instead of 4", it.type.runtime_size);
                case "next";
                    assert(it.offset_in_bytes == 4, "Ufbx_Topo_Edge.next has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.next has unexpected size % instead of 4", it.type.runtime_size);
                case "prev";
                    assert(it.offset_in_bytes == 8, "Ufbx_Topo_Edge.prev has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.prev has unexpected size % instead of 4", it.type.runtime_size);
                case "twin";
                    assert(it.offset_in_bytes == 12, "Ufbx_Topo_Edge.twin has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.twin has unexpected size % instead of 4", it.type.runtime_size);
                case "face";
                    assert(it.offset_in_bytes == 16, "Ufbx_Topo_Edge.face has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.face has unexpected size % instead of 4", it.type.runtime_size);
                case "edge";
                    assert(it.offset_in_bytes == 20, "Ufbx_Topo_Edge.edge has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.edge has unexpected size % instead of 4", it.type.runtime_size);
                case "flags";
                    assert(it.offset_in_bytes == 24, "Ufbx_Topo_Edge.flags has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Topo_Edge.flags has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Topo_Edge) == 28, "Ufbx_Topo_Edge has size % instead of 28", size_of(Ufbx_Topo_Edge));
    }

    {
        info := type_info(Ufbx_Vertex_Stream);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Vertex_Stream.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Stream.data has unexpected size % instead of 8", it.type.runtime_size);
                case "vertex_count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Vertex_Stream.vertex_count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Stream.vertex_count has unexpected size % instead of 8", it.type.runtime_size);
                case "vertex_size";
                    assert(it.offset_in_bytes == 16, "Ufbx_Vertex_Stream.vertex_size has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Vertex_Stream.vertex_size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Vertex_Stream) == 24, "Ufbx_Vertex_Stream has size % instead of 24", size_of(Ufbx_Vertex_Stream));
    }

    {
        info := type_info(Ufbx_Allocator);
        for info.members {
            if it.name == {
                case "alloc_fn";
                    assert(it.offset_in_bytes == 0, "Ufbx_Allocator.alloc_fn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator.alloc_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "realloc_fn";
                    assert(it.offset_in_bytes == 8, "Ufbx_Allocator.realloc_fn has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator.realloc_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "free_fn";
                    assert(it.offset_in_bytes == 16, "Ufbx_Allocator.free_fn has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator.free_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "free_allocator_fn";
                    assert(it.offset_in_bytes == 24, "Ufbx_Allocator.free_allocator_fn has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator.free_allocator_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 32, "Ufbx_Allocator.user has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator.user has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Allocator) == 40, "Ufbx_Allocator has size % instead of 40", size_of(Ufbx_Allocator));
    }

    {
        info := type_info(Ufbx_Allocator_Opts);
        for info.members {
            if it.name == {
                case "allocator";
                    assert(it.offset_in_bytes == 0, "Ufbx_Allocator_Opts.allocator has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Allocator_Opts.allocator has unexpected size % instead of 40", it.type.runtime_size);
                case "memory_limit";
                    assert(it.offset_in_bytes == 40, "Ufbx_Allocator_Opts.memory_limit has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator_Opts.memory_limit has unexpected size % instead of 8", it.type.runtime_size);
                case "allocation_limit";
                    assert(it.offset_in_bytes == 48, "Ufbx_Allocator_Opts.allocation_limit has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator_Opts.allocation_limit has unexpected size % instead of 8", it.type.runtime_size);
                case "huge_threshold";
                    assert(it.offset_in_bytes == 56, "Ufbx_Allocator_Opts.huge_threshold has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator_Opts.huge_threshold has unexpected size % instead of 8", it.type.runtime_size);
                case "max_chunk_size";
                    assert(it.offset_in_bytes == 64, "Ufbx_Allocator_Opts.max_chunk_size has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Allocator_Opts.max_chunk_size has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Allocator_Opts) == 72, "Ufbx_Allocator_Opts has size % instead of 72", size_of(Ufbx_Allocator_Opts));
    }

    {
        info := type_info(Ufbx_Stream);
        for info.members {
            if it.name == {
                case "read_fn";
                    assert(it.offset_in_bytes == 0, "Ufbx_Stream.read_fn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stream.read_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "skip_fn";
                    assert(it.offset_in_bytes == 8, "Ufbx_Stream.skip_fn has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stream.skip_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "size_fn";
                    assert(it.offset_in_bytes == 16, "Ufbx_Stream.size_fn has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stream.size_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "close_fn";
                    assert(it.offset_in_bytes == 24, "Ufbx_Stream.close_fn has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stream.close_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 32, "Ufbx_Stream.user has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Stream.user has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Stream) == 40, "Ufbx_Stream has size % instead of 40", size_of(Ufbx_Stream));
    }

    {
        info := type_info(Ufbx_Open_File_Info);
        for info.members {
            if it.name == {
                case "_context";
                    assert(it.offset_in_bytes == 0, "Ufbx_Open_File_Info._context has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Open_File_Info._context has unexpected size % instead of 8", it.type.runtime_size);
                case "type";
                    assert(it.offset_in_bytes == 8, "Ufbx_Open_File_Info.type has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Open_File_Info.type has unexpected size % instead of 4", it.type.runtime_size);
                case "original_filename";
                    assert(it.offset_in_bytes == 16, "Ufbx_Open_File_Info.original_filename has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Open_File_Info.original_filename has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Open_File_Info) == 32, "Ufbx_Open_File_Info has size % instead of 32", size_of(Ufbx_Open_File_Info));
    }

    {
        info := type_info(Ufbx_Open_File_Cb);
        for info.members {
            if it.name == {
                case "fn";
                    assert(it.offset_in_bytes == 0, "Ufbx_Open_File_Cb.fn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Open_File_Cb.fn has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 8, "Ufbx_Open_File_Cb.user has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Open_File_Cb.user has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Open_File_Cb) == 16, "Ufbx_Open_File_Cb has size % instead of 16", size_of(Ufbx_Open_File_Cb));
    }

    {
        info := type_info(Ufbx_Open_File_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Open_File_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Open_File_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Open_File_Opts.allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Open_File_Opts.allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "filename_null_terminated";
                    assert(it.offset_in_bytes == 80, "Ufbx_Open_File_Opts.filename_null_terminated has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Open_File_Opts.filename_null_terminated has unexpected size % instead of 1", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 84, "Ufbx_Open_File_Opts._end_zero has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Open_File_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Open_File_Opts) == 88, "Ufbx_Open_File_Opts has size % instead of 88", size_of(Ufbx_Open_File_Opts));
    }

    {
        info := type_info(Ufbx_Close_Memory_Cb);
        for info.members {
            if it.name == {
                case "fn";
                    assert(it.offset_in_bytes == 0, "Ufbx_Close_Memory_Cb.fn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Close_Memory_Cb.fn has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 8, "Ufbx_Close_Memory_Cb.user has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Close_Memory_Cb.user has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Close_Memory_Cb) == 16, "Ufbx_Close_Memory_Cb has size % instead of 16", size_of(Ufbx_Close_Memory_Cb));
    }

    {
        info := type_info(Ufbx_Open_Memory_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Open_Memory_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Open_Memory_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Open_Memory_Opts.allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Open_Memory_Opts.allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "no_copy";
                    assert(it.offset_in_bytes == 80, "Ufbx_Open_Memory_Opts.no_copy has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Open_Memory_Opts.no_copy has unexpected size % instead of 1", it.type.runtime_size);
                case "close_cb";
                    assert(it.offset_in_bytes == 88, "Ufbx_Open_Memory_Opts.close_cb has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Open_Memory_Opts.close_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 104, "Ufbx_Open_Memory_Opts._end_zero has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Open_Memory_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Open_Memory_Opts) == 112, "Ufbx_Open_Memory_Opts has size % instead of 112", size_of(Ufbx_Open_Memory_Opts));
    }

    {
        info := type_info(Ufbx_Error_Frame);
        for info.members {
            if it.name == {
                case "source_line";
                    assert(it.offset_in_bytes == 0, "Ufbx_Error_Frame.source_line has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Error_Frame.source_line has unexpected size % instead of 4", it.type.runtime_size);
                case "function";
                    assert(it.offset_in_bytes == 8, "Ufbx_Error_Frame.function has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Error_Frame.function has unexpected size % instead of 16", it.type.runtime_size);
                case "description";
                    assert(it.offset_in_bytes == 24, "Ufbx_Error_Frame.description has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Error_Frame.description has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Error_Frame) == 40, "Ufbx_Error_Frame has size % instead of 40", size_of(Ufbx_Error_Frame));
    }

    {
        info := type_info(Ufbx_Error);
        for info.members {
            if it.name == {
                case "type";
                    assert(it.offset_in_bytes == 0, "Ufbx_Error.type has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Error.type has unexpected size % instead of 4", it.type.runtime_size);
                case "description";
                    assert(it.offset_in_bytes == 8, "Ufbx_Error.description has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Error.description has unexpected size % instead of 16", it.type.runtime_size);
                case "stack_size";
                    assert(it.offset_in_bytes == 24, "Ufbx_Error.stack_size has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Error.stack_size has unexpected size % instead of 4", it.type.runtime_size);
                case "stack";
                    assert(it.offset_in_bytes == 32, "Ufbx_Error.stack has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 320, "Ufbx_Error.stack has unexpected size % instead of 320", it.type.runtime_size);
                case "info_length";
                    assert(it.offset_in_bytes == 352, "Ufbx_Error.info_length has unexpected offset % instead of 352", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Error.info_length has unexpected size % instead of 8", it.type.runtime_size);
                case "info";
                    assert(it.offset_in_bytes == 360, "Ufbx_Error.info has unexpected offset % instead of 360", it.offset_in_bytes);
                    assert(it.type.runtime_size == 256, "Ufbx_Error.info has unexpected size % instead of 256", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Error) == 616, "Ufbx_Error has size % instead of 616", size_of(Ufbx_Error));
    }

    {
        info := type_info(Ufbx_Progress);
        for info.members {
            if it.name == {
                case "bytes_read";
                    assert(it.offset_in_bytes == 0, "Ufbx_Progress.bytes_read has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Progress.bytes_read has unexpected size % instead of 8", it.type.runtime_size);
                case "bytes_total";
                    assert(it.offset_in_bytes == 8, "Ufbx_Progress.bytes_total has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Progress.bytes_total has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Progress) == 16, "Ufbx_Progress has size % instead of 16", size_of(Ufbx_Progress));
    }

    {
        info := type_info(Ufbx_Progress_Cb);
        for info.members {
            if it.name == {
                case "fn";
                    assert(it.offset_in_bytes == 0, "Ufbx_Progress_Cb.fn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Progress_Cb.fn has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 8, "Ufbx_Progress_Cb.user has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Progress_Cb.user has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Progress_Cb) == 16, "Ufbx_Progress_Cb has size % instead of 16", size_of(Ufbx_Progress_Cb));
    }

    {
        info := type_info(Ufbx_Inflate_Input);
        for info.members {
            if it.name == {
                case "total_size";
                    assert(it.offset_in_bytes == 0, "Ufbx_Inflate_Input.total_size has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.total_size has unexpected size % instead of 8", it.type.runtime_size);
                case "data";
                    assert(it.offset_in_bytes == 8, "Ufbx_Inflate_Input.data has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.data has unexpected size % instead of 8", it.type.runtime_size);
                case "data_size";
                    assert(it.offset_in_bytes == 16, "Ufbx_Inflate_Input.data_size has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.data_size has unexpected size % instead of 8", it.type.runtime_size);
                case "buffer";
                    assert(it.offset_in_bytes == 24, "Ufbx_Inflate_Input.buffer has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.buffer has unexpected size % instead of 8", it.type.runtime_size);
                case "buffer_size";
                    assert(it.offset_in_bytes == 32, "Ufbx_Inflate_Input.buffer_size has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.buffer_size has unexpected size % instead of 8", it.type.runtime_size);
                case "read_fn";
                    assert(it.offset_in_bytes == 40, "Ufbx_Inflate_Input.read_fn has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.read_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "read_user";
                    assert(it.offset_in_bytes == 48, "Ufbx_Inflate_Input.read_user has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.read_user has unexpected size % instead of 8", it.type.runtime_size);
                case "progress_cb";
                    assert(it.offset_in_bytes == 56, "Ufbx_Inflate_Input.progress_cb has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Inflate_Input.progress_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "progress_interval_hint";
                    assert(it.offset_in_bytes == 72, "Ufbx_Inflate_Input.progress_interval_hint has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.progress_interval_hint has unexpected size % instead of 8", it.type.runtime_size);
                case "progress_size_before";
                    assert(it.offset_in_bytes == 80, "Ufbx_Inflate_Input.progress_size_before has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.progress_size_before has unexpected size % instead of 8", it.type.runtime_size);
                case "progress_size_after";
                    assert(it.offset_in_bytes == 88, "Ufbx_Inflate_Input.progress_size_after has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.progress_size_after has unexpected size % instead of 8", it.type.runtime_size);
                case "no_header";
                    assert(it.offset_in_bytes == 96, "Ufbx_Inflate_Input.no_header has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Inflate_Input.no_header has unexpected size % instead of 1", it.type.runtime_size);
                case "no_checksum";
                    assert(it.offset_in_bytes == 97, "Ufbx_Inflate_Input.no_checksum has unexpected offset % instead of 97", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Inflate_Input.no_checksum has unexpected size % instead of 1", it.type.runtime_size);
                case "internal_fast_bits";
                    assert(it.offset_in_bytes == 104, "Ufbx_Inflate_Input.internal_fast_bits has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Inflate_Input.internal_fast_bits has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Inflate_Input) == 112, "Ufbx_Inflate_Input has size % instead of 112", size_of(Ufbx_Inflate_Input));
    }

    {
        info := type_info(Ufbx_Inflate_Retain);
        for info.members {
            if it.name == {
                case "initialized";
                    assert(it.offset_in_bytes == 0, "Ufbx_Inflate_Retain.initialized has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Inflate_Retain.initialized has unexpected size % instead of 1", it.type.runtime_size);
                case "data";
                    assert(it.offset_in_bytes == 8, "Ufbx_Inflate_Retain.data has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8192, "Ufbx_Inflate_Retain.data has unexpected size % instead of 8192", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Inflate_Retain) == 8200, "Ufbx_Inflate_Retain has size % instead of 8200", size_of(Ufbx_Inflate_Retain));
    }

    {
        info := type_info(Ufbx_Baked_Vec3);
        for info.members {
            if it.name == {
                case "time";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Vec3.time has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Vec3.time has unexpected size % instead of 8", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Vec3.value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Baked_Vec3.value has unexpected size % instead of 12", it.type.runtime_size);
                case "flags";
                    assert(it.offset_in_bytes == 20, "Ufbx_Baked_Vec3.flags has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Baked_Vec3.flags has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Vec3) == 24, "Ufbx_Baked_Vec3 has size % instead of 24", size_of(Ufbx_Baked_Vec3));
    }

    {
        info := type_info(Ufbx_Baked_Vec3_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Vec3_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Vec3_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Vec3_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Vec3_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Vec3_List) == 16, "Ufbx_Baked_Vec3_List has size % instead of 16", size_of(Ufbx_Baked_Vec3_List));
    }

    {
        info := type_info(Ufbx_Baked_Quat);
        for info.members {
            if it.name == {
                case "time";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Quat.time has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Quat.time has unexpected size % instead of 8", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Quat.value has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Quat.value has unexpected size % instead of 16", it.type.runtime_size);
                case "flags";
                    assert(it.offset_in_bytes == 24, "Ufbx_Baked_Quat.flags has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Baked_Quat.flags has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Quat) == 32, "Ufbx_Baked_Quat has size % instead of 32", size_of(Ufbx_Baked_Quat));
    }

    {
        info := type_info(Ufbx_Baked_Quat_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Quat_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Quat_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Quat_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Quat_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Quat_List) == 16, "Ufbx_Baked_Quat_List has size % instead of 16", size_of(Ufbx_Baked_Quat_List));
    }

    {
        info := type_info(Ufbx_Baked_Node);
        for info.members {
            if it.name == {
                case "typed_id";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Node.typed_id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Baked_Node.typed_id has unexpected size % instead of 4", it.type.runtime_size);
                case "element_id";
                    assert(it.offset_in_bytes == 4, "Ufbx_Baked_Node.element_id has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Baked_Node.element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "constant_translation";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Node.constant_translation has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Baked_Node.constant_translation has unexpected size % instead of 1", it.type.runtime_size);
                case "constant_rotation";
                    assert(it.offset_in_bytes == 9, "Ufbx_Baked_Node.constant_rotation has unexpected offset % instead of 9", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Baked_Node.constant_rotation has unexpected size % instead of 1", it.type.runtime_size);
                case "constant_scale";
                    assert(it.offset_in_bytes == 10, "Ufbx_Baked_Node.constant_scale has unexpected offset % instead of 10", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Baked_Node.constant_scale has unexpected size % instead of 1", it.type.runtime_size);
                case "translation_keys";
                    assert(it.offset_in_bytes == 16, "Ufbx_Baked_Node.translation_keys has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Node.translation_keys has unexpected size % instead of 16", it.type.runtime_size);
                case "rotation_keys";
                    assert(it.offset_in_bytes == 32, "Ufbx_Baked_Node.rotation_keys has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Node.rotation_keys has unexpected size % instead of 16", it.type.runtime_size);
                case "scale_keys";
                    assert(it.offset_in_bytes == 48, "Ufbx_Baked_Node.scale_keys has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Node.scale_keys has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Node) == 64, "Ufbx_Baked_Node has size % instead of 64", size_of(Ufbx_Baked_Node));
    }

    {
        info := type_info(Ufbx_Baked_Node_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Node_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Node_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Node_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Node_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Node_List) == 16, "Ufbx_Baked_Node_List has size % instead of 16", size_of(Ufbx_Baked_Node_List));
    }

    {
        info := type_info(Ufbx_Baked_Prop);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Prop.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Prop.name has unexpected size % instead of 16", it.type.runtime_size);
                case "constant_value";
                    assert(it.offset_in_bytes == 16, "Ufbx_Baked_Prop.constant_value has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Baked_Prop.constant_value has unexpected size % instead of 1", it.type.runtime_size);
                case "keys";
                    assert(it.offset_in_bytes == 24, "Ufbx_Baked_Prop.keys has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Prop.keys has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Prop) == 40, "Ufbx_Baked_Prop has size % instead of 40", size_of(Ufbx_Baked_Prop));
    }

    {
        info := type_info(Ufbx_Baked_Prop_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Prop_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Prop_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Prop_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Prop_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Prop_List) == 16, "Ufbx_Baked_Prop_List has size % instead of 16", size_of(Ufbx_Baked_Prop_List));
    }

    {
        info := type_info(Ufbx_Baked_Element);
        for info.members {
            if it.name == {
                case "element_id";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Element.element_id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Baked_Element.element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "props";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Element.props has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Element.props has unexpected size % instead of 16", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Element) == 24, "Ufbx_Baked_Element has size % instead of 24", size_of(Ufbx_Baked_Element));
    }

    {
        info := type_info(Ufbx_Baked_Element_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Element_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Element_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Element_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Element_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Element_List) == 16, "Ufbx_Baked_Element_List has size % instead of 16", size_of(Ufbx_Baked_Element_List));
    }

    {
        info := type_info(Ufbx_Baked_Anim_Metadata);
        for info.members {
            if it.name == {
                case "result_memory_used";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Anim_Metadata.result_memory_used has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim_Metadata.result_memory_used has unexpected size % instead of 8", it.type.runtime_size);
                case "temp_memory_used";
                    assert(it.offset_in_bytes == 8, "Ufbx_Baked_Anim_Metadata.temp_memory_used has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim_Metadata.temp_memory_used has unexpected size % instead of 8", it.type.runtime_size);
                case "result_allocs";
                    assert(it.offset_in_bytes == 16, "Ufbx_Baked_Anim_Metadata.result_allocs has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim_Metadata.result_allocs has unexpected size % instead of 8", it.type.runtime_size);
                case "temp_allocs";
                    assert(it.offset_in_bytes == 24, "Ufbx_Baked_Anim_Metadata.temp_allocs has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim_Metadata.temp_allocs has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Anim_Metadata) == 32, "Ufbx_Baked_Anim_Metadata has size % instead of 32", size_of(Ufbx_Baked_Anim_Metadata));
    }

    {
        info := type_info(Ufbx_Baked_Anim);
        for info.members {
            if it.name == {
                case "nodes";
                    assert(it.offset_in_bytes == 0, "Ufbx_Baked_Anim.nodes has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Anim.nodes has unexpected size % instead of 16", it.type.runtime_size);
                case "elements";
                    assert(it.offset_in_bytes == 16, "Ufbx_Baked_Anim.elements has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Baked_Anim.elements has unexpected size % instead of 16", it.type.runtime_size);
                case "playback_time_begin";
                    assert(it.offset_in_bytes == 32, "Ufbx_Baked_Anim.playback_time_begin has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim.playback_time_begin has unexpected size % instead of 8", it.type.runtime_size);
                case "playback_time_end";
                    assert(it.offset_in_bytes == 40, "Ufbx_Baked_Anim.playback_time_end has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim.playback_time_end has unexpected size % instead of 8", it.type.runtime_size);
                case "playback_duration";
                    assert(it.offset_in_bytes == 48, "Ufbx_Baked_Anim.playback_duration has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim.playback_duration has unexpected size % instead of 8", it.type.runtime_size);
                case "key_time_min";
                    assert(it.offset_in_bytes == 56, "Ufbx_Baked_Anim.key_time_min has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim.key_time_min has unexpected size % instead of 8", it.type.runtime_size);
                case "key_time_max";
                    assert(it.offset_in_bytes == 64, "Ufbx_Baked_Anim.key_time_max has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Baked_Anim.key_time_max has unexpected size % instead of 8", it.type.runtime_size);
                case "metadata";
                    assert(it.offset_in_bytes == 72, "Ufbx_Baked_Anim.metadata has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "Ufbx_Baked_Anim.metadata has unexpected size % instead of 32", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Baked_Anim) == 104, "Ufbx_Baked_Anim has size % instead of 104", size_of(Ufbx_Baked_Anim));
    }

    {
        info := type_info(Ufbx_Thread_Pool_Info);
        for info.members {
            if it.name == {
                case "max_concurrent_tasks";
                    assert(it.offset_in_bytes == 0, "Ufbx_Thread_Pool_Info.max_concurrent_tasks has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Thread_Pool_Info.max_concurrent_tasks has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Thread_Pool_Info) == 4, "Ufbx_Thread_Pool_Info has size % instead of 4", size_of(Ufbx_Thread_Pool_Info));
    }

    {
        info := type_info(Ufbx_Thread_Pool);
        for info.members {
            if it.name == {
                case "init_fn";
                    assert(it.offset_in_bytes == 0, "Ufbx_Thread_Pool.init_fn has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Pool.init_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "run_fn";
                    assert(it.offset_in_bytes == 8, "Ufbx_Thread_Pool.run_fn has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Pool.run_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "wait_fn";
                    assert(it.offset_in_bytes == 16, "Ufbx_Thread_Pool.wait_fn has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Pool.wait_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "free_fn";
                    assert(it.offset_in_bytes == 24, "Ufbx_Thread_Pool.free_fn has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Pool.free_fn has unexpected size % instead of 8", it.type.runtime_size);
                case "user";
                    assert(it.offset_in_bytes == 32, "Ufbx_Thread_Pool.user has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Pool.user has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Thread_Pool) == 40, "Ufbx_Thread_Pool has size % instead of 40", size_of(Ufbx_Thread_Pool));
    }

    {
        info := type_info(Ufbx_Thread_Opts);
        for info.members {
            if it.name == {
                case "pool";
                    assert(it.offset_in_bytes == 0, "Ufbx_Thread_Opts.pool has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Thread_Opts.pool has unexpected size % instead of 40", it.type.runtime_size);
                case "num_tasks";
                    assert(it.offset_in_bytes == 40, "Ufbx_Thread_Opts.num_tasks has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Opts.num_tasks has unexpected size % instead of 8", it.type.runtime_size);
                case "memory_limit";
                    assert(it.offset_in_bytes == 48, "Ufbx_Thread_Opts.memory_limit has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Thread_Opts.memory_limit has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Thread_Opts) == 56, "Ufbx_Thread_Opts has size % instead of 56", size_of(Ufbx_Thread_Opts));
    }

    {
        info := type_info(Ufbx_Load_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Load_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Load_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Load_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Load_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Load_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "thread_opts";
                    assert(it.offset_in_bytes == 152, "Ufbx_Load_Opts.thread_opts has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 56, "Ufbx_Load_Opts.thread_opts has unexpected size % instead of 56", it.type.runtime_size);
                case "ignore_geometry";
                    assert(it.offset_in_bytes == 208, "Ufbx_Load_Opts.ignore_geometry has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.ignore_geometry has unexpected size % instead of 1", it.type.runtime_size);
                case "ignore_animation";
                    assert(it.offset_in_bytes == 209, "Ufbx_Load_Opts.ignore_animation has unexpected offset % instead of 209", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.ignore_animation has unexpected size % instead of 1", it.type.runtime_size);
                case "ignore_embedded";
                    assert(it.offset_in_bytes == 210, "Ufbx_Load_Opts.ignore_embedded has unexpected offset % instead of 210", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.ignore_embedded has unexpected size % instead of 1", it.type.runtime_size);
                case "ignore_all_content";
                    assert(it.offset_in_bytes == 211, "Ufbx_Load_Opts.ignore_all_content has unexpected offset % instead of 211", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.ignore_all_content has unexpected size % instead of 1", it.type.runtime_size);
                case "evaluate_skinning";
                    assert(it.offset_in_bytes == 212, "Ufbx_Load_Opts.evaluate_skinning has unexpected offset % instead of 212", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.evaluate_skinning has unexpected size % instead of 1", it.type.runtime_size);
                case "evaluate_caches";
                    assert(it.offset_in_bytes == 213, "Ufbx_Load_Opts.evaluate_caches has unexpected offset % instead of 213", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.evaluate_caches has unexpected size % instead of 1", it.type.runtime_size);
                case "load_external_files";
                    assert(it.offset_in_bytes == 214, "Ufbx_Load_Opts.load_external_files has unexpected offset % instead of 214", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.load_external_files has unexpected size % instead of 1", it.type.runtime_size);
                case "ignore_missing_external_files";
                    assert(it.offset_in_bytes == 215, "Ufbx_Load_Opts.ignore_missing_external_files has unexpected offset % instead of 215", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.ignore_missing_external_files has unexpected size % instead of 1", it.type.runtime_size);
                case "skip_skin_vertices";
                    assert(it.offset_in_bytes == 216, "Ufbx_Load_Opts.skip_skin_vertices has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.skip_skin_vertices has unexpected size % instead of 1", it.type.runtime_size);
                case "skip_mesh_parts";
                    assert(it.offset_in_bytes == 217, "Ufbx_Load_Opts.skip_mesh_parts has unexpected offset % instead of 217", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.skip_mesh_parts has unexpected size % instead of 1", it.type.runtime_size);
                case "clean_skin_weights";
                    assert(it.offset_in_bytes == 218, "Ufbx_Load_Opts.clean_skin_weights has unexpected offset % instead of 218", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.clean_skin_weights has unexpected size % instead of 1", it.type.runtime_size);
                case "use_blender_pbr_material";
                    assert(it.offset_in_bytes == 219, "Ufbx_Load_Opts.use_blender_pbr_material has unexpected offset % instead of 219", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.use_blender_pbr_material has unexpected size % instead of 1", it.type.runtime_size);
                case "disable_quirks";
                    assert(it.offset_in_bytes == 220, "Ufbx_Load_Opts.disable_quirks has unexpected offset % instead of 220", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.disable_quirks has unexpected size % instead of 1", it.type.runtime_size);
                case "strict";
                    assert(it.offset_in_bytes == 221, "Ufbx_Load_Opts.strict has unexpected offset % instead of 221", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.strict has unexpected size % instead of 1", it.type.runtime_size);
                case "force_single_thread_ascii_parsing";
                    assert(it.offset_in_bytes == 222, "Ufbx_Load_Opts.force_single_thread_ascii_parsing has unexpected offset % instead of 222", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.force_single_thread_ascii_parsing has unexpected size % instead of 1", it.type.runtime_size);
                case "allow_unsafe";
                    assert(it.offset_in_bytes == 223, "Ufbx_Load_Opts.allow_unsafe has unexpected offset % instead of 223", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.allow_unsafe has unexpected size % instead of 1", it.type.runtime_size);
                case "index_error_handling";
                    assert(it.offset_in_bytes == 224, "Ufbx_Load_Opts.index_error_handling has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.index_error_handling has unexpected size % instead of 4", it.type.runtime_size);
                case "connect_broken_elements";
                    assert(it.offset_in_bytes == 228, "Ufbx_Load_Opts.connect_broken_elements has unexpected offset % instead of 228", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.connect_broken_elements has unexpected size % instead of 1", it.type.runtime_size);
                case "allow_nodes_out_of_root";
                    assert(it.offset_in_bytes == 229, "Ufbx_Load_Opts.allow_nodes_out_of_root has unexpected offset % instead of 229", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.allow_nodes_out_of_root has unexpected size % instead of 1", it.type.runtime_size);
                case "allow_missing_vertex_position";
                    assert(it.offset_in_bytes == 230, "Ufbx_Load_Opts.allow_missing_vertex_position has unexpected offset % instead of 230", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.allow_missing_vertex_position has unexpected size % instead of 1", it.type.runtime_size);
                case "allow_empty_faces";
                    assert(it.offset_in_bytes == 231, "Ufbx_Load_Opts.allow_empty_faces has unexpected offset % instead of 231", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.allow_empty_faces has unexpected size % instead of 1", it.type.runtime_size);
                case "generate_missing_normals";
                    assert(it.offset_in_bytes == 232, "Ufbx_Load_Opts.generate_missing_normals has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.generate_missing_normals has unexpected size % instead of 1", it.type.runtime_size);
                case "open_main_file_with_default";
                    assert(it.offset_in_bytes == 233, "Ufbx_Load_Opts.open_main_file_with_default has unexpected offset % instead of 233", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.open_main_file_with_default has unexpected size % instead of 1", it.type.runtime_size);
                case "path_separator";
                    assert(it.offset_in_bytes == 234, "Ufbx_Load_Opts.path_separator has unexpected offset % instead of 234", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.path_separator has unexpected size % instead of 1", it.type.runtime_size);
                case "node_depth_limit";
                    assert(it.offset_in_bytes == 236, "Ufbx_Load_Opts.node_depth_limit has unexpected offset % instead of 236", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.node_depth_limit has unexpected size % instead of 4", it.type.runtime_size);
                case "file_size_estimate";
                    assert(it.offset_in_bytes == 240, "Ufbx_Load_Opts.file_size_estimate has unexpected offset % instead of 240", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Load_Opts.file_size_estimate has unexpected size % instead of 8", it.type.runtime_size);
                case "read_buffer_size";
                    assert(it.offset_in_bytes == 248, "Ufbx_Load_Opts.read_buffer_size has unexpected offset % instead of 248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Load_Opts.read_buffer_size has unexpected size % instead of 8", it.type.runtime_size);
                case "filename";
                    assert(it.offset_in_bytes == 256, "Ufbx_Load_Opts.filename has unexpected offset % instead of 256", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.filename has unexpected size % instead of 16", it.type.runtime_size);
                case "raw_filename";
                    assert(it.offset_in_bytes == 272, "Ufbx_Load_Opts.raw_filename has unexpected offset % instead of 272", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.raw_filename has unexpected size % instead of 16", it.type.runtime_size);
                case "progress_cb";
                    assert(it.offset_in_bytes == 288, "Ufbx_Load_Opts.progress_cb has unexpected offset % instead of 288", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.progress_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "progress_interval_hint";
                    assert(it.offset_in_bytes == 304, "Ufbx_Load_Opts.progress_interval_hint has unexpected offset % instead of 304", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Load_Opts.progress_interval_hint has unexpected size % instead of 8", it.type.runtime_size);
                case "open_file_cb";
                    assert(it.offset_in_bytes == 312, "Ufbx_Load_Opts.open_file_cb has unexpected offset % instead of 312", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.open_file_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "geometry_transform_handling";
                    assert(it.offset_in_bytes == 328, "Ufbx_Load_Opts.geometry_transform_handling has unexpected offset % instead of 328", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.geometry_transform_handling has unexpected size % instead of 4", it.type.runtime_size);
                case "inherit_mode_handling";
                    assert(it.offset_in_bytes == 332, "Ufbx_Load_Opts.inherit_mode_handling has unexpected offset % instead of 332", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.inherit_mode_handling has unexpected size % instead of 4", it.type.runtime_size);
                case "pivot_handling";
                    assert(it.offset_in_bytes == 336, "Ufbx_Load_Opts.pivot_handling has unexpected offset % instead of 336", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.pivot_handling has unexpected size % instead of 4", it.type.runtime_size);
                case "space_conversion";
                    assert(it.offset_in_bytes == 340, "Ufbx_Load_Opts.space_conversion has unexpected offset % instead of 340", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.space_conversion has unexpected size % instead of 4", it.type.runtime_size);
                case "handedness_conversion_axis";
                    assert(it.offset_in_bytes == 344, "Ufbx_Load_Opts.handedness_conversion_axis has unexpected offset % instead of 344", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.handedness_conversion_axis has unexpected size % instead of 4", it.type.runtime_size);
                case "handedness_conversion_retain_winding";
                    assert(it.offset_in_bytes == 348, "Ufbx_Load_Opts.handedness_conversion_retain_winding has unexpected offset % instead of 348", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.handedness_conversion_retain_winding has unexpected size % instead of 1", it.type.runtime_size);
                case "reverse_winding";
                    assert(it.offset_in_bytes == 349, "Ufbx_Load_Opts.reverse_winding has unexpected offset % instead of 349", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.reverse_winding has unexpected size % instead of 1", it.type.runtime_size);
                case "target_axes";
                    assert(it.offset_in_bytes == 352, "Ufbx_Load_Opts.target_axes has unexpected offset % instead of 352", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Load_Opts.target_axes has unexpected size % instead of 12", it.type.runtime_size);
                case "target_unit_meters";
                    assert(it.offset_in_bytes == 364, "Ufbx_Load_Opts.target_unit_meters has unexpected offset % instead of 364", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.target_unit_meters has unexpected size % instead of 4", it.type.runtime_size);
                case "target_camera_axes";
                    assert(it.offset_in_bytes == 368, "Ufbx_Load_Opts.target_camera_axes has unexpected offset % instead of 368", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Load_Opts.target_camera_axes has unexpected size % instead of 12", it.type.runtime_size);
                case "target_light_axes";
                    assert(it.offset_in_bytes == 380, "Ufbx_Load_Opts.target_light_axes has unexpected offset % instead of 380", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Load_Opts.target_light_axes has unexpected size % instead of 12", it.type.runtime_size);
                case "geometry_transform_helper_name";
                    assert(it.offset_in_bytes == 392, "Ufbx_Load_Opts.geometry_transform_helper_name has unexpected offset % instead of 392", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.geometry_transform_helper_name has unexpected size % instead of 16", it.type.runtime_size);
                case "scale_helper_name";
                    assert(it.offset_in_bytes == 408, "Ufbx_Load_Opts.scale_helper_name has unexpected offset % instead of 408", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.scale_helper_name has unexpected size % instead of 16", it.type.runtime_size);
                case "normalize_normals";
                    assert(it.offset_in_bytes == 424, "Ufbx_Load_Opts.normalize_normals has unexpected offset % instead of 424", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.normalize_normals has unexpected size % instead of 1", it.type.runtime_size);
                case "normalize_tangents";
                    assert(it.offset_in_bytes == 425, "Ufbx_Load_Opts.normalize_tangents has unexpected offset % instead of 425", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.normalize_tangents has unexpected size % instead of 1", it.type.runtime_size);
                case "use_root_transform";
                    assert(it.offset_in_bytes == 426, "Ufbx_Load_Opts.use_root_transform has unexpected offset % instead of 426", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.use_root_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "root_transform";
                    assert(it.offset_in_bytes == 428, "Ufbx_Load_Opts.root_transform has unexpected offset % instead of 428", it.offset_in_bytes);
                    assert(it.type.runtime_size == 40, "Ufbx_Load_Opts.root_transform has unexpected size % instead of 40", it.type.runtime_size);
                case "key_clamp_threshold";
                    assert(it.offset_in_bytes == 472, "Ufbx_Load_Opts.key_clamp_threshold has unexpected offset % instead of 472", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Load_Opts.key_clamp_threshold has unexpected size % instead of 8", it.type.runtime_size);
                case "unicode_error_handling";
                    assert(it.offset_in_bytes == 480, "Ufbx_Load_Opts.unicode_error_handling has unexpected offset % instead of 480", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.unicode_error_handling has unexpected size % instead of 4", it.type.runtime_size);
                case "retain_vertex_attrib_w";
                    assert(it.offset_in_bytes == 484, "Ufbx_Load_Opts.retain_vertex_attrib_w has unexpected offset % instead of 484", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.retain_vertex_attrib_w has unexpected size % instead of 1", it.type.runtime_size);
                case "retain_dom";
                    assert(it.offset_in_bytes == 485, "Ufbx_Load_Opts.retain_dom has unexpected offset % instead of 485", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.retain_dom has unexpected size % instead of 1", it.type.runtime_size);
                case "file_format";
                    assert(it.offset_in_bytes == 488, "Ufbx_Load_Opts.file_format has unexpected offset % instead of 488", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.file_format has unexpected size % instead of 4", it.type.runtime_size);
                case "file_format_lookahead";
                    assert(it.offset_in_bytes == 496, "Ufbx_Load_Opts.file_format_lookahead has unexpected offset % instead of 496", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Load_Opts.file_format_lookahead has unexpected size % instead of 8", it.type.runtime_size);
                case "no_format_from_content";
                    assert(it.offset_in_bytes == 504, "Ufbx_Load_Opts.no_format_from_content has unexpected offset % instead of 504", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.no_format_from_content has unexpected size % instead of 1", it.type.runtime_size);
                case "no_format_from_extension";
                    assert(it.offset_in_bytes == 505, "Ufbx_Load_Opts.no_format_from_extension has unexpected offset % instead of 505", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.no_format_from_extension has unexpected size % instead of 1", it.type.runtime_size);
                case "obj_search_mtl_by_filename";
                    assert(it.offset_in_bytes == 506, "Ufbx_Load_Opts.obj_search_mtl_by_filename has unexpected offset % instead of 506", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.obj_search_mtl_by_filename has unexpected size % instead of 1", it.type.runtime_size);
                case "obj_merge_objects";
                    assert(it.offset_in_bytes == 507, "Ufbx_Load_Opts.obj_merge_objects has unexpected offset % instead of 507", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.obj_merge_objects has unexpected size % instead of 1", it.type.runtime_size);
                case "obj_merge_groups";
                    assert(it.offset_in_bytes == 508, "Ufbx_Load_Opts.obj_merge_groups has unexpected offset % instead of 508", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.obj_merge_groups has unexpected size % instead of 1", it.type.runtime_size);
                case "obj_split_groups";
                    assert(it.offset_in_bytes == 509, "Ufbx_Load_Opts.obj_split_groups has unexpected offset % instead of 509", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Load_Opts.obj_split_groups has unexpected size % instead of 1", it.type.runtime_size);
                case "obj_mtl_path";
                    assert(it.offset_in_bytes == 512, "Ufbx_Load_Opts.obj_mtl_path has unexpected offset % instead of 512", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.obj_mtl_path has unexpected size % instead of 16", it.type.runtime_size);
                case "obj_mtl_data";
                    assert(it.offset_in_bytes == 528, "Ufbx_Load_Opts.obj_mtl_data has unexpected offset % instead of 528", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Load_Opts.obj_mtl_data has unexpected size % instead of 16", it.type.runtime_size);
                case "obj_unit_meters";
                    assert(it.offset_in_bytes == 544, "Ufbx_Load_Opts.obj_unit_meters has unexpected offset % instead of 544", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts.obj_unit_meters has unexpected size % instead of 4", it.type.runtime_size);
                case "obj_axes";
                    assert(it.offset_in_bytes == 548, "Ufbx_Load_Opts.obj_axes has unexpected offset % instead of 548", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Ufbx_Load_Opts.obj_axes has unexpected size % instead of 12", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 560, "Ufbx_Load_Opts._end_zero has unexpected offset % instead of 560", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Load_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Load_Opts) == 568, "Ufbx_Load_Opts has size % instead of 568", size_of(Ufbx_Load_Opts));
    }

    {
        info := type_info(Ufbx_Evaluate_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Evaluate_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Evaluate_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Evaluate_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Evaluate_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Evaluate_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Evaluate_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "evaluate_skinning";
                    assert(it.offset_in_bytes == 152, "Ufbx_Evaluate_Opts.evaluate_skinning has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Evaluate_Opts.evaluate_skinning has unexpected size % instead of 1", it.type.runtime_size);
                case "evaluate_caches";
                    assert(it.offset_in_bytes == 153, "Ufbx_Evaluate_Opts.evaluate_caches has unexpected offset % instead of 153", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Evaluate_Opts.evaluate_caches has unexpected size % instead of 1", it.type.runtime_size);
                case "evaluate_flags";
                    assert(it.offset_in_bytes == 156, "Ufbx_Evaluate_Opts.evaluate_flags has unexpected offset % instead of 156", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Evaluate_Opts.evaluate_flags has unexpected size % instead of 4", it.type.runtime_size);
                case "load_external_files";
                    assert(it.offset_in_bytes == 160, "Ufbx_Evaluate_Opts.load_external_files has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Evaluate_Opts.load_external_files has unexpected size % instead of 1", it.type.runtime_size);
                case "open_file_cb";
                    assert(it.offset_in_bytes == 168, "Ufbx_Evaluate_Opts.open_file_cb has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Evaluate_Opts.open_file_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 184, "Ufbx_Evaluate_Opts._end_zero has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Evaluate_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Evaluate_Opts) == 192, "Ufbx_Evaluate_Opts has size % instead of 192", size_of(Ufbx_Evaluate_Opts));
    }

    {
        info := type_info(Ufbx_Const_Uint32_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Const_Uint32_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Uint32_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Const_Uint32_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Uint32_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Const_Uint32_List) == 16, "Ufbx_Const_Uint32_List has size % instead of 16", size_of(Ufbx_Const_Uint32_List));
    }

    {
        info := type_info(Ufbx_Const_Real_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Const_Real_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Real_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Const_Real_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Real_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Const_Real_List) == 16, "Ufbx_Const_Real_List has size % instead of 16", size_of(Ufbx_Const_Real_List));
    }

    {
        info := type_info(Ufbx_Prop_Override_Desc);
        for info.members {
            if it.name == {
                case "element_id";
                    assert(it.offset_in_bytes == 0, "Ufbx_Prop_Override_Desc.element_id has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Prop_Override_Desc.element_id has unexpected size % instead of 4", it.type.runtime_size);
                case "prop_name";
                    assert(it.offset_in_bytes == 8, "Ufbx_Prop_Override_Desc.prop_name has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop_Override_Desc.prop_name has unexpected size % instead of 16", it.type.runtime_size);
                case "value";
                    assert(it.offset_in_bytes == 24, "Ufbx_Prop_Override_Desc.value has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop_Override_Desc.value has unexpected size % instead of 16", it.type.runtime_size);
                case "value_str";
                    assert(it.offset_in_bytes == 40, "Ufbx_Prop_Override_Desc.value_str has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Prop_Override_Desc.value_str has unexpected size % instead of 16", it.type.runtime_size);
                case "value_int";
                    assert(it.offset_in_bytes == 56, "Ufbx_Prop_Override_Desc.value_int has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Prop_Override_Desc.value_int has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Prop_Override_Desc) == 64, "Ufbx_Prop_Override_Desc has size % instead of 64", size_of(Ufbx_Prop_Override_Desc));
    }

    {
        info := type_info(Ufbx_Const_Prop_Override_Desc_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Const_Prop_Override_Desc_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Prop_Override_Desc_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Const_Prop_Override_Desc_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Prop_Override_Desc_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Const_Prop_Override_Desc_List) == 16, "Ufbx_Const_Prop_Override_Desc_List has size % instead of 16", size_of(Ufbx_Const_Prop_Override_Desc_List));
    }

    {
        info := type_info(Ufbx_Const_Transform_Override_List);
        for info.members {
            if it.name == {
                case "data";
                    assert(it.offset_in_bytes == 0, "Ufbx_Const_Transform_Override_List.data has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Transform_Override_List.data has unexpected size % instead of 8", it.type.runtime_size);
                case "count";
                    assert(it.offset_in_bytes == 8, "Ufbx_Const_Transform_Override_List.count has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Const_Transform_Override_List.count has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Const_Transform_Override_List) == 16, "Ufbx_Const_Transform_Override_List has size % instead of 16", size_of(Ufbx_Const_Transform_Override_List));
    }

    {
        info := type_info(Ufbx_Anim_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Anim_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "layer_ids";
                    assert(it.offset_in_bytes == 8, "Ufbx_Anim_Opts.layer_ids has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Opts.layer_ids has unexpected size % instead of 16", it.type.runtime_size);
                case "override_layer_weights";
                    assert(it.offset_in_bytes == 24, "Ufbx_Anim_Opts.override_layer_weights has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Opts.override_layer_weights has unexpected size % instead of 16", it.type.runtime_size);
                case "prop_overrides";
                    assert(it.offset_in_bytes == 40, "Ufbx_Anim_Opts.prop_overrides has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Opts.prop_overrides has unexpected size % instead of 16", it.type.runtime_size);
                case "transform_overrides";
                    assert(it.offset_in_bytes == 56, "Ufbx_Anim_Opts.transform_overrides has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Anim_Opts.transform_overrides has unexpected size % instead of 16", it.type.runtime_size);
                case "ignore_connections";
                    assert(it.offset_in_bytes == 72, "Ufbx_Anim_Opts.ignore_connections has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Anim_Opts.ignore_connections has unexpected size % instead of 1", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Anim_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Anim_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 152, "Ufbx_Anim_Opts._end_zero has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Anim_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Anim_Opts) == 160, "Ufbx_Anim_Opts has size % instead of 160", size_of(Ufbx_Anim_Opts));
    }

    {
        info := type_info(Ufbx_Bake_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Bake_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Bake_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Bake_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Bake_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Bake_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Bake_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "trim_start_time";
                    assert(it.offset_in_bytes == 152, "Ufbx_Bake_Opts.trim_start_time has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.trim_start_time has unexpected size % instead of 1", it.type.runtime_size);
                case "resample_rate";
                    assert(it.offset_in_bytes == 160, "Ufbx_Bake_Opts.resample_rate has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.resample_rate has unexpected size % instead of 8", it.type.runtime_size);
                case "minimum_sample_rate";
                    assert(it.offset_in_bytes == 168, "Ufbx_Bake_Opts.minimum_sample_rate has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.minimum_sample_rate has unexpected size % instead of 8", it.type.runtime_size);
                case "maximum_sample_rate";
                    assert(it.offset_in_bytes == 176, "Ufbx_Bake_Opts.maximum_sample_rate has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.maximum_sample_rate has unexpected size % instead of 8", it.type.runtime_size);
                case "bake_transform_props";
                    assert(it.offset_in_bytes == 184, "Ufbx_Bake_Opts.bake_transform_props has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.bake_transform_props has unexpected size % instead of 1", it.type.runtime_size);
                case "skip_node_transforms";
                    assert(it.offset_in_bytes == 185, "Ufbx_Bake_Opts.skip_node_transforms has unexpected offset % instead of 185", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.skip_node_transforms has unexpected size % instead of 1", it.type.runtime_size);
                case "no_resample_rotation";
                    assert(it.offset_in_bytes == 186, "Ufbx_Bake_Opts.no_resample_rotation has unexpected offset % instead of 186", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.no_resample_rotation has unexpected size % instead of 1", it.type.runtime_size);
                case "ignore_layer_weight_animation";
                    assert(it.offset_in_bytes == 187, "Ufbx_Bake_Opts.ignore_layer_weight_animation has unexpected offset % instead of 187", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.ignore_layer_weight_animation has unexpected size % instead of 1", it.type.runtime_size);
                case "max_keyframe_segments";
                    assert(it.offset_in_bytes == 192, "Ufbx_Bake_Opts.max_keyframe_segments has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.max_keyframe_segments has unexpected size % instead of 8", it.type.runtime_size);
                case "step_handling";
                    assert(it.offset_in_bytes == 200, "Ufbx_Bake_Opts.step_handling has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Bake_Opts.step_handling has unexpected size % instead of 4", it.type.runtime_size);
                case "step_custom_duration";
                    assert(it.offset_in_bytes == 208, "Ufbx_Bake_Opts.step_custom_duration has unexpected offset % instead of 208", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.step_custom_duration has unexpected size % instead of 8", it.type.runtime_size);
                case "step_custom_epsilon";
                    assert(it.offset_in_bytes == 216, "Ufbx_Bake_Opts.step_custom_epsilon has unexpected offset % instead of 216", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.step_custom_epsilon has unexpected size % instead of 8", it.type.runtime_size);
                case "evaluate_flags";
                    assert(it.offset_in_bytes == 224, "Ufbx_Bake_Opts.evaluate_flags has unexpected offset % instead of 224", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Bake_Opts.evaluate_flags has unexpected size % instead of 4", it.type.runtime_size);
                case "key_reduction_enabled";
                    assert(it.offset_in_bytes == 228, "Ufbx_Bake_Opts.key_reduction_enabled has unexpected offset % instead of 228", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.key_reduction_enabled has unexpected size % instead of 1", it.type.runtime_size);
                case "key_reduction_rotation";
                    assert(it.offset_in_bytes == 229, "Ufbx_Bake_Opts.key_reduction_rotation has unexpected offset % instead of 229", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Bake_Opts.key_reduction_rotation has unexpected size % instead of 1", it.type.runtime_size);
                case "key_reduction_threshold";
                    assert(it.offset_in_bytes == 232, "Ufbx_Bake_Opts.key_reduction_threshold has unexpected offset % instead of 232", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.key_reduction_threshold has unexpected size % instead of 8", it.type.runtime_size);
                case "key_reduction_passes";
                    assert(it.offset_in_bytes == 240, "Ufbx_Bake_Opts.key_reduction_passes has unexpected offset % instead of 240", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Bake_Opts.key_reduction_passes has unexpected size % instead of 8", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 248, "Ufbx_Bake_Opts._end_zero has unexpected offset % instead of 248", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Bake_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Bake_Opts) == 256, "Ufbx_Bake_Opts has size % instead of 256", size_of(Ufbx_Bake_Opts));
    }

    {
        info := type_info(Ufbx_Tessellate_Curve_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Tessellate_Curve_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Tessellate_Curve_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Tessellate_Curve_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Tessellate_Curve_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Tessellate_Curve_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Tessellate_Curve_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "span_subdivision";
                    assert(it.offset_in_bytes == 152, "Ufbx_Tessellate_Curve_Opts.span_subdivision has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Tessellate_Curve_Opts.span_subdivision has unexpected size % instead of 8", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 160, "Ufbx_Tessellate_Curve_Opts._end_zero has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Tessellate_Curve_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Tessellate_Curve_Opts) == 168, "Ufbx_Tessellate_Curve_Opts has size % instead of 168", size_of(Ufbx_Tessellate_Curve_Opts));
    }

    {
        info := type_info(Ufbx_Tessellate_Surface_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Tessellate_Surface_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Tessellate_Surface_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Tessellate_Surface_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Tessellate_Surface_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Tessellate_Surface_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Tessellate_Surface_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "span_subdivision_u";
                    assert(it.offset_in_bytes == 152, "Ufbx_Tessellate_Surface_Opts.span_subdivision_u has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Tessellate_Surface_Opts.span_subdivision_u has unexpected size % instead of 8", it.type.runtime_size);
                case "span_subdivision_v";
                    assert(it.offset_in_bytes == 160, "Ufbx_Tessellate_Surface_Opts.span_subdivision_v has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Tessellate_Surface_Opts.span_subdivision_v has unexpected size % instead of 8", it.type.runtime_size);
                case "skip_mesh_parts";
                    assert(it.offset_in_bytes == 168, "Ufbx_Tessellate_Surface_Opts.skip_mesh_parts has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Tessellate_Surface_Opts.skip_mesh_parts has unexpected size % instead of 1", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 172, "Ufbx_Tessellate_Surface_Opts._end_zero has unexpected offset % instead of 172", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Tessellate_Surface_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Tessellate_Surface_Opts) == 176, "Ufbx_Tessellate_Surface_Opts has size % instead of 176", size_of(Ufbx_Tessellate_Surface_Opts));
    }

    {
        info := type_info(Ufbx_Subdivide_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Subdivide_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivide_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Subdivide_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Subdivide_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Subdivide_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Subdivide_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "boundary";
                    assert(it.offset_in_bytes == 152, "Ufbx_Subdivide_Opts.boundary has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivide_Opts.boundary has unexpected size % instead of 4", it.type.runtime_size);
                case "uv_boundary";
                    assert(it.offset_in_bytes == 156, "Ufbx_Subdivide_Opts.uv_boundary has unexpected offset % instead of 156", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivide_Opts.uv_boundary has unexpected size % instead of 4", it.type.runtime_size);
                case "ignore_normals";
                    assert(it.offset_in_bytes == 160, "Ufbx_Subdivide_Opts.ignore_normals has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Subdivide_Opts.ignore_normals has unexpected size % instead of 1", it.type.runtime_size);
                case "interpolate_normals";
                    assert(it.offset_in_bytes == 161, "Ufbx_Subdivide_Opts.interpolate_normals has unexpected offset % instead of 161", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Subdivide_Opts.interpolate_normals has unexpected size % instead of 1", it.type.runtime_size);
                case "interpolate_tangents";
                    assert(it.offset_in_bytes == 162, "Ufbx_Subdivide_Opts.interpolate_tangents has unexpected offset % instead of 162", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Subdivide_Opts.interpolate_tangents has unexpected size % instead of 1", it.type.runtime_size);
                case "evaluate_source_vertices";
                    assert(it.offset_in_bytes == 163, "Ufbx_Subdivide_Opts.evaluate_source_vertices has unexpected offset % instead of 163", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Subdivide_Opts.evaluate_source_vertices has unexpected size % instead of 1", it.type.runtime_size);
                case "max_source_vertices";
                    assert(it.offset_in_bytes == 168, "Ufbx_Subdivide_Opts.max_source_vertices has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivide_Opts.max_source_vertices has unexpected size % instead of 8", it.type.runtime_size);
                case "evaluate_skin_weights";
                    assert(it.offset_in_bytes == 176, "Ufbx_Subdivide_Opts.evaluate_skin_weights has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Subdivide_Opts.evaluate_skin_weights has unexpected size % instead of 1", it.type.runtime_size);
                case "max_skin_weights";
                    assert(it.offset_in_bytes == 184, "Ufbx_Subdivide_Opts.max_skin_weights has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivide_Opts.max_skin_weights has unexpected size % instead of 8", it.type.runtime_size);
                case "skin_deformer_index";
                    assert(it.offset_in_bytes == 192, "Ufbx_Subdivide_Opts.skin_deformer_index has unexpected offset % instead of 192", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Subdivide_Opts.skin_deformer_index has unexpected size % instead of 8", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 200, "Ufbx_Subdivide_Opts._end_zero has unexpected offset % instead of 200", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Subdivide_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Subdivide_Opts) == 208, "Ufbx_Subdivide_Opts has size % instead of 208", size_of(Ufbx_Subdivide_Opts));
    }

    {
        info := type_info(Ufbx_Geometry_Cache_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Geometry_Cache_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "temp_allocator";
                    assert(it.offset_in_bytes == 8, "Ufbx_Geometry_Cache_Opts.temp_allocator has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Geometry_Cache_Opts.temp_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "result_allocator";
                    assert(it.offset_in_bytes == 80, "Ufbx_Geometry_Cache_Opts.result_allocator has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 72, "Ufbx_Geometry_Cache_Opts.result_allocator has unexpected size % instead of 72", it.type.runtime_size);
                case "open_file_cb";
                    assert(it.offset_in_bytes == 152, "Ufbx_Geometry_Cache_Opts.open_file_cb has unexpected offset % instead of 152", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Geometry_Cache_Opts.open_file_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "frames_per_second";
                    assert(it.offset_in_bytes == 168, "Ufbx_Geometry_Cache_Opts.frames_per_second has unexpected offset % instead of 168", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Geometry_Cache_Opts.frames_per_second has unexpected size % instead of 8", it.type.runtime_size);
                case "mirror_axis";
                    assert(it.offset_in_bytes == 176, "Ufbx_Geometry_Cache_Opts.mirror_axis has unexpected offset % instead of 176", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Opts.mirror_axis has unexpected size % instead of 4", it.type.runtime_size);
                case "use_scale_factor";
                    assert(it.offset_in_bytes == 180, "Ufbx_Geometry_Cache_Opts.use_scale_factor has unexpected offset % instead of 180", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Geometry_Cache_Opts.use_scale_factor has unexpected size % instead of 1", it.type.runtime_size);
                case "scale_factor";
                    assert(it.offset_in_bytes == 184, "Ufbx_Geometry_Cache_Opts.scale_factor has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Opts.scale_factor has unexpected size % instead of 4", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 188, "Ufbx_Geometry_Cache_Opts._end_zero has unexpected offset % instead of 188", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Geometry_Cache_Opts) == 192, "Ufbx_Geometry_Cache_Opts has size % instead of 192", size_of(Ufbx_Geometry_Cache_Opts));
    }

    {
        info := type_info(Ufbx_Geometry_Cache_Data_Opts);
        for info.members {
            if it.name == {
                case "_begin_zero";
                    assert(it.offset_in_bytes == 0, "Ufbx_Geometry_Cache_Data_Opts._begin_zero has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Data_Opts._begin_zero has unexpected size % instead of 4", it.type.runtime_size);
                case "open_file_cb";
                    assert(it.offset_in_bytes == 8, "Ufbx_Geometry_Cache_Data_Opts.open_file_cb has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "Ufbx_Geometry_Cache_Data_Opts.open_file_cb has unexpected size % instead of 16", it.type.runtime_size);
                case "additive";
                    assert(it.offset_in_bytes == 24, "Ufbx_Geometry_Cache_Data_Opts.additive has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Geometry_Cache_Data_Opts.additive has unexpected size % instead of 1", it.type.runtime_size);
                case "use_weight";
                    assert(it.offset_in_bytes == 25, "Ufbx_Geometry_Cache_Data_Opts.use_weight has unexpected offset % instead of 25", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Geometry_Cache_Data_Opts.use_weight has unexpected size % instead of 1", it.type.runtime_size);
                case "weight";
                    assert(it.offset_in_bytes == 28, "Ufbx_Geometry_Cache_Data_Opts.weight has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Data_Opts.weight has unexpected size % instead of 4", it.type.runtime_size);
                case "ignore_transform";
                    assert(it.offset_in_bytes == 32, "Ufbx_Geometry_Cache_Data_Opts.ignore_transform has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Geometry_Cache_Data_Opts.ignore_transform has unexpected size % instead of 1", it.type.runtime_size);
                case "_end_zero";
                    assert(it.offset_in_bytes == 36, "Ufbx_Geometry_Cache_Data_Opts._end_zero has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Ufbx_Geometry_Cache_Data_Opts._end_zero has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Geometry_Cache_Data_Opts) == 40, "Ufbx_Geometry_Cache_Data_Opts has size % instead of 40", size_of(Ufbx_Geometry_Cache_Data_Opts));
    }

    {
        info := type_info(Ufbx_Panic);
        for info.members {
            if it.name == {
                case "did_panic";
                    assert(it.offset_in_bytes == 0, "Ufbx_Panic.did_panic has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "Ufbx_Panic.did_panic has unexpected size % instead of 1", it.type.runtime_size);
                case "message_length";
                    assert(it.offset_in_bytes == 8, "Ufbx_Panic.message_length has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "Ufbx_Panic.message_length has unexpected size % instead of 8", it.type.runtime_size);
                case "message";
                    assert(it.offset_in_bytes == 16, "Ufbx_Panic.message has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 128, "Ufbx_Panic.message has unexpected size % instead of 128", it.type.runtime_size);
            }
        }
        assert(size_of(Ufbx_Panic) == 144, "Ufbx_Panic has size % instead of 144", size_of(Ufbx_Panic));
    }
}

