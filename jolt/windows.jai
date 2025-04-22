//
// This file was auto-generated using the following command:
//
// jai ./generate_bindings.jai
//



JOLT_C_H_ :: 1;

JPH_DEFAULT_COLLISION_TOLERANCE :: 1.0e-4;
JPH_DEFAULT_PENETRATION_TOLERANCE :: 1.0e-4;
JPH_DEFAULT_CONVEX_RADIUS :: 0.05;
JPH_CAPSULE_PROJECTION_SLOP :: 0.02;
JPH_MAX_PHYSICS_JOBS :: 2048;
JPH_MAX_PHYSICS_BARRIERS :: 2048;

BodyID :: u32;
SubShapeID :: u32;

CollisionGroupID :: u32;
CollisionSubGroupID :: u32;
CharacterID :: u32;

PhysicsUpdateError :: enum s32 {
    NONE                                 :: 0;
    MANIFOLD_CACHE_FULL                  :: 1;
    BODY_PAIR_CACHE_FULL                 :: 2;
    CONTACT_CONSTRAINTS_FULL             :: 4;

    J_P_H__PHYSICS_UPDATE_ERROR__COUNT   :: 5;
    J_P_H__PHYSICS_UPDATE_ERROR__FORCE32 :: 2147483647;

    JPH_PhysicsUpdateError_None                   :: NONE;
    JPH_PhysicsUpdateError_ManifoldCacheFull      :: MANIFOLD_CACHE_FULL;
    JPH_PhysicsUpdateError_BodyPairCacheFull      :: BODY_PAIR_CACHE_FULL;
    JPH_PhysicsUpdateError_ContactConstraintsFull :: CONTACT_CONSTRAINTS_FULL;

    _JPH_PhysicsUpdateError_Count                 :: J_P_H__PHYSICS_UPDATE_ERROR__COUNT;
    _JPH_PhysicsUpdateError_Force32               :: J_P_H__PHYSICS_UPDATE_ERROR__FORCE32;
}

BodyType :: enum s32 {
    RIGID                     :: 0;
    SOFT                      :: 1;

    J_P_H__BODY_TYPE__COUNT   :: 2;
    J_P_H__BODY_TYPE__FORCE32 :: 2147483647;

    JPH_BodyType_Rigid    :: RIGID;
    JPH_BodyType_Soft     :: SOFT;

    _JPH_BodyType_Count   :: J_P_H__BODY_TYPE__COUNT;
    _JPH_BodyType_Force32 :: J_P_H__BODY_TYPE__FORCE32;
}

MotionType :: enum s32 {
    STATIC                      :: 0;
    KINEMATIC                   :: 1;
    DYNAMIC                     :: 2;

    J_P_H__MOTION_TYPE__COUNT   :: 3;
    J_P_H__MOTION_TYPE__FORCE32 :: 2147483647;

    JPH_MotionType_Static    :: STATIC;
    JPH_MotionType_Kinematic :: KINEMATIC;
    JPH_MotionType_Dynamic   :: DYNAMIC;

    _JPH_MotionType_Count    :: J_P_H__MOTION_TYPE__COUNT;
    _JPH_MotionType_Force32  :: J_P_H__MOTION_TYPE__FORCE32;
}

Activation :: enum s32 {
    ACTIVATE                   :: 0;
    DONT_ACTIVATE              :: 1;

    J_P_H__ACTIVATION__COUNT   :: 2;
    J_P_H__ACTIVATION__FORCE32 :: 2147483647;

    JPH_Activation_Activate     :: ACTIVATE;
    JPH_Activation_DontActivate :: DONT_ACTIVATE;

    _JPH_Activation_Count       :: J_P_H__ACTIVATION__COUNT;
    _JPH_Activation_Force32     :: J_P_H__ACTIVATION__FORCE32;
}

ValidateResult :: enum s32 {
    ACCEPT_ALL_CONTACTS_FOR_THIS_BODY_PAIR :: 0;
    ACCEPT_CONTACT                         :: 1;
    REJECT_CONTACT                         :: 2;
    REJECT_ALL_CONTACTS_FOR_THIS_BODY_PAIR :: 3;

    J_P_H__VALIDATE_RESULT__COUNT          :: 4;
    J_P_H__VALIDATE_RESULT__FORCE32        :: 2147483647;

    JPH_ValidateResult_AcceptAllContactsForThisBodyPair :: ACCEPT_ALL_CONTACTS_FOR_THIS_BODY_PAIR;
    JPH_ValidateResult_AcceptContact                    :: ACCEPT_CONTACT;
    JPH_ValidateResult_RejectContact                    :: REJECT_CONTACT;
    JPH_ValidateResult_RejectAllContactsForThisBodyPair :: REJECT_ALL_CONTACTS_FOR_THIS_BODY_PAIR;

    _JPH_ValidateResult_Count                           :: J_P_H__VALIDATE_RESULT__COUNT;
    _JPH_ValidateResult_Force32                         :: J_P_H__VALIDATE_RESULT__FORCE32;
}

ShapeType :: enum s32 {
    CONVEX                     :: 0;
    COMPOUND                   :: 1;
    DECORATED                  :: 2;
    MESH                       :: 3;
    HEIGHT_FIELD               :: 4;
    SOFT_BODY                  :: 5;

    USER1                      :: 6;
    USER2                      :: 7;
    USER3                      :: 8;
    USER4                      :: 9;

    J_P_H__SHAPE_TYPE__COUNT   :: 10;
    J_P_H__SHAPE_TYPE__FORCE32 :: 2147483647;

    JPH_ShapeType_Convex      :: CONVEX;
    JPH_ShapeType_Compound    :: COMPOUND;
    JPH_ShapeType_Decorated   :: DECORATED;
    JPH_ShapeType_Mesh        :: MESH;
    JPH_ShapeType_HeightField :: HEIGHT_FIELD;
    JPH_ShapeType_SoftBody    :: SOFT_BODY;

    JPH_ShapeType_User1       :: USER1;
    JPH_ShapeType_User2       :: USER2;
    JPH_ShapeType_User3       :: USER3;
    JPH_ShapeType_User4       :: USER4;

    _JPH_ShapeType_Count      :: J_P_H__SHAPE_TYPE__COUNT;
    _JPH_ShapeType_Force32    :: J_P_H__SHAPE_TYPE__FORCE32;
}

ShapeSubType :: enum s32 {
    SPHERE                         :: 0;
    BOX                            :: 1;
    TRIANGLE                       :: 2;
    CAPSULE                        :: 3;
    TAPERED_CAPSULE                :: 4;
    CYLINDER                       :: 5;
    CONVEX_HULL                    :: 6;
    STATIC_COMPOUND                :: 7;
    MUTABLE_COMPOUND               :: 8;
    ROTATED_TRANSLATED             :: 9;
    SCALED                         :: 10;
    OFFSET_CENTER_OF_MASS          :: 11;
    MESH                           :: 12;
    HEIGHT_FIELD                   :: 13;
    SOFT_BODY                      :: 14;

    J_P_H__SHAPE_SUB_TYPE__COUNT   :: 15;
    J_P_H__SHAPE_SUB_TYPE__FORCE32 :: 2147483647;

    JPH_ShapeSubType_Sphere             :: SPHERE;
    JPH_ShapeSubType_Box                :: BOX;
    JPH_ShapeSubType_Triangle           :: TRIANGLE;
    JPH_ShapeSubType_Capsule            :: CAPSULE;
    JPH_ShapeSubType_TaperedCapsule     :: TAPERED_CAPSULE;
    JPH_ShapeSubType_Cylinder           :: CYLINDER;
    JPH_ShapeSubType_ConvexHull         :: CONVEX_HULL;
    JPH_ShapeSubType_StaticCompound     :: STATIC_COMPOUND;
    JPH_ShapeSubType_MutableCompound    :: MUTABLE_COMPOUND;
    JPH_ShapeSubType_RotatedTranslated  :: ROTATED_TRANSLATED;
    JPH_ShapeSubType_Scaled             :: SCALED;
    JPH_ShapeSubType_OffsetCenterOfMass :: OFFSET_CENTER_OF_MASS;
    JPH_ShapeSubType_Mesh               :: MESH;
    JPH_ShapeSubType_HeightField        :: HEIGHT_FIELD;
    JPH_ShapeSubType_SoftBody           :: SOFT_BODY;

    _JPH_ShapeSubType_Count             :: J_P_H__SHAPE_SUB_TYPE__COUNT;
    _JPH_ShapeSubType_Force32           :: J_P_H__SHAPE_SUB_TYPE__FORCE32;
}

ConstraintType :: enum s32 {
    CONSTRAINT                      :: 0;
    TWO_BODY_CONSTRAINT             :: 1;

    J_P_H__CONSTRAINT_TYPE__COUNT   :: 2;
    J_P_H__CONSTRAINT_TYPE__FORCE32 :: 2147483647;

    JPH_ConstraintType_Constraint        :: CONSTRAINT;
    JPH_ConstraintType_TwoBodyConstraint :: TWO_BODY_CONSTRAINT;

    _JPH_ConstraintType_Count            :: J_P_H__CONSTRAINT_TYPE__COUNT;
    _JPH_ConstraintType_Force32          :: J_P_H__CONSTRAINT_TYPE__FORCE32;
}

ConstraintSubType :: enum s32 {
    FIXED                               :: 0;
    POINT                               :: 1;
    HINGE                               :: 2;
    SLIDER                              :: 3;
    DISTANCE                            :: 4;
    CONE                                :: 5;
    SWING_TWIST                         :: 6;
    SIX_D_O_F                           :: 7;
    PATH                                :: 8;
    VEHICLE                             :: 9;
    RACK_AND_PINION                     :: 10;
    GEAR                                :: 11;
    PULLEY                              :: 12;

    USER1                               :: 13;
    USER2                               :: 14;
    USER3                               :: 15;
    USER4                               :: 16;

    J_P_H__CONSTRAINT_SUB_TYPE__COUNT   :: 17;
    J_P_H__CONSTRAINT_SUB_TYPE__FORCE32 :: 2147483647;

    JPH_ConstraintSubType_Fixed         :: FIXED;
    JPH_ConstraintSubType_Point         :: POINT;
    JPH_ConstraintSubType_Hinge         :: HINGE;
    JPH_ConstraintSubType_Slider        :: SLIDER;
    JPH_ConstraintSubType_Distance      :: DISTANCE;
    JPH_ConstraintSubType_Cone          :: CONE;
    JPH_ConstraintSubType_SwingTwist    :: SWING_TWIST;
    JPH_ConstraintSubType_SixDOF        :: SIX_D_O_F;
    JPH_ConstraintSubType_Path          :: PATH;
    JPH_ConstraintSubType_Vehicle       :: VEHICLE;
    JPH_ConstraintSubType_RackAndPinion :: RACK_AND_PINION;
    JPH_ConstraintSubType_Gear          :: GEAR;
    JPH_ConstraintSubType_Pulley        :: PULLEY;

    JPH_ConstraintSubType_User1         :: USER1;
    JPH_ConstraintSubType_User2         :: USER2;
    JPH_ConstraintSubType_User3         :: USER3;
    JPH_ConstraintSubType_User4         :: USER4;

    _JPH_ConstraintSubType_Count        :: J_P_H__CONSTRAINT_SUB_TYPE__COUNT;
    _JPH_ConstraintSubType_Force32      :: J_P_H__CONSTRAINT_SUB_TYPE__FORCE32;
}

ConstraintSpace :: enum s32 {
    LOCAL_TO_BODY_C_O_M              :: 0;
    WORLD_SPACE                      :: 1;

    J_P_H__CONSTRAINT_SPACE__COUNT   :: 2;
    J_P_H__CONSTRAINT_SPACE__FORCE32 :: 2147483647;

    JPH_ConstraintSpace_LocalToBodyCOM :: LOCAL_TO_BODY_C_O_M;
    JPH_ConstraintSpace_WorldSpace     :: WORLD_SPACE;

    _JPH_ConstraintSpace_Count         :: J_P_H__CONSTRAINT_SPACE__COUNT;
    _JPH_ConstraintSpace_Force32       :: J_P_H__CONSTRAINT_SPACE__FORCE32;
}

MotionQuality :: enum s32 {
    DISCRETE                       :: 0;
    LINEAR_CAST                    :: 1;

    J_P_H__MOTION_QUALITY__COUNT   :: 2;
    J_P_H__MOTION_QUALITY__FORCE32 :: 2147483647;

    JPH_MotionQuality_Discrete   :: DISCRETE;
    JPH_MotionQuality_LinearCast :: LINEAR_CAST;

    _JPH_MotionQuality_Count     :: J_P_H__MOTION_QUALITY__COUNT;
    _JPH_MotionQuality_Force32   :: J_P_H__MOTION_QUALITY__FORCE32;
}

OverrideMassProperties :: enum s32 {
    CALCULATE_MASS_AND_INERTIA                      :: 0;
    CALCULATE_INERTIA                               :: 1;
    MASS_AND_INERTIA_PROVIDED                       :: 2;

    J_P_H__J_P_H__OVERRIDE_MASS_PROPERTIES__COUNT   :: 3;
    J_P_H__J_P_H__OVERRIDE_MASS_PROPERTIES__FORCE32 :: 2147483647;

    JPH_OverrideMassProperties_CalculateMassAndInertia :: CALCULATE_MASS_AND_INERTIA;
    JPH_OverrideMassProperties_CalculateInertia        :: CALCULATE_INERTIA;
    JPH_OverrideMassProperties_MassAndInertiaProvided  :: MASS_AND_INERTIA_PROVIDED;

    _JPH_JPH_OverrideMassProperties_Count              :: J_P_H__J_P_H__OVERRIDE_MASS_PROPERTIES__COUNT;
    _JPH_JPH_OverrideMassProperties_Force32            :: J_P_H__J_P_H__OVERRIDE_MASS_PROPERTIES__FORCE32;
}

AllowedDOFs :: enum s32 {
    ALL                            :: 63;
    TRANSLATION_X                  :: 1;
    TRANSLATION_Y                  :: 2;
    TRANSLATION_Z                  :: 4;
    ROTATION_X                     :: 8;
    ROTATION_Y                     :: 16;
    ROTATION_Z                     :: 32;
    PLANE2_D                       :: 35;

    J_P_H__ALLOWED_D_O_FS__COUNT   :: 36;
    J_P_H__ALLOWED_D_O_FS__FORCE32 :: 2147483647;

    JPH_AllowedDOFs_All          :: ALL;
    JPH_AllowedDOFs_TranslationX :: TRANSLATION_X;
    JPH_AllowedDOFs_TranslationY :: TRANSLATION_Y;
    JPH_AllowedDOFs_TranslationZ :: TRANSLATION_Z;
    JPH_AllowedDOFs_RotationX    :: ROTATION_X;
    JPH_AllowedDOFs_RotationY    :: ROTATION_Y;
    JPH_AllowedDOFs_RotationZ    :: ROTATION_Z;
    JPH_AllowedDOFs_Plane2D      :: PLANE2_D;

    _JPH_AllowedDOFs_Count       :: J_P_H__ALLOWED_D_O_FS__COUNT;
    _JPH_AllowedDOFs_Force32     :: J_P_H__ALLOWED_D_O_FS__FORCE32;
}

GroundState :: enum s32 {
    ON_GROUND                    :: 0;
    ON_STEEP_GROUND              :: 1;
    NOT_SUPPORTED                :: 2;
    IN_AIR                       :: 3;

    J_P_H__GROUND_STATE__COUNT   :: 4;
    J_P_H__GROUND_STATE__FORCE32 :: 2147483647;

    JPH_GroundState_OnGround      :: ON_GROUND;
    JPH_GroundState_OnSteepGround :: ON_STEEP_GROUND;
    JPH_GroundState_NotSupported  :: NOT_SUPPORTED;
    JPH_GroundState_InAir         :: IN_AIR;

    _JPH_GroundState_Count        :: J_P_H__GROUND_STATE__COUNT;
    _JPH_GroundState_Force32      :: J_P_H__GROUND_STATE__FORCE32;
}

BackFaceMode :: enum s32 {
    IGNORE_BACK_FACES              :: 0;
    COLLIDE_WITH_BACK_FACES        :: 1;

    J_P_H__BACK_FACE_MODE__COUNT   :: 2;
    J_P_H__BACK_FACE_MODE__FORCE32 :: 2147483647;

    JPH_BackFaceMode_IgnoreBackFaces      :: IGNORE_BACK_FACES;
    JPH_BackFaceMode_CollideWithBackFaces :: COLLIDE_WITH_BACK_FACES;

    _JPH_BackFaceMode_Count               :: J_P_H__BACK_FACE_MODE__COUNT;
    _JPH_BackFaceMode_Force32             :: J_P_H__BACK_FACE_MODE__FORCE32;
}

ActiveEdgeMode :: enum s32 {
    COLLIDE_ONLY_WITH_ACTIVE         :: 0;
    COLLIDE_WITH_ALL                 :: 1;

    J_P_H__ACTIVE_EDGE_MODE__COUNT   :: 2;
    J_P_H__ACTIVE_EDGE_MODE__FORCE32 :: 2147483647;

    JPH_ActiveEdgeMode_CollideOnlyWithActive :: COLLIDE_ONLY_WITH_ACTIVE;
    JPH_ActiveEdgeMode_CollideWithAll        :: COLLIDE_WITH_ALL;

    _JPH_ActiveEdgeMode_Count                :: J_P_H__ACTIVE_EDGE_MODE__COUNT;
    _JPH_ActiveEdgeMode_Force32              :: J_P_H__ACTIVE_EDGE_MODE__FORCE32;
}

CollectFacesMode :: enum s32 {
    COLLECT_FACES                      :: 0;
    NO_FACES                           :: 1;

    J_P_H__COLLECT_FACES_MODE__COUNT   :: 2;
    J_P_H__COLLECT_FACES_MODE__FORCE32 :: 2147483647;

    JPH_CollectFacesMode_CollectFaces :: COLLECT_FACES;
    JPH_CollectFacesMode_NoFaces      :: NO_FACES;

    _JPH_CollectFacesMode_Count       :: J_P_H__COLLECT_FACES_MODE__COUNT;
    _JPH_CollectFacesMode_Force32     :: J_P_H__COLLECT_FACES_MODE__FORCE32;
}

MotorState :: enum s32 {
    OFF                         :: 0;
    VELOCITY                    :: 1;
    POSITION                    :: 2;

    J_P_H__MOTOR_STATE__COUNT   :: 3;
    J_P_H__MOTOR_STATE__FORCE32 :: 2147483647;

    JPH_MotorState_Off      :: OFF;
    JPH_MotorState_Velocity :: VELOCITY;
    JPH_MotorState_Position :: POSITION;

    _JPH_MotorState_Count   :: J_P_H__MOTOR_STATE__COUNT;
    _JPH_MotorState_Force32 :: J_P_H__MOTOR_STATE__FORCE32;
}

CollisionCollectorType :: enum s32 {
    ALL_HIT                                  :: 0;
    ALL_HIT_SORTED                           :: 1;
    CLOSEST_HIT                              :: 2;
    ANY_HIT                                  :: 3;

    J_P_H__COLLISION_COLLECTOR_TYPE__COUNT   :: 4;
    J_P_H__COLLISION_COLLECTOR_TYPE__FORCE32 :: 2147483647;

    JPH_CollisionCollectorType_AllHit       :: ALL_HIT;
    JPH_CollisionCollectorType_AllHitSorted :: ALL_HIT_SORTED;
    JPH_CollisionCollectorType_ClosestHit   :: CLOSEST_HIT;
    JPH_CollisionCollectorType_AnyHit       :: ANY_HIT;

    _JPH_CollisionCollectorType_Count       :: J_P_H__COLLISION_COLLECTOR_TYPE__COUNT;
    _JPH_CollisionCollectorType_Force32     :: J_P_H__COLLISION_COLLECTOR_TYPE__FORCE32;
}

SwingType :: enum s32 {
    CONE                       :: 0;
    PYRAMID                    :: 1;

    J_P_H__SWING_TYPE__COUNT   :: 2;
    J_P_H__SWING_TYPE__FORCE32 :: 2147483647;

    JPH_SwingType_Cone     :: CONE;
    JPH_SwingType_Pyramid  :: PYRAMID;

    _JPH_SwingType_Count   :: J_P_H__SWING_TYPE__COUNT;
    _JPH_SwingType_Force32 :: J_P_H__SWING_TYPE__FORCE32;
}

SixDOFConstraintAxis :: enum s32 {
    TRANSLATION_X                                     :: 0;
    TRANSLATION_Y                                     :: 1;
    TRANSLATION_Z                                     :: 2;

    ROTATION_X                                        :: 3;
    ROTATION_Y                                        :: 4;
    ROTATION_Z                                        :: 5;

    J_P_H__SIX_D_O_F_CONSTRAINT_AXIS__NUM             :: 6;
    J_P_H__SIX_D_O_F_CONSTRAINT_AXIS__NUM_TRANSLATION :: 3;
    J_P_H__SIX_D_O_F_CONSTRAINT_AXIS__FORCE32         :: 2147483647;

    JPH_SixDOFConstraintAxis_TranslationX    :: TRANSLATION_X;
    JPH_SixDOFConstraintAxis_TranslationY    :: TRANSLATION_Y;
    JPH_SixDOFConstraintAxis_TranslationZ    :: TRANSLATION_Z;

    JPH_SixDOFConstraintAxis_RotationX       :: ROTATION_X;
    JPH_SixDOFConstraintAxis_RotationY       :: ROTATION_Y;
    JPH_SixDOFConstraintAxis_RotationZ       :: ROTATION_Z;

    _JPH_SixDOFConstraintAxis_Num            :: J_P_H__SIX_D_O_F_CONSTRAINT_AXIS__NUM;
    _JPH_SixDOFConstraintAxis_NumTranslation :: J_P_H__SIX_D_O_F_CONSTRAINT_AXIS__NUM_TRANSLATION;
    _JPH_SixDOFConstraintAxis_Force32        :: J_P_H__SIX_D_O_F_CONSTRAINT_AXIS__FORCE32;
}

SpringMode :: enum s32 {
    FREQUENCY_AND_DAMPING       :: 0;
    STIFFNESS_AND_DAMPING       :: 1;

    J_P_H__SPRING_MODE__COUNT   :: 2;
    J_P_H__SPRING_MODE__FORCE32 :: 2147483647;

    JPH_SpringMode_FrequencyAndDamping :: FREQUENCY_AND_DAMPING;
    JPH_SpringMode_StiffnessAndDamping :: STIFFNESS_AND_DAMPING;

    _JPH_SpringMode_Count              :: J_P_H__SPRING_MODE__COUNT;
    _JPH_SpringMode_Force32            :: J_P_H__SPRING_MODE__FORCE32;
}

/// Defines how to color soft body constraints
SoftBodyConstraintColor :: enum s32 {
    CONSTRAINT_TYPE                            :: 0;
    CONSTRAINT_GROUP                           :: 1;
    CONSTRAINT_ORDER                           :: 2;

    J_P_H__SOFT_BODY_CONSTRAINT_COLOR__COUNT   :: 3;
    J_P_H__SOFT_BODY_CONSTRAINT_COLOR__FORCE32 :: 2147483647;

    JPH_SoftBodyConstraintColor_ConstraintType  :: CONSTRAINT_TYPE;
    JPH_SoftBodyConstraintColor_ConstraintGroup :: CONSTRAINT_GROUP;
    JPH_SoftBodyConstraintColor_ConstraintOrder :: CONSTRAINT_ORDER;

    _JPH_SoftBodyConstraintColor_Count          :: J_P_H__SOFT_BODY_CONSTRAINT_COLOR__COUNT;
    _JPH_SoftBodyConstraintColor_Force32        :: J_P_H__SOFT_BODY_CONSTRAINT_COLOR__FORCE32;
}

BodyManager_ShapeColor :: enum s32 {
    INSTANCE_COLOR                            :: 0;
    SHAPE_TYPE_COLOR                          :: 1;
    MOTION_TYPE_COLOR                         :: 2;
    SLEEP_COLOR                               :: 3;
    ISLAND_COLOR                              :: 4;
    MATERIAL_COLOR                            :: 5;

    J_P_H__BODY_MANAGER__SHAPE_COLOR__COUNT   :: 6;
    J_P_H__BODY_MANAGER__SHAPE_COLOR__FORCE32 :: 2147483647;

    JPH_BodyManager_ShapeColor_InstanceColor   :: INSTANCE_COLOR;
    JPH_BodyManager_ShapeColor_ShapeTypeColor  :: SHAPE_TYPE_COLOR;
    JPH_BodyManager_ShapeColor_MotionTypeColor :: MOTION_TYPE_COLOR;
    JPH_BodyManager_ShapeColor_SleepColor      :: SLEEP_COLOR;
    JPH_BodyManager_ShapeColor_IslandColor     :: ISLAND_COLOR;
    JPH_BodyManager_ShapeColor_MaterialColor   :: MATERIAL_COLOR;

    _JPH_BodyManager_ShapeColor_Count          :: J_P_H__BODY_MANAGER__SHAPE_COLOR__COUNT;
    _JPH_BodyManager_ShapeColor_Force32        :: J_P_H__BODY_MANAGER__SHAPE_COLOR__FORCE32;
}

DebugRenderer_CastShadow :: enum s32 {
    ON                                          :: 0;
    OFF                                         :: 1;

    J_P_H__DEBUG_RENDERER__CAST_SHADOW__COUNT   :: 2;
    J_P_H__DEBUG_RENDERER__CAST_SHADOW__FORCE32 :: 2147483647;

    JPH_DebugRenderer_CastShadow_On       :: ON;
    JPH_DebugRenderer_CastShadow_Off      :: OFF;

    _JPH_DebugRenderer_CastShadow_Count   :: J_P_H__DEBUG_RENDERER__CAST_SHADOW__COUNT;
    _JPH_DebugRenderer_CastShadow_Force32 :: J_P_H__DEBUG_RENDERER__CAST_SHADOW__FORCE32;
}

DebugRenderer_DrawMode :: enum s32 {
    SOLID                                     :: 0;
    WIREFRAME                                 :: 1;

    J_P_H__DEBUG_RENDERER__DRAW_MODE__COUNT   :: 2;
    J_P_H__DEBUG_RENDERER__DRAW_MODE__FORCE32 :: 2147483647;

    JPH_DebugRenderer_DrawMode_Solid     :: SOLID;
    JPH_DebugRenderer_DrawMode_Wireframe :: WIREFRAME;

    _JPH_DebugRenderer_DrawMode_Count    :: J_P_H__DEBUG_RENDERER__DRAW_MODE__COUNT;
    _JPH_DebugRenderer_DrawMode_Force32  :: J_P_H__DEBUG_RENDERER__DRAW_MODE__FORCE32;
}

Mesh_Shape_BuildQuality :: enum s32 {
    FAVOR_RUNTIME_PERFORMANCE                  :: 0;
    FAVOR_BUILD_SPEED                          :: 1;

    J_P_H__MESH__SHAPE__BUILD_QUALITY__COUNT   :: 2;
    J_P_H__MESH__SHAPE__BUILD_QUALITY__FORCE32 :: 2147483647;

    JPH_Mesh_Shape_BuildQuality_FavorRuntimePerformance :: FAVOR_RUNTIME_PERFORMANCE;
    JPH_Mesh_Shape_BuildQuality_FavorBuildSpeed         :: FAVOR_BUILD_SPEED;

    _JPH_Mesh_Shape_BuildQuality_Count                  :: J_P_H__MESH__SHAPE__BUILD_QUALITY__COUNT;
    _JPH_Mesh_Shape_BuildQuality_Force32                :: J_P_H__MESH__SHAPE__BUILD_QUALITY__FORCE32;
}

Plane :: struct {
    normal:   Vec3;
    distance: float;
}

RVec3 :: Vec3;
RMatrix4x4 :: Matrix4x4;

Color :: u32;

AABox :: struct {
    min: Vec3;
    max: Vec3;
}

Triangle :: struct {
    v1:            Vec3;
    v2:            Vec3;
    v3:            Vec3;
    materialIndex: u32;
}

IndexedTriangleNoMaterial :: struct {
    i1: u32;
    i2: u32;
    i3: u32;
}

IndexedTriangle :: struct {
    i1:            u32;
    i2:            u32;
    i3:            u32;
    materialIndex: u32;
    userData:      u32;
}

MassProperties :: struct {
    mass:    float;
    inertia: Matrix4x4;
}

CollideSettingsBase :: struct {
    activeEdgeMode:              ActiveEdgeMode; /* = JPH_ActiveEdgeMode_CollideOnlyWithActive*/

    collectFacesMode:            CollectFacesMode; /* = JPH_CollectFacesMode_NoFaces*/

    collisionTolerance:          float; /* = JPH_DEFAULT_COLLISION_TOLERANCE*/

    penetrationTolerance:        float; /* = JPH_DEFAULT_PENETRATION_TOLERANCE*/

    activeEdgeMovementDirection: Vec3; /* = Vec3::sZero()*/
}

/* CollideShapeSettings */
CollideShapeSettings :: struct {
    base:                  CollideSettingsBase; /* Inherics JPH_CollideSettingsBase */

    maxSeparationDistance: float; /* = 0.0f*/

    backFaceMode:          BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/
}

/* ShapeCastSettings */
ShapeCastSettings :: struct {
    base:                            CollideSettingsBase; /* Inherics JPH_CollideSettingsBase */

    backFaceModeTriangles:           BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    backFaceModeConvex:              BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    useShrunkenShapeAndConvexRadius: bool; /* = false*/

    returnDeepestPoint:              bool; /* = false*/
}

RayCastSettings :: struct {
    backFaceModeTriangles: BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    backFaceModeConvex:    BackFaceMode; /* = JPH_BackFaceMode_IgnoreBackFaces*/

    treatConvexAsSolid:    bool; /* = true*/
}

SpringSettings :: struct {
    mode:                 SpringMode;
    frequencyOrStiffness: float;
    damping:              float;
}

MotorSettings :: struct {
    springSettings: SpringSettings;
    minForceLimit:  float;
    maxForceLimit:  float;
    minTorqueLimit: float;
    maxTorqueLimit: float;
}

SubShapeIDPair :: struct {
    Body1ID:     BodyID;
    subShapeID1: SubShapeID;
    Body2ID:     BodyID;
    subShapeID2: SubShapeID;
}

BroadPhaseCastResult :: struct {
    bodyID:   BodyID;
    fraction: float;
}

RayCastResult :: struct {
    bodyID:      BodyID;
    fraction:    float;
    subShapeID2: SubShapeID;
}

CollidePointResult :: struct {
    bodyID:      BodyID;
    subShapeID2: SubShapeID;
}

CollideShapeResult :: struct {
    contactPointOn1:  Vec3;
    contactPointOn2:  Vec3;
    penetrationAxis:  Vec3;
    penetrationDepth: float;
    subShapeID1:      SubShapeID;
    subShapeID2:      SubShapeID;
    bodyID2:          BodyID;
    shape1FaceCount:  u32;
    shape1Faces:      *Vec3;
    shape2FaceCount:  u32;
    shape2Faces:      *Vec3;
}

ShapeCastResult :: struct {
    contactPointOn1:  Vec3;
    contactPointOn2:  Vec3;
    penetrationAxis:  Vec3;
    penetrationDepth: float;
    subShapeID1:      SubShapeID;
    subShapeID2:      SubShapeID;
    bodyID2:          BodyID;
    fraction:         float;
    isBackFaceHit:    bool;
}

DrawSettings :: struct {
    drawGetSupportFunction:        bool; ///< Draw the GetSupport() function, used for convex collision detection
    drawSupportDirection:          bool; ///< When drawing the support function, also draw which direction mapped to a specific support point
    drawGetSupportingFace:         bool; ///< Draw the faces that were found colliding during collision detection
    drawShape:                     bool; ///< Draw the shapes of all bodies
    drawShapeWireframe:            bool; ///< When mDrawShape is true and this is true, the shapes will be drawn in wireframe instead of solid.
    drawShapeColor:                BodyManager_ShapeColor; ///< Coloring scheme to use for shapes
    drawBoundingBox:               bool; ///< Draw a bounding box per body
    drawCenterOfMassTransform:     bool; ///< Draw the center of mass for each body
    drawWorldTransform:            bool; ///< Draw the world transform (which can be different than the center of mass) for each body
    drawVelocity:                  bool; ///< Draw the velocity vector for each body
    drawMassAndInertia:            bool; ///< Draw the mass and inertia (as the box equivalent) for each body
    drawSleepStats:                bool; ///< Draw stats regarding the sleeping algorithm of each body
    drawSoftBodyVertices:          bool; ///< Draw the vertices of soft bodies
    drawSoftBodyVertexVelocities:  bool; ///< Draw the velocities of the vertices of soft bodies
    drawSoftBodyEdgeConstraints:   bool; ///< Draw the edge constraints of soft bodies
    drawSoftBodyBendConstraints:   bool; ///< Draw the bend constraints of soft bodies
    drawSoftBodyVolumeConstraints: bool; ///< Draw the volume constraints of soft bodies
    drawSoftBodySkinConstraints:   bool; ///< Draw the skin constraints of soft bodies
    drawSoftBodyLRAConstraints:    bool; ///< Draw the LRA constraints of soft bodies
    drawSoftBodyPredictedBounds:   bool; ///< Draw the predicted bounds of soft bodies
    drawSoftBodyConstraintColor:   SoftBodyConstraintColor; ///< Coloring scheme to use for soft body constraints
}

SupportingFace :: struct {
    count:    u32;
    vertices: [32] Vec3;
}

CastRayResultCallback :: #type (_context: *void, result: *RayCastResult) -> void #c_call;
RayCastBodyResultCallback :: #type (_context: *void, result: *BroadPhaseCastResult) -> void #c_call;
CollideShapeBodyResultCallback :: #type (_context: *void, result: BodyID) -> void #c_call;
CollidePointResultCallback :: #type (_context: *void, result: *CollidePointResult) -> void #c_call;
CollideShapeResultCallback :: #type (_context: *void, result: *CollideShapeResult) -> void #c_call;
CastShapeResultCallback :: #type (_context: *void, result: *ShapeCastResult) -> void #c_call;

CastRayCollectorCallback :: #type (_context: *void, result: *RayCastResult) -> float #c_call;
RayCastBodyCollectorCallback :: #type (_context: *void, result: *BroadPhaseCastResult) -> float #c_call;
CollideShapeBodyCollectorCallback :: #type (_context: *void, result: BodyID) -> float #c_call;
CollidePointCollectorCallback :: #type (_context: *void, result: *CollidePointResult) -> float #c_call;
CollideShapeCollectorCallback :: #type (_context: *void, result: *CollideShapeResult) -> float #c_call;
CastShapeCollectorCallback :: #type (_context: *void, result: *ShapeCastResult) -> float #c_call;

BroadPhaseLayerInterface :: struct {}
ObjectVsBroadPhaseLayerFilter :: struct {}
ObjectLayerPairFilter :: struct {}

BroadPhaseLayerFilter :: struct {}
ObjectLayerFilter :: struct {}
BodyFilter :: struct {}
ShapeFilter :: struct {}

SimShapeFilter :: struct {}

PhysicsSystem :: struct {}

PhysicsMaterial :: struct {}

ShapeSettings :: struct {}
ConvexShapeSettings :: struct {}
SphereShapeSettings :: struct {}
BoxShapeSettings :: struct {}
PlaneShapeSettings :: struct {}
TriangleShapeSettings :: struct {}
CapsuleShapeSettings :: struct {}
TaperedCapsuleShapeSettings :: struct {}
CylinderShapeSettings :: struct {}
TaperedCylinderShapeSettings :: struct {}
ConvexHullShapeSettings :: struct {}
CompoundShapeSettings :: struct {}
StaticCompoundShapeSettings :: struct {}
MutableCompoundShapeSettings :: struct {}
MeshShapeSettings :: struct {}
HeightFieldShapeSettings :: struct {}
RotatedTranslatedShapeSettings :: struct {}
ScaledShapeSettings :: struct {}
OffsetCenterOfMassShapeSettings :: struct {}
EmptyShapeSettings :: struct {}

Shape :: struct {}
ConvexShape :: struct {}
SphereShape :: struct {}
BoxShape :: struct {}
PlaneShape :: struct {}
CapsuleShape :: struct {}
CylinderShape :: struct {}
TaperedCylinderShape :: struct {}
TriangleShape :: struct {}
TaperedCapsuleShape :: struct {}
ConvexHullShape :: struct {}
CompoundShape :: struct {}
StaticCompoundShape :: struct {}
MutableCompoundShape :: struct {}
MeshShape :: struct {}
HeightFieldShape :: struct {}
DecoratedShape :: struct {}
RotatedTranslatedShape :: struct {}
ScaledShape :: struct {}
OffsetCenterOfMassShape :: struct {}
EmptyShape :: struct {}

BodyCreationSettings :: struct {}
SoftBodyCreationSettings :: struct {}
BodyInterface :: struct {}
BodyLockInterface :: struct {}
BroadPhaseQuery :: struct {}
NarrowPhaseQuery :: struct {}
MotionProperties :: struct {}

Body :: struct {}

ContactListener :: struct {}
ContactManifold :: struct {}
ContactSettings :: struct {}

CollisionEstimationResultImpulse :: struct {
    contactImpulse:   float;
    frictionImpulse1: float;
    frictionImpulse2: float;
}

CollisionEstimationResult :: struct {
    linearVelocity1:  Vec3;
    angularVelocity1: Vec3;
    linearVelocity2:  Vec3;
    angularVelocity2: Vec3;

    tangent1:         Vec3;
    tangent2:         Vec3;

    impulseCount:     u32;
    impulses:         *CollisionEstimationResultImpulse;
}

BodyActivationListener :: struct {}
BodyDrawFilter :: struct {}

SharedMutex :: struct {}

DebugRenderer :: struct {}

Constraint :: struct {}
TwoBodyConstraint :: struct {}
FixedConstraint :: struct {}
DistanceConstraint :: struct {}
PointConstraint :: struct {}
HingeConstraint :: struct {}
SliderConstraint :: struct {}
ConeConstraint :: struct {}
SwingTwistConstraint :: struct {}
SixDOFConstraint :: struct {}
GearConstraint :: struct {}

CharacterBase :: struct {}
Character :: struct {}
CharacterVirtual :: struct {}
CharacterContactListener :: struct {}
CharacterVsCharacterCollision :: struct {}

Skeleton :: struct {}
RagdollSettings :: struct {}
Ragdoll :: struct {}

ConstraintSettings :: struct {
    enabled:                  bool;
    constraintPriority:       u32;
    numVelocityStepsOverride: u32;
    numPositionStepsOverride: u32;
    drawConstraintSize:       float;
    userData:                 u64;
}

FixedConstraintSettings :: struct {
    base:            ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:           ConstraintSpace;
    autoDetectPoint: bool;
    point1:          RVec3;
    axisX1:          Vec3;
    axisY1:          Vec3;
    point2:          RVec3;
    axisX2:          Vec3;
    axisY2:          Vec3;
}

DistanceConstraintSettings :: struct {
    base:                 ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                ConstraintSpace;
    point1:               RVec3;
    point2:               RVec3;
    minDistance:          float;
    maxDistance:          float;
    limitsSpringSettings: SpringSettings;
}

PointConstraintSettings :: struct {
    base:   ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:  ConstraintSpace;
    point1: RVec3;
    point2: RVec3;
}

HingeConstraintSettings :: struct {
    base:                 ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                ConstraintSpace;
    point1:               RVec3;
    hingeAxis1:           Vec3;
    normalAxis1:          Vec3;
    point2:               RVec3;
    hingeAxis2:           Vec3;
    normalAxis2:          Vec3;
    limitsMin:            float;
    limitsMax:            float;
    limitsSpringSettings: SpringSettings;
    maxFrictionTorque:    float;
    motorSettings:        MotorSettings;
}

SliderConstraintSettings :: struct {
    base:                 ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                ConstraintSpace;
    autoDetectPoint:      bool;
    point1:               RVec3;
    sliderAxis1:          Vec3;
    normalAxis1:          Vec3;
    point2:               RVec3;
    sliderAxis2:          Vec3;
    normalAxis2:          Vec3;
    limitsMin:            float;
    limitsMax:            float;
    limitsSpringSettings: SpringSettings;
    maxFrictionForce:     float;
    motorSettings:        MotorSettings;
}

ConeConstraintSettings :: struct {
    base:          ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:         ConstraintSpace;
    point1:        RVec3;
    twistAxis1:    Vec3;
    point2:        RVec3;
    twistAxis2:    Vec3;
    halfConeAngle: float;
}

SwingTwistConstraintSettings :: struct {
    base:                ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:               ConstraintSpace;
    position1:           RVec3;
    twistAxis1:          Vec3;
    planeAxis1:          Vec3;
    position2:           RVec3;
    twistAxis2:          Vec3;
    planeAxis2:          Vec3;
    swingType:           SwingType;
    normalHalfConeAngle: float;
    planeHalfConeAngle:  float;
    twistMinAngle:       float;
    twistMaxAngle:       float;
    maxFrictionTorque:   float;
    swingMotorSettings:  MotorSettings;
    twistMotorSettings:  MotorSettings;
}

SixDOFConstraintSettings :: struct {
    base:                 ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:                ConstraintSpace;
    position1:            RVec3;
    axisX1:               Vec3;
    axisY1:               Vec3;
    position2:            RVec3;
    axisX2:               Vec3;
    axisY2:               Vec3;
    maxFriction:          [6] float;
    swingType:            SwingType;
    limitMin:             [6] float;
    limitMax:             [6] float;

    limitsSpringSettings: [3] SpringSettings;
    motorSettings:        [6] MotorSettings;
}

GearConstraintSettings :: struct {
    base:       ConstraintSettings; /* Inherics JPH_ConstraintSettings */

    space:      ConstraintSpace;
    hingeAxis1: Vec3;
    hingeAxis2: Vec3;
    ratio:      float;
}

BodyLockRead :: struct {
    lockInterface: *BodyLockInterface;
    mutex:         *SharedMutex;
    body:          *Body;
}

BodyLockWrite :: struct {
    lockInterface: *BodyLockInterface;
    mutex:         *SharedMutex;
    body:          *Body;
}

BodyLockMultiRead :: struct {}
BodyLockMultiWrite :: struct {}

ExtendedUpdateSettings :: struct {
    stickToFloorStepDown:             Vec3;
    walkStairsStepUp:                 Vec3;
    walkStairsMinStepForward:         float;
    walkStairsStepForwardTest:        float;
    walkStairsCosAngleForwardContact: float;
    walkStairsStepDownExtra:          Vec3;
}

CharacterBaseSettings :: struct {
    up:                          Vec3;
    supportingVolume:            Plane;
    maxSlopeAngle:               float;
    enhancedInternalEdgeRemoval: bool;
    shape:                       *Shape;
}

/* Character */
CharacterSettings :: struct {
    base:          CharacterBaseSettings; /* Inherics JPH_CharacterBaseSettings */
    layer:         ObjectLayer;
    mass:          float;
    friction:      float;
    gravityFactor: float;
    allowedDOFs:   AllowedDOFs;
}

/* CharacterVirtual */
CharacterVirtualSettings :: struct {
    base:                      CharacterBaseSettings; /* Inherics JPH_CharacterBaseSettings */
    ID:                        CharacterID;
    mass:                      float;
    maxStrength:               float;
    shapeOffset:               Vec3;
    backFaceMode:              BackFaceMode;
    predictiveContactDistance: float;
    maxCollisionIterations:    u32;
    maxConstraintIterations:   u32;
    minTimeRemaining:          float;
    collisionTolerance:        float;
    characterPadding:          float;
    maxNumHits:                u32;
    hitReductionCosMaxAngle:   float;
    penetrationRecoverySpeed:  float;
    innerBodyShape:            *Shape;
    innerBodyIDOverride:       BodyID;
    innerBodyLayer:            ObjectLayer;
}

CharacterContactSettings :: struct {
    canPushCharacter:   bool;
    canReceiveImpulses: bool;
}

CharacterVirtualContact :: struct {
    hash:             u64;
    bodyB:            BodyID;
    characterIDB:     CharacterID;
    subShapeIDB:      SubShapeID;
    position:         RVec3;
    linearVelocity:   Vec3;
    contactNormal:    Vec3;
    surfaceNormal:    Vec3;
    distance:         float;
    fraction:         float;
    motionTypeB:      MotionType;
    isSensorB:        bool;
    characterB:       *CharacterVirtual;
    userData:         u64;
    material:         *PhysicsMaterial;
    hadCollision:     bool;
    wasDiscarded:     bool;
    canPushCharacter: bool;
}

TraceFunc :: #type (mssage: *u8) -> void #c_call;
AssertFailureFunc :: #type (expression: *u8, mssage: *u8, file: *u8, line: u32) -> bool #c_call;

JobFunction :: #type (arg: *void) -> void #c_call;
QueueJobCallback :: #type (_context: *void, job: JobFunction, arg: *void) -> void #c_call;
QueueJobsCallback :: #type (_context: *void, job: JobFunction, args: **void, count: u32) -> void #c_call;

JobSystemThreadPoolConfig :: struct {
    maxJobs:     u32;
    maxBarriers: u32;
    numThreads:  s32;
}

JobSystemConfig :: struct {
    _context:       *void;
    queueJob:       QueueJobCallback;
    queueJobs:      QueueJobsCallback;
    maxConcurrency: u32;
    maxBarriers:    u32;
}

JobSystem :: struct {}

JobSystemThreadPool_Create :: (config: *JobSystemThreadPoolConfig) -> *JobSystem #foreign joltc "JPH_JobSystemThreadPool_Create";
JobSystemCallback_Create :: (config: *JobSystemConfig) -> *JobSystem #foreign joltc "JPH_JobSystemCallback_Create";
JobSystem_Destroy :: (jobSystem: *JobSystem) -> void #foreign joltc "JPH_JobSystem_Destroy";

Init :: () -> bool #foreign joltc "JPH_Init";
Shutdown :: () -> void #foreign joltc "JPH_Shutdown";
SetTraceHandler :: (handler: TraceFunc) -> void #foreign joltc "JPH_SetTraceHandler";
SetAssertFailureHandler :: (handler: AssertFailureFunc) -> void #foreign joltc "JPH_SetAssertFailureHandler";

/* Structs free members */
CollideShapeResult_FreeMembers :: (result: *CollideShapeResult) -> void #foreign joltc "JPH_CollideShapeResult_FreeMembers";
CollisionEstimationResult_FreeMembers :: (result: *CollisionEstimationResult) -> void #foreign joltc "JPH_CollisionEstimationResult_FreeMembers";

/* JPH_BroadPhaseLayerInterface */
BroadPhaseLayerInterfaceMask_Create :: (numBroadPhaseLayers: u32) -> *BroadPhaseLayerInterface #foreign joltc "JPH_BroadPhaseLayerInterfaceMask_Create";
BroadPhaseLayerInterfaceMask_ConfigureLayer :: (bpInterface: *BroadPhaseLayerInterface, broadPhaseLayer: BroadPhaseLayer, groupsToInclude: u32, groupsToExclude: u32) -> void #foreign joltc "JPH_BroadPhaseLayerInterfaceMask_ConfigureLayer";

BroadPhaseLayerInterfaceTable_Create :: (numObjectLayers: u32, numBroadPhaseLayers: u32) -> *BroadPhaseLayerInterface #foreign joltc "JPH_BroadPhaseLayerInterfaceTable_Create";
BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer :: (bpInterface: *BroadPhaseLayerInterface, objectLayer: ObjectLayer, broadPhaseLayer: BroadPhaseLayer) -> void #foreign joltc "JPH_BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer";

/* JPH_ObjectLayerPairFilter */
ObjectLayerPairFilterMask_Create :: () -> *ObjectLayerPairFilter #foreign joltc "JPH_ObjectLayerPairFilterMask_Create";
ObjectLayerPairFilterMask_GetObjectLayer :: (group: u32, mask: u32) -> ObjectLayer #foreign joltc "JPH_ObjectLayerPairFilterMask_GetObjectLayer";
ObjectLayerPairFilterMask_GetGroup :: (layer: ObjectLayer) -> u32 #foreign joltc "JPH_ObjectLayerPairFilterMask_GetGroup";
ObjectLayerPairFilterMask_GetMask :: (layer: ObjectLayer) -> u32 #foreign joltc "JPH_ObjectLayerPairFilterMask_GetMask";

ObjectLayerPairFilterTable_Create :: (numObjectLayers: u32) -> *ObjectLayerPairFilter #foreign joltc "JPH_ObjectLayerPairFilterTable_Create";
ObjectLayerPairFilterTable_DisableCollision :: (objectFilter: *ObjectLayerPairFilter, layer1: ObjectLayer, layer2: ObjectLayer) -> void #foreign joltc "JPH_ObjectLayerPairFilterTable_DisableCollision";
ObjectLayerPairFilterTable_EnableCollision :: (objectFilter: *ObjectLayerPairFilter, layer1: ObjectLayer, layer2: ObjectLayer) -> void #foreign joltc "JPH_ObjectLayerPairFilterTable_EnableCollision";
ObjectLayerPairFilterTable_ShouldCollide :: (objectFilter: *ObjectLayerPairFilter, layer1: ObjectLayer, layer2: ObjectLayer) -> bool #foreign joltc "JPH_ObjectLayerPairFilterTable_ShouldCollide";

/* JPH_ObjectVsBroadPhaseLayerFilter */
ObjectVsBroadPhaseLayerFilterMask_Create :: (broadPhaseLayerInterface: *BroadPhaseLayerInterface) -> *ObjectVsBroadPhaseLayerFilter #foreign joltc "JPH_ObjectVsBroadPhaseLayerFilterMask_Create";

ObjectVsBroadPhaseLayerFilterTable_Create :: (broadPhaseLayerInterface: *BroadPhaseLayerInterface, numBroadPhaseLayers: u32, objectLayerPairFilter: *ObjectLayerPairFilter, numObjectLayers: u32) -> *ObjectVsBroadPhaseLayerFilter #foreign joltc "JPH_ObjectVsBroadPhaseLayerFilterTable_Create";

DrawSettings_InitDefault :: (settings: *DrawSettings) -> void #foreign joltc "JPH_DrawSettings_InitDefault";

/* JPH_PhysicsSystem */
PhysicsSystemSettings :: struct {
    maxBodies:                     u32; /* 10240 */
    numBodyMutexes:                u32; /* 0 */
    maxBodyPairs:                  u32; /* 65536 */
    maxContactConstraints:         u32; /* 10240 */
    _padding:                      u32;
    broadPhaseLayerInterface:      *BroadPhaseLayerInterface;
    objectLayerPairFilter:         *ObjectLayerPairFilter;
    objectVsBroadPhaseLayerFilter: *ObjectVsBroadPhaseLayerFilter;
}

PhysicsSettings :: struct {
    maxInFlightBodyPairs:                 s32;
    stepListenersBatchSize:               s32;
    stepListenerBatchesPerJob:            s32;
    baumgarte:                            float;
    speculativeContactDistance:           float;
    penetrationSlop:                      float;
    linearCastThreshold:                  float;
    linearCastMaxPenetration:             float;
    manifoldTolerance:                    float;
    maxPenetrationDistance:               float;
    bodyPairCacheMaxDeltaPositionSq:      float;
    bodyPairCacheCosMaxDeltaRotationDiv2: float;
    contactNormalCosMaxDeltaRotation:     float;
    contactPointPreserveLambdaMaxDistSq:  float;
    numVelocitySteps:                     u32;
    numPositionSteps:                     u32;
    minVelocityForRestitution:            float;
    timeBeforeSleep:                      float;
    pointVelocitySleepThreshold:          float;
    deterministicSimulation:              bool;
    constraintWarmStart:                  bool;
    useBodyPairContactCache:              bool;
    useManifoldReduction:                 bool;
    useLargeIslandSplitter:               bool;
    allowSleeping:                        bool;
    checkActiveEdges:                     bool;
}

PhysicsSystem_Create :: (settings: *PhysicsSystemSettings) -> *PhysicsSystem #foreign joltc "JPH_PhysicsSystem_Create";
PhysicsSystem_Destroy :: (system: *PhysicsSystem) -> void #foreign joltc "JPH_PhysicsSystem_Destroy";

PhysicsSystem_SetPhysicsSettings :: (system: *PhysicsSystem, settings: *PhysicsSettings) -> void #foreign joltc "JPH_PhysicsSystem_SetPhysicsSettings";
PhysicsSystem_GetPhysicsSettings :: (system: *PhysicsSystem, result: *PhysicsSettings) -> void #foreign joltc "JPH_PhysicsSystem_GetPhysicsSettings";

PhysicsSystem_OptimizeBroadPhase :: (system: *PhysicsSystem) -> void #foreign joltc "JPH_PhysicsSystem_OptimizeBroadPhase";
PhysicsSystem_Update :: (system: *PhysicsSystem, deltaTime: float, collisionSteps: s32, jobSystem: *JobSystem) -> PhysicsUpdateError #foreign joltc "JPH_PhysicsSystem_Update";

PhysicsSystem_GetBodyInterface :: (system: *PhysicsSystem) -> *BodyInterface #foreign joltc "JPH_PhysicsSystem_GetBodyInterface";
PhysicsSystem_GetBodyInterfaceNoLock :: (system: *PhysicsSystem) -> *BodyInterface #foreign joltc "JPH_PhysicsSystem_GetBodyInterfaceNoLock";

PhysicsSystem_GetBodyLockInterface :: (system: *PhysicsSystem) -> *BodyLockInterface #foreign joltc "JPH_PhysicsSystem_GetBodyLockInterface";
PhysicsSystem_GetBodyLockInterfaceNoLock :: (system: *PhysicsSystem) -> *BodyLockInterface #foreign joltc "JPH_PhysicsSystem_GetBodyLockInterfaceNoLock";

PhysicsSystem_GetBroadPhaseQuery :: (system: *PhysicsSystem) -> *BroadPhaseQuery #foreign joltc "JPH_PhysicsSystem_GetBroadPhaseQuery";

PhysicsSystem_GetNarrowPhaseQuery :: (system: *PhysicsSystem) -> *NarrowPhaseQuery #foreign joltc "JPH_PhysicsSystem_GetNarrowPhaseQuery";
PhysicsSystem_GetNarrowPhaseQueryNoLock :: (system: *PhysicsSystem) -> *NarrowPhaseQuery #foreign joltc "JPH_PhysicsSystem_GetNarrowPhaseQueryNoLock";

PhysicsSystem_SetContactListener :: (system: *PhysicsSystem, listener: *ContactListener) -> void #foreign joltc "JPH_PhysicsSystem_SetContactListener";
PhysicsSystem_SetBodyActivationListener :: (system: *PhysicsSystem, listener: *BodyActivationListener) -> void #foreign joltc "JPH_PhysicsSystem_SetBodyActivationListener";
PhysicsSystem_SetSimShapeFilter :: (system: *PhysicsSystem, filter: *SimShapeFilter) -> void #foreign joltc "JPH_PhysicsSystem_SetSimShapeFilter";

PhysicsSystem_WereBodiesInContact :: (system: *PhysicsSystem, body1: BodyID, body2: BodyID) -> bool #foreign joltc "JPH_PhysicsSystem_WereBodiesInContact";

PhysicsSystem_GetNumBodies :: (system: *PhysicsSystem) -> u32 #foreign joltc "JPH_PhysicsSystem_GetNumBodies";
PhysicsSystem_GetNumActiveBodies :: (system: *PhysicsSystem, type: BodyType) -> u32 #foreign joltc "JPH_PhysicsSystem_GetNumActiveBodies";
PhysicsSystem_GetMaxBodies :: (system: *PhysicsSystem) -> u32 #foreign joltc "JPH_PhysicsSystem_GetMaxBodies";
PhysicsSystem_GetNumConstraints :: (system: *PhysicsSystem) -> u32 #foreign joltc "JPH_PhysicsSystem_GetNumConstraints";

PhysicsSystem_SetGravity :: (system: *PhysicsSystem, value: *Vec3) -> void #foreign joltc "JPH_PhysicsSystem_SetGravity";
PhysicsSystem_GetGravity :: (system: *PhysicsSystem, result: *Vec3) -> void #foreign joltc "JPH_PhysicsSystem_GetGravity";

PhysicsSystem_AddConstraint :: (system: *PhysicsSystem, constraint: *Constraint) -> void #foreign joltc "JPH_PhysicsSystem_AddConstraint";
PhysicsSystem_RemoveConstraint :: (system: *PhysicsSystem, constraint: *Constraint) -> void #foreign joltc "JPH_PhysicsSystem_RemoveConstraint";

PhysicsSystem_AddConstraints :: (system: *PhysicsSystem, constraints: **Constraint, count: u32) -> void #foreign joltc "JPH_PhysicsSystem_AddConstraints";
PhysicsSystem_RemoveConstraints :: (system: *PhysicsSystem, constraints: **Constraint, count: u32) -> void #foreign joltc "JPH_PhysicsSystem_RemoveConstraints";

PhysicsSystem_GetBodies :: (system: *PhysicsSystem, ids: *BodyID, count: u32) -> void #foreign joltc "JPH_PhysicsSystem_GetBodies";
PhysicsSystem_GetConstraints :: (system: *PhysicsSystem, constraints: **Constraint, count: u32) -> void #foreign joltc "JPH_PhysicsSystem_GetConstraints";

PhysicsSystem_DrawBodies :: (system: *PhysicsSystem, settings: *DrawSettings, renderer: *DebugRenderer, bodyFilter: *BodyDrawFilter) -> void #foreign joltc "JPH_PhysicsSystem_DrawBodies";
PhysicsSystem_DrawConstraints :: (system: *PhysicsSystem, renderer: *DebugRenderer) -> void #foreign joltc "JPH_PhysicsSystem_DrawConstraints";
PhysicsSystem_DrawConstraintLimits :: (system: *PhysicsSystem, renderer: *DebugRenderer) -> void #foreign joltc "JPH_PhysicsSystem_DrawConstraintLimits";
PhysicsSystem_DrawConstraintReferenceFrame :: (system: *PhysicsSystem, renderer: *DebugRenderer) -> void #foreign joltc "JPH_PhysicsSystem_DrawConstraintReferenceFrame";

/* Math */
Quaternion_FromTo :: (from: *Vec3, to: *Vec3, quat: *Quat) -> void #foreign joltc "JPH_Quaternion_FromTo";
Quat_GetAxisAngle :: (quat: *Quat, outAxis: *Vec3, outAngle: *float) -> void #foreign joltc "JPH_Quat_GetAxisAngle";
Quat_GetEulerAngles :: (quat: *Quat, result: *Vec3) -> void #foreign joltc "JPH_Quat_GetEulerAngles";
Quat_RotateAxisX :: (quat: *Quat, result: *Vec3) -> void #foreign joltc "JPH_Quat_RotateAxisX";
Quat_RotateAxisY :: (quat: *Quat, result: *Vec3) -> void #foreign joltc "JPH_Quat_RotateAxisY";
Quat_RotateAxisZ :: (quat: *Quat, result: *Vec3) -> void #foreign joltc "JPH_Quat_RotateAxisZ";
Quat_Inversed :: (quat: *Quat, result: *Quat) -> void #foreign joltc "JPH_Quat_Inversed";
Quat_GetPerpendicular :: (quat: *Quat, result: *Quat) -> void #foreign joltc "JPH_Quat_GetPerpendicular";
Quat_GetRotationAngle :: (quat: *Quat, axis: *Vec3) -> float #foreign joltc "JPH_Quat_GetRotationAngle";
Quat_FromEulerAngles :: (angles: *Vec3, result: *Quat) -> void #foreign joltc "JPH_Quat_FromEulerAngles";

Quat_Add :: (q1: *Quat, q2: *Quat, result: *Quat) -> void #foreign joltc "JPH_Quat_Add";
Quat_Subtract :: (q1: *Quat, q2: *Quat, result: *Quat) -> void #foreign joltc "JPH_Quat_Subtract";
Quat_Multiply :: (q1: *Quat, q2: *Quat, result: *Quat) -> void #foreign joltc "JPH_Quat_Multiply";
Quat_MultiplyScalar :: (q: *Quat, scalar: float, result: *Quat) -> void #foreign joltc "JPH_Quat_MultiplyScalar";

Quat_Dot :: (q1: *Quat, q2: *Quat, result: *float) -> void #foreign joltc "JPH_Quat_Dot";

Quat_Conjugated :: (quat: *Quat, result: *Quat) -> void #foreign joltc "JPH_Quat_Conjugated";
Quat_GetTwist :: (quat: *Quat, axis: *Vec3, result: *Quat) -> void #foreign joltc "JPH_Quat_GetTwist";
Quat_GetSwingTwist :: (quat: *Quat, outSwing: *Quat, outTwist: *Quat) -> void #foreign joltc "JPH_Quat_GetSwingTwist";
Quat_LERP :: (from: *Quat, to: *Quat, fraction: float, result: *Quat) -> void #foreign joltc "JPH_Quat_LERP";
Quat_SLERP :: (from: *Quat, to: *Quat, fraction: float, result: *Quat) -> void #foreign joltc "JPH_Quat_SLERP";
Quat_Rotate :: (quat: *Quat, vec: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Quat_Rotate";
Quat_InverseRotate :: (quat: *Quat, vec: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Quat_InverseRotate";

Vec3_IsClose :: (v1: *Vec3, v2: *Vec3, maxDistSq: float) -> bool #foreign joltc "JPH_Vec3_IsClose";
Vec3_IsNearZero :: (v: *Vec3, maxDistSq: float) -> bool #foreign joltc "JPH_Vec3_IsNearZero";
Vec3_IsNormalized :: (v: *Vec3, tolerance: float) -> bool #foreign joltc "JPH_Vec3_IsNormalized";
Vec3_IsNaN :: (v: *Vec3) -> bool #foreign joltc "JPH_Vec3_IsNaN";

Vec3_Negate :: (v: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Negate";
Vec3_Normalized :: (v: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Normalized";
Vec3_Cross :: (v1: *Vec3, v2: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Cross";
Vec3_Abs :: (v: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Abs";

Vec3_Length :: (v: *Vec3) -> float #foreign joltc "JPH_Vec3_Length";
Vec3_LengthSquared :: (v: *Vec3) -> float #foreign joltc "JPH_Vec3_LengthSquared";

Vec3_DotProduct :: (v1: *Vec3, v2: *Vec3, result: *float) -> void #foreign joltc "JPH_Vec3_DotProduct";
Vec3_Normalize :: (v: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Normalize";

Vec3_Add :: (v1: *Vec3, v2: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Add";
Vec3_Subtract :: (v1: *Vec3, v2: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Subtract";
Vec3_Multiply :: (v1: *Vec3, v2: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Multiply";
Vec3_MultiplyScalar :: (v: *Vec3, scalar: float, result: *Vec3) -> void #foreign joltc "JPH_Vec3_MultiplyScalar";
Vec3_Divide :: (v1: *Vec3, v2: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Vec3_Divide";
Vec3_DivideScalar :: (v: *Vec3, scalar: float, result: *Vec3) -> void #foreign joltc "JPH_Vec3_DivideScalar";

Matrix4x4_Add :: (m1: *Matrix4x4, m2: *Matrix4x4, result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Add";
Matrix4x4_Subtract :: (m1: *Matrix4x4, m2: *Matrix4x4, result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Subtract";
Matrix4x4_Multiply :: (m1: *Matrix4x4, m2: *Matrix4x4, result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Multiply";
Matrix4x4_MultiplyScalar :: (m: *Matrix4x4, scalar: float, result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_MultiplyScalar";

Matrix4x4_Zero :: (result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Zero";
Matrix4x4_Identity :: (result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Identity";
Matrix4x4_Rotation :: (result: *Matrix4x4, rotation: *Quat) -> void #foreign joltc "JPH_Matrix4x4_Rotation";
Matrix4x4_Translation :: (result: *Matrix4x4, translation: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_Translation";
Matrix4x4_RotationTranslation :: (result: *Matrix4x4, rotation: *Quat, translation: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_RotationTranslation";
Matrix4x4_InverseRotationTranslation :: (result: *Matrix4x4, rotation: *Quat, translation: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_InverseRotationTranslation";
Matrix4x4_Scale :: (result: *Matrix4x4, scale: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_Scale";
Matrix4x4_Inversed :: (m: *Matrix4x4, result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Inversed";
Matrix4x4_Transposed :: (m: *Matrix4x4, result: *Matrix4x4) -> void #foreign joltc "JPH_Matrix4x4_Transposed";

RMatrix4x4_Zero :: (result: *RMatrix4x4) -> void #foreign joltc "JPH_RMatrix4x4_Zero";
RMatrix4x4_Identity :: (result: *RMatrix4x4) -> void #foreign joltc "JPH_RMatrix4x4_Identity";
RMatrix4x4_Rotation :: (result: *RMatrix4x4, rotation: *Quat) -> void #foreign joltc "JPH_RMatrix4x4_Rotation";
RMatrix4x4_Translation :: (result: *RMatrix4x4, translation: *RVec3) -> void #foreign joltc "JPH_RMatrix4x4_Translation";
RMatrix4x4_RotationTranslation :: (result: *RMatrix4x4, rotation: *Quat, translation: *RVec3) -> void #foreign joltc "JPH_RMatrix4x4_RotationTranslation";
RMatrix4x4_InverseRotationTranslation :: (result: *RMatrix4x4, rotation: *Quat, translation: *RVec3) -> void #foreign joltc "JPH_RMatrix4x4_InverseRotationTranslation";
RMatrix4x4_Scale :: (result: *RMatrix4x4, scale: *Vec3) -> void #foreign joltc "JPH_RMatrix4x4_Scale";
RMatrix4x4_Inversed :: (m: *RMatrix4x4, result: *RMatrix4x4) -> void #foreign joltc "JPH_RMatrix4x4_Inversed";

Matrix4x4_GetAxisX :: (matrix: *Matrix4x4, result: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_GetAxisX";
Matrix4x4_GetAxisY :: (matrix: *Matrix4x4, result: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_GetAxisY";
Matrix4x4_GetAxisZ :: (matrix: *Matrix4x4, result: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_GetAxisZ";
Matrix4x4_GetTranslation :: (matrix: *Matrix4x4, result: *Vec3) -> void #foreign joltc "JPH_Matrix4x4_GetTranslation";
Matrix4x4_GetQuaternion :: (matrix: *Matrix4x4, result: *Quat) -> void #foreign joltc "JPH_Matrix4x4_GetQuaternion";

/* Material */
PhysicsMaterial_Create :: (name: *u8, color: u32) -> *PhysicsMaterial #foreign joltc "JPH_PhysicsMaterial_Create";
PhysicsMaterial_Destroy :: (material: *PhysicsMaterial) -> void #foreign joltc "JPH_PhysicsMaterial_Destroy";
PhysicsMaterial_GetDebugName :: (material: *PhysicsMaterial) -> *u8 #foreign joltc "JPH_PhysicsMaterial_GetDebugName";
PhysicsMaterial_GetDebugColor :: (material: *PhysicsMaterial) -> u32 #foreign joltc "JPH_PhysicsMaterial_GetDebugColor";

/* ShapeSettings */
ShapeSettings_Destroy :: (settings: *ShapeSettings) -> void #foreign joltc "JPH_ShapeSettings_Destroy";
ShapeSettings_GetUserData :: (settings: *ShapeSettings) -> u64 #foreign joltc "JPH_ShapeSettings_GetUserData";
ShapeSettings_SetUserData :: (settings: *ShapeSettings, userData: u64) -> void #foreign joltc "JPH_ShapeSettings_SetUserData";

/* Shape */
Shape_Destroy :: (shape: *Shape) -> void #foreign joltc "JPH_Shape_Destroy";
Shape_GetType :: (shape: *Shape) -> ShapeType #foreign joltc "JPH_Shape_GetType";
Shape_GetSubType :: (shape: *Shape) -> ShapeSubType #foreign joltc "JPH_Shape_GetSubType";
Shape_GetUserData :: (shape: *Shape) -> u64 #foreign joltc "JPH_Shape_GetUserData";
Shape_SetUserData :: (shape: *Shape, userData: u64) -> void #foreign joltc "JPH_Shape_SetUserData";
Shape_MustBeStatic :: (shape: *Shape) -> bool #foreign joltc "JPH_Shape_MustBeStatic";
Shape_GetCenterOfMass :: (shape: *Shape, result: *Vec3) -> void #foreign joltc "JPH_Shape_GetCenterOfMass";
Shape_GetLocalBounds :: (shape: *Shape, result: *AABox) -> void #foreign joltc "JPH_Shape_GetLocalBounds";
Shape_GetSubShapeIDBitsRecursive :: (shape: *Shape) -> u32 #foreign joltc "JPH_Shape_GetSubShapeIDBitsRecursive";
Shape_GetWorldSpaceBounds :: (shape: *Shape, centerOfMassTransform: *RMatrix4x4, scale: *Vec3, result: *AABox) -> void #foreign joltc "JPH_Shape_GetWorldSpaceBounds";
Shape_GetInnerRadius :: (shape: *Shape) -> float #foreign joltc "JPH_Shape_GetInnerRadius";
Shape_GetMassProperties :: (shape: *Shape, result: *MassProperties) -> void #foreign joltc "JPH_Shape_GetMassProperties";
Shape_GetLeafShape :: (shape: *Shape, subShapeID: SubShapeID, remainder: *SubShapeID) -> *Shape #foreign joltc "JPH_Shape_GetLeafShape";
Shape_GetMaterial :: (shape: *Shape, subShapeID: SubShapeID) -> *PhysicsMaterial #foreign joltc "JPH_Shape_GetMaterial";
Shape_GetSurfaceNormal :: (shape: *Shape, subShapeID: SubShapeID, localPosition: *Vec3, normal: *Vec3) -> void #foreign joltc "JPH_Shape_GetSurfaceNormal";
Shape_GetSupportingFace :: (shape: *Shape, subShapeID: SubShapeID, direction: *Vec3, scale: *Vec3, centerOfMassTransform: *Matrix4x4, outVertices: *SupportingFace) -> void #foreign joltc "JPH_Shape_GetSupportingFace";
Shape_GetVolume :: (shape: *Shape) -> float #foreign joltc "JPH_Shape_GetVolume";
Shape_IsValidScale :: (shape: *Shape, scale: *Vec3) -> bool #foreign joltc "JPH_Shape_IsValidScale";
Shape_MakeScaleValid :: (shape: *Shape, scale: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_Shape_MakeScaleValid";
Shape_ScaleShape :: (shape: *Shape, scale: *Vec3) -> *Shape #foreign joltc "JPH_Shape_ScaleShape";
Shape_CastRay :: (shape: *Shape, origin: *Vec3, direction: *Vec3, hit: *RayCastResult) -> bool #foreign joltc "JPH_Shape_CastRay";
Shape_CastRay2 :: (shape: *Shape, origin: *Vec3, direction: *Vec3, rayCastSettings: *RayCastSettings, collectorType: CollisionCollectorType, callback: CastRayResultCallback, userData: *void, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_Shape_CastRay2";
Shape_CollidePoint :: (shape: *Shape, point: *Vec3, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_Shape_CollidePoint";
Shape_CollidePoint2 :: (shape: *Shape, point: *Vec3, collectorType: CollisionCollectorType, callback: CollidePointResultCallback, userData: *void, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_Shape_CollidePoint2";

/* JPH_ConvexShape */
ConvexShapeSettings_GetDensity :: (shape: *ConvexShapeSettings) -> float #foreign joltc "JPH_ConvexShapeSettings_GetDensity";
ConvexShapeSettings_SetDensity :: (shape: *ConvexShapeSettings, value: float) -> void #foreign joltc "JPH_ConvexShapeSettings_SetDensity";
ConvexShape_GetDensity :: (shape: *ConvexShape) -> float #foreign joltc "JPH_ConvexShape_GetDensity";
ConvexShape_SetDensity :: (shape: *ConvexShape, inDensity: float) -> void #foreign joltc "JPH_ConvexShape_SetDensity";

/* BoxShape */
BoxShapeSettings_Create :: (halfExtent: *Vec3, convexRadius: float) -> *BoxShapeSettings #foreign joltc "JPH_BoxShapeSettings_Create";
BoxShapeSettings_CreateShape :: (settings: *BoxShapeSettings) -> *BoxShape #foreign joltc "JPH_BoxShapeSettings_CreateShape";

BoxShape_Create :: (halfExtent: *Vec3, convexRadius: float) -> *BoxShape #foreign joltc "JPH_BoxShape_Create";
BoxShape_GetHalfExtent :: (shape: *BoxShape, halfExtent: *Vec3) -> void #foreign joltc "JPH_BoxShape_GetHalfExtent";
BoxShape_GetConvexRadius :: (shape: *BoxShape) -> float #foreign joltc "JPH_BoxShape_GetConvexRadius";

/* SphereShape */
SphereShapeSettings_Create :: (radius: float) -> *SphereShapeSettings #foreign joltc "JPH_SphereShapeSettings_Create";
SphereShapeSettings_CreateShape :: (settings: *SphereShapeSettings) -> *SphereShape #foreign joltc "JPH_SphereShapeSettings_CreateShape";

SphereShapeSettings_GetRadius :: (settings: *SphereShapeSettings) -> float #foreign joltc "JPH_SphereShapeSettings_GetRadius";
SphereShapeSettings_SetRadius :: (settings: *SphereShapeSettings, radius: float) -> void #foreign joltc "JPH_SphereShapeSettings_SetRadius";
SphereShape_Create :: (radius: float) -> *SphereShape #foreign joltc "JPH_SphereShape_Create";
SphereShape_GetRadius :: (shape: *SphereShape) -> float #foreign joltc "JPH_SphereShape_GetRadius";

/* PlaneShape */
PlaneShapeSettings_Create :: (plane: *Plane, material: *PhysicsMaterial, halfExtent: float) -> *PlaneShapeSettings #foreign joltc "JPH_PlaneShapeSettings_Create";
PlaneShapeSettings_CreateShape :: (settings: *PlaneShapeSettings) -> *PlaneShape #foreign joltc "JPH_PlaneShapeSettings_CreateShape";
PlaneShape_Create :: (plane: *Plane, material: *PhysicsMaterial, halfExtent: float) -> *PlaneShape #foreign joltc "JPH_PlaneShape_Create";
PlaneShape_GetPlane :: (shape: *PlaneShape, result: *Plane) -> void #foreign joltc "JPH_PlaneShape_GetPlane";
PlaneShape_GetHalfExtent :: (shape: *PlaneShape) -> float #foreign joltc "JPH_PlaneShape_GetHalfExtent";

/* TriangleShape */
TriangleShapeSettings_Create :: (v1: *Vec3, v2: *Vec3, v3: *Vec3, convexRadius: float) -> *TriangleShapeSettings #foreign joltc "JPH_TriangleShapeSettings_Create";
TriangleShapeSettings_CreateShape :: (settings: *TriangleShapeSettings) -> *TriangleShape #foreign joltc "JPH_TriangleShapeSettings_CreateShape";

TriangleShape_Create :: (v1: *Vec3, v2: *Vec3, v3: *Vec3, convexRadius: float) -> *TriangleShape #foreign joltc "JPH_TriangleShape_Create";
TriangleShape_GetConvexRadius :: (shape: *TriangleShape) -> float #foreign joltc "JPH_TriangleShape_GetConvexRadius";
TriangleShape_GetVertex1 :: (shape: *TriangleShape, result: *Vec3) -> void #foreign joltc "JPH_TriangleShape_GetVertex1";
TriangleShape_GetVertex2 :: (shape: *TriangleShape, result: *Vec3) -> void #foreign joltc "JPH_TriangleShape_GetVertex2";
TriangleShape_GetVertex3 :: (shape: *TriangleShape, result: *Vec3) -> void #foreign joltc "JPH_TriangleShape_GetVertex3";

/* CapsuleShape */
CapsuleShapeSettings_Create :: (halfHeightOfCylinder: float, radius: float) -> *CapsuleShapeSettings #foreign joltc "JPH_CapsuleShapeSettings_Create";
CapsuleShapeSettings_CreateShape :: (settings: *CapsuleShapeSettings) -> *CapsuleShape #foreign joltc "JPH_CapsuleShapeSettings_CreateShape";
CapsuleShape_Create :: (halfHeightOfCylinder: float, radius: float) -> *CapsuleShape #foreign joltc "JPH_CapsuleShape_Create";
CapsuleShape_GetRadius :: (shape: *CapsuleShape) -> float #foreign joltc "JPH_CapsuleShape_GetRadius";
CapsuleShape_GetHalfHeightOfCylinder :: (shape: *CapsuleShape) -> float #foreign joltc "JPH_CapsuleShape_GetHalfHeightOfCylinder";

/* CylinderShape */
CylinderShapeSettings_Create :: (halfHeight: float, radius: float, convexRadius: float) -> *CylinderShapeSettings #foreign joltc "JPH_CylinderShapeSettings_Create";
CylinderShapeSettings_CreateShape :: (settings: *CylinderShapeSettings) -> *CylinderShape #foreign joltc "JPH_CylinderShapeSettings_CreateShape";

CylinderShape_Create :: (halfHeight: float, radius: float) -> *CylinderShape #foreign joltc "JPH_CylinderShape_Create";
CylinderShape_GetRadius :: (shape: *CylinderShape) -> float #foreign joltc "JPH_CylinderShape_GetRadius";
CylinderShape_GetHalfHeight :: (shape: *CylinderShape) -> float #foreign joltc "JPH_CylinderShape_GetHalfHeight";

/* TaperedCylinderShape */
TaperedCylinderShapeSettings_Create :: (halfHeightOfTaperedCylinder: float, topRadius: float, bottomRadius: float, convexRadius: float, material: *PhysicsMaterial) -> *TaperedCylinderShapeSettings #foreign joltc "JPH_TaperedCylinderShapeSettings_Create";
TaperedCylinderShapeSettings_CreateShape :: (settings: *TaperedCylinderShapeSettings) -> *TaperedCylinderShape #foreign joltc "JPH_TaperedCylinderShapeSettings_CreateShape";
TaperedCylinderShape_GetTopRadius :: (shape: *TaperedCylinderShape) -> float #foreign joltc "JPH_TaperedCylinderShape_GetTopRadius";
TaperedCylinderShape_GetBottomRadius :: (shape: *TaperedCylinderShape) -> float #foreign joltc "JPH_TaperedCylinderShape_GetBottomRadius";
TaperedCylinderShape_GetConvexRadius :: (shape: *TaperedCylinderShape) -> float #foreign joltc "JPH_TaperedCylinderShape_GetConvexRadius";
TaperedCylinderShape_GetHalfHeight :: (shape: *TaperedCylinderShape) -> float #foreign joltc "JPH_TaperedCylinderShape_GetHalfHeight";

/* ConvexHullShape */
ConvexHullShapeSettings_Create :: (points: *Vec3, pointsCount: u32, maxConvexRadius: float) -> *ConvexHullShapeSettings #foreign joltc "JPH_ConvexHullShapeSettings_Create";
ConvexHullShapeSettings_CreateShape :: (settings: *ConvexHullShapeSettings) -> *ConvexHullShape #foreign joltc "JPH_ConvexHullShapeSettings_CreateShape";
ConvexHullShape_GetNumPoints :: (shape: *ConvexHullShape) -> u32 #foreign joltc "JPH_ConvexHullShape_GetNumPoints";
ConvexHullShape_GetPoint :: (shape: *ConvexHullShape, index: u32, result: *Vec3) -> void #foreign joltc "JPH_ConvexHullShape_GetPoint";
ConvexHullShape_GetNumFaces :: (shape: *ConvexHullShape) -> u32 #foreign joltc "JPH_ConvexHullShape_GetNumFaces";
ConvexHullShape_GetNumVerticesInFace :: (shape: *ConvexHullShape, faceIndex: u32) -> u32 #foreign joltc "JPH_ConvexHullShape_GetNumVerticesInFace";
ConvexHullShape_GetFaceVertices :: (shape: *ConvexHullShape, faceIndex: u32, maxVertices: u32, vertices: *u32) -> u32 #foreign joltc "JPH_ConvexHullShape_GetFaceVertices";

/* MeshShape */
MeshShapeSettings_Create :: (triangles: *Triangle, triangleCount: u32) -> *MeshShapeSettings #foreign joltc "JPH_MeshShapeSettings_Create";
MeshShapeSettings_Create2 :: (vertices: *Vec3, verticesCount: u32, triangles: *IndexedTriangle, triangleCount: u32) -> *MeshShapeSettings #foreign joltc "JPH_MeshShapeSettings_Create2";
MeshShapeSettings_GetMaxTrianglesPerLeaf :: (settings: *MeshShapeSettings) -> u32 #foreign joltc "JPH_MeshShapeSettings_GetMaxTrianglesPerLeaf";
MeshShapeSettings_SetMaxTrianglesPerLeaf :: (settings: *MeshShapeSettings, value: u32) -> void #foreign joltc "JPH_MeshShapeSettings_SetMaxTrianglesPerLeaf";
MeshShapeSettings_GetActiveEdgeCosThresholdAngle :: (settings: *MeshShapeSettings) -> float #foreign joltc "JPH_MeshShapeSettings_GetActiveEdgeCosThresholdAngle";
MeshShapeSettings_SetActiveEdgeCosThresholdAngle :: (settings: *MeshShapeSettings, value: float) -> void #foreign joltc "JPH_MeshShapeSettings_SetActiveEdgeCosThresholdAngle";
MeshShapeSettings_GetPerTriangleUserData :: (settings: *MeshShapeSettings) -> bool #foreign joltc "JPH_MeshShapeSettings_GetPerTriangleUserData";
MeshShapeSettings_SetPerTriangleUserData :: (settings: *MeshShapeSettings, value: bool) -> void #foreign joltc "JPH_MeshShapeSettings_SetPerTriangleUserData";
MeshShapeSettings_GetBuildQuality :: (settings: *MeshShapeSettings) -> Mesh_Shape_BuildQuality #foreign joltc "JPH_MeshShapeSettings_GetBuildQuality";
MeshShapeSettings_SetBuildQuality :: (settings: *MeshShapeSettings, value: Mesh_Shape_BuildQuality) -> void #foreign joltc "JPH_MeshShapeSettings_SetBuildQuality";

MeshShapeSettings_Sanitize :: (settings: *MeshShapeSettings) -> void #foreign joltc "JPH_MeshShapeSettings_Sanitize";
MeshShapeSettings_CreateShape :: (settings: *MeshShapeSettings) -> *MeshShape #foreign joltc "JPH_MeshShapeSettings_CreateShape";
MeshShape_GetTriangleUserData :: (shape: *MeshShape, id: SubShapeID) -> u32 #foreign joltc "JPH_MeshShape_GetTriangleUserData";

/* HeightFieldShape */
HeightFieldShapeSettings_Create :: (samples: *float, offset: *Vec3, scale: *Vec3, sampleCount: u32) -> *HeightFieldShapeSettings #foreign joltc "JPH_HeightFieldShapeSettings_Create";
HeightFieldShapeSettings_CreateShape :: (settings: *HeightFieldShapeSettings) -> *HeightFieldShape #foreign joltc "JPH_HeightFieldShapeSettings_CreateShape";
HeightFieldShapeSettings_DetermineMinAndMaxSample :: (settings: *HeightFieldShapeSettings, pOutMinValue: *float, pOutMaxValue: *float, pOutQuantizationScale: *float) -> void #foreign joltc "JPH_HeightFieldShapeSettings_DetermineMinAndMaxSample";
HeightFieldShapeSettings_CalculateBitsPerSampleForError :: (settings: *HeightFieldShapeSettings, maxError: float) -> u32 #foreign joltc "JPH_HeightFieldShapeSettings_CalculateBitsPerSampleForError";

HeightFieldShape_GetSampleCount :: (shape: *HeightFieldShape) -> u32 #foreign joltc "JPH_HeightFieldShape_GetSampleCount";
HeightFieldShape_GetBlockSize :: (shape: *HeightFieldShape) -> u32 #foreign joltc "JPH_HeightFieldShape_GetBlockSize";
HeightFieldShape_GetMaterial :: (shape: *HeightFieldShape, x: u32, y: u32) -> *PhysicsMaterial #foreign joltc "JPH_HeightFieldShape_GetMaterial";
HeightFieldShape_GetPosition :: (shape: *HeightFieldShape, x: u32, y: u32, result: *Vec3) -> void #foreign joltc "JPH_HeightFieldShape_GetPosition";
HeightFieldShape_IsNoCollision :: (shape: *HeightFieldShape, x: u32, y: u32) -> bool #foreign joltc "JPH_HeightFieldShape_IsNoCollision";
HeightFieldShape_ProjectOntoSurface :: (shape: *HeightFieldShape, localPosition: *Vec3, outSurfacePosition: *Vec3, outSubShapeID: *SubShapeID) -> bool #foreign joltc "JPH_HeightFieldShape_ProjectOntoSurface";
HeightFieldShape_GetMinHeightValue :: (shape: *HeightFieldShape) -> float #foreign joltc "JPH_HeightFieldShape_GetMinHeightValue";
HeightFieldShape_GetMaxHeightValue :: (shape: *HeightFieldShape) -> float #foreign joltc "JPH_HeightFieldShape_GetMaxHeightValue";

/* TaperedCapsuleShape */
TaperedCapsuleShapeSettings_Create :: (halfHeightOfTaperedCylinder: float, topRadius: float, bottomRadius: float) -> *TaperedCapsuleShapeSettings #foreign joltc "JPH_TaperedCapsuleShapeSettings_Create";
TaperedCapsuleShapeSettings_CreateShape :: (settings: *TaperedCapsuleShapeSettings) -> *TaperedCapsuleShape #foreign joltc "JPH_TaperedCapsuleShapeSettings_CreateShape";

TaperedCapsuleShape_GetTopRadius :: (shape: *TaperedCapsuleShape) -> float #foreign joltc "JPH_TaperedCapsuleShape_GetTopRadius";
TaperedCapsuleShape_GetBottomRadius :: (shape: *TaperedCapsuleShape) -> float #foreign joltc "JPH_TaperedCapsuleShape_GetBottomRadius";
TaperedCapsuleShape_GetHalfHeight :: (shape: *TaperedCapsuleShape) -> float #foreign joltc "JPH_TaperedCapsuleShape_GetHalfHeight";

/* CompoundShape */
CompoundShapeSettings_AddShape :: (settings: *CompoundShapeSettings, position: *Vec3, rotation: *Quat, shapeSettings: *ShapeSettings, userData: u32) -> void #foreign joltc "JPH_CompoundShapeSettings_AddShape";
CompoundShapeSettings_AddShape2 :: (settings: *CompoundShapeSettings, position: *Vec3, rotation: *Quat, shape: *Shape, userData: u32) -> void #foreign joltc "JPH_CompoundShapeSettings_AddShape2";
CompoundShape_GetNumSubShapes :: (shape: *CompoundShape) -> u32 #foreign joltc "JPH_CompoundShape_GetNumSubShapes";
CompoundShape_GetSubShape :: (shape: *CompoundShape, index: u32, subShape: **Shape, positionCOM: *Vec3, rotation: *Quat, userData: *u32) -> void #foreign joltc "JPH_CompoundShape_GetSubShape";
CompoundShape_GetSubShapeIndexFromID :: (shape: *CompoundShape, id: SubShapeID, remainder: *SubShapeID) -> u32 #foreign joltc "JPH_CompoundShape_GetSubShapeIndexFromID";

/* StaticCompoundShape */
StaticCompoundShapeSettings_Create :: () -> *StaticCompoundShapeSettings #foreign joltc "JPH_StaticCompoundShapeSettings_Create";
StaticCompoundShape_Create :: (settings: *StaticCompoundShapeSettings) -> *StaticCompoundShape #foreign joltc "JPH_StaticCompoundShape_Create";

/* MutableCompoundShape */
MutableCompoundShapeSettings_Create :: () -> *MutableCompoundShapeSettings #foreign joltc "JPH_MutableCompoundShapeSettings_Create";
MutableCompoundShape_Create :: (settings: *MutableCompoundShapeSettings) -> *MutableCompoundShape #foreign joltc "JPH_MutableCompoundShape_Create";

MutableCompoundShape_AddShape :: (shape: *MutableCompoundShape, position: *Vec3, rotation: *Quat, child: *Shape, userData: u32, index: u32) -> u32 #foreign joltc "JPH_MutableCompoundShape_AddShape";
MutableCompoundShape_RemoveShape :: (shape: *MutableCompoundShape, index: u32) -> void #foreign joltc "JPH_MutableCompoundShape_RemoveShape";
MutableCompoundShape_ModifyShape :: (shape: *MutableCompoundShape, index: u32, position: *Vec3, rotation: *Quat) -> void #foreign joltc "JPH_MutableCompoundShape_ModifyShape";
MutableCompoundShape_ModifyShape2 :: (shape: *MutableCompoundShape, index: u32, position: *Vec3, rotation: *Quat, newShape: *Shape) -> void #foreign joltc "JPH_MutableCompoundShape_ModifyShape2";
MutableCompoundShape_AdjustCenterOfMass :: (shape: *MutableCompoundShape) -> void #foreign joltc "JPH_MutableCompoundShape_AdjustCenterOfMass";

/* DecoratedShape */
DecoratedShape_GetInnerShape :: (shape: *DecoratedShape) -> *Shape #foreign joltc "JPH_DecoratedShape_GetInnerShape";

/* RotatedTranslatedShape */
RotatedTranslatedShapeSettings_Create :: (position: *Vec3, rotation: *Quat, shapeSettings: *ShapeSettings) -> *RotatedTranslatedShapeSettings #foreign joltc "JPH_RotatedTranslatedShapeSettings_Create";
RotatedTranslatedShapeSettings_Create2 :: (position: *Vec3, rotation: *Quat, shape: *Shape) -> *RotatedTranslatedShapeSettings #foreign joltc "JPH_RotatedTranslatedShapeSettings_Create2";
RotatedTranslatedShapeSettings_CreateShape :: (settings: *RotatedTranslatedShapeSettings) -> *RotatedTranslatedShape #foreign joltc "JPH_RotatedTranslatedShapeSettings_CreateShape";
RotatedTranslatedShape_Create :: (position: *Vec3, rotation: *Quat, shape: *Shape) -> *RotatedTranslatedShape #foreign joltc "JPH_RotatedTranslatedShape_Create";
RotatedTranslatedShape_GetPosition :: (shape: *RotatedTranslatedShape, position: *Vec3) -> void #foreign joltc "JPH_RotatedTranslatedShape_GetPosition";
RotatedTranslatedShape_GetRotation :: (shape: *RotatedTranslatedShape, rotation: *Quat) -> void #foreign joltc "JPH_RotatedTranslatedShape_GetRotation";

/* ScaledShape */
ScaledShapeSettings_Create :: (shapeSettings: *ShapeSettings, scale: *Vec3) -> *ScaledShapeSettings #foreign joltc "JPH_ScaledShapeSettings_Create";
ScaledShapeSettings_Create2 :: (shape: *Shape, scale: *Vec3) -> *ScaledShapeSettings #foreign joltc "JPH_ScaledShapeSettings_Create2";
ScaledShapeSettings_CreateShape :: (settings: *ScaledShapeSettings) -> *ScaledShape #foreign joltc "JPH_ScaledShapeSettings_CreateShape";
ScaledShape_Create :: (shape: *Shape, scale: *Vec3) -> *ScaledShape #foreign joltc "JPH_ScaledShape_Create";
ScaledShape_GetScale :: (shape: *ScaledShape, result: *Vec3) -> void #foreign joltc "JPH_ScaledShape_GetScale";

/* OffsetCenterOfMassShape */
OffsetCenterOfMassShapeSettings_Create :: (offset: *Vec3, shapeSettings: *ShapeSettings) -> *OffsetCenterOfMassShapeSettings #foreign joltc "JPH_OffsetCenterOfMassShapeSettings_Create";
OffsetCenterOfMassShapeSettings_Create2 :: (offset: *Vec3, shape: *Shape) -> *OffsetCenterOfMassShapeSettings #foreign joltc "JPH_OffsetCenterOfMassShapeSettings_Create2";
OffsetCenterOfMassShapeSettings_CreateShape :: (settings: *OffsetCenterOfMassShapeSettings) -> *OffsetCenterOfMassShape #foreign joltc "JPH_OffsetCenterOfMassShapeSettings_CreateShape";

OffsetCenterOfMassShape_Create :: (offset: *Vec3, shape: *Shape) -> *OffsetCenterOfMassShape #foreign joltc "JPH_OffsetCenterOfMassShape_Create";
OffsetCenterOfMassShape_GetOffset :: (shape: *OffsetCenterOfMassShape, result: *Vec3) -> void #foreign joltc "JPH_OffsetCenterOfMassShape_GetOffset";

/* EmptyShape */
EmptyShapeSettings_Create :: (centerOfMass: *Vec3) -> *EmptyShapeSettings #foreign joltc "JPH_EmptyShapeSettings_Create";
EmptyShapeSettings_CreateShape :: (settings: *EmptyShapeSettings) -> *EmptyShape #foreign joltc "JPH_EmptyShapeSettings_CreateShape";

/* JPH_BodyCreationSettings */
BodyCreationSettings_Create :: () -> *BodyCreationSettings #foreign joltc "JPH_BodyCreationSettings_Create";
BodyCreationSettings_Create2 :: (settings: *ShapeSettings, position: *RVec3, rotation: *Quat, motionType: MotionType, objectLayer: ObjectLayer) -> *BodyCreationSettings #foreign joltc "JPH_BodyCreationSettings_Create2";

BodyCreationSettings_Create3 :: (shape: *Shape, position: *RVec3, rotation: *Quat, motionType: MotionType, objectLayer: ObjectLayer) -> *BodyCreationSettings #foreign joltc "JPH_BodyCreationSettings_Create3";

BodyCreationSettings_Destroy :: (settings: *BodyCreationSettings) -> void #foreign joltc "JPH_BodyCreationSettings_Destroy";

BodyCreationSettings_GetPosition :: (settings: *BodyCreationSettings, result: *RVec3) -> void #foreign joltc "JPH_BodyCreationSettings_GetPosition";
BodyCreationSettings_SetPosition :: (settings: *BodyCreationSettings, value: *RVec3) -> void #foreign joltc "JPH_BodyCreationSettings_SetPosition";

BodyCreationSettings_GetRotation :: (settings: *BodyCreationSettings, result: *Quat) -> void #foreign joltc "JPH_BodyCreationSettings_GetRotation";
BodyCreationSettings_SetRotation :: (settings: *BodyCreationSettings, value: *Quat) -> void #foreign joltc "JPH_BodyCreationSettings_SetRotation";

BodyCreationSettings_GetLinearVelocity :: (settings: *BodyCreationSettings, velocity: *Vec3) -> void #foreign joltc "JPH_BodyCreationSettings_GetLinearVelocity";
BodyCreationSettings_SetLinearVelocity :: (settings: *BodyCreationSettings, velocity: *Vec3) -> void #foreign joltc "JPH_BodyCreationSettings_SetLinearVelocity";

BodyCreationSettings_GetAngularVelocity :: (settings: *BodyCreationSettings, velocity: *Vec3) -> void #foreign joltc "JPH_BodyCreationSettings_GetAngularVelocity";
BodyCreationSettings_SetAngularVelocity :: (settings: *BodyCreationSettings, velocity: *Vec3) -> void #foreign joltc "JPH_BodyCreationSettings_SetAngularVelocity";

BodyCreationSettings_GetUserData :: (settings: *BodyCreationSettings) -> u64 #foreign joltc "JPH_BodyCreationSettings_GetUserData";
BodyCreationSettings_SetUserData :: (settings: *BodyCreationSettings, value: u64) -> void #foreign joltc "JPH_BodyCreationSettings_SetUserData";

BodyCreationSettings_GetObjectLayer :: (settings: *BodyCreationSettings) -> ObjectLayer #foreign joltc "JPH_BodyCreationSettings_GetObjectLayer";
BodyCreationSettings_SetObjectLayer :: (settings: *BodyCreationSettings, value: ObjectLayer) -> void #foreign joltc "JPH_BodyCreationSettings_SetObjectLayer";

BodyCreationSettings_GetMotionType :: (settings: *BodyCreationSettings) -> MotionType #foreign joltc "JPH_BodyCreationSettings_GetMotionType";
BodyCreationSettings_SetMotionType :: (settings: *BodyCreationSettings, value: MotionType) -> void #foreign joltc "JPH_BodyCreationSettings_SetMotionType";

BodyCreationSettings_GetAllowedDOFs :: (settings: *BodyCreationSettings) -> AllowedDOFs #foreign joltc "JPH_BodyCreationSettings_GetAllowedDOFs";
BodyCreationSettings_SetAllowedDOFs :: (settings: *BodyCreationSettings, value: AllowedDOFs) -> void #foreign joltc "JPH_BodyCreationSettings_SetAllowedDOFs";

BodyCreationSettings_GetAllowDynamicOrKinematic :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetAllowDynamicOrKinematic";
BodyCreationSettings_SetAllowDynamicOrKinematic :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetAllowDynamicOrKinematic";

BodyCreationSettings_GetIsSensor :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetIsSensor";
BodyCreationSettings_SetIsSensor :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetIsSensor";

BodyCreationSettings_GetCollideKinematicVsNonDynamic :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetCollideKinematicVsNonDynamic";
BodyCreationSettings_SetCollideKinematicVsNonDynamic :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetCollideKinematicVsNonDynamic";

BodyCreationSettings_GetUseManifoldReduction :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetUseManifoldReduction";
BodyCreationSettings_SetUseManifoldReduction :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetUseManifoldReduction";

BodyCreationSettings_GetApplyGyroscopicForce :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetApplyGyroscopicForce";
BodyCreationSettings_SetApplyGyroscopicForce :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetApplyGyroscopicForce";

BodyCreationSettings_GetMotionQuality :: (settings: *BodyCreationSettings) -> MotionQuality #foreign joltc "JPH_BodyCreationSettings_GetMotionQuality";
BodyCreationSettings_SetMotionQuality :: (settings: *BodyCreationSettings, value: MotionQuality) -> void #foreign joltc "JPH_BodyCreationSettings_SetMotionQuality";

BodyCreationSettings_GetEnhancedInternalEdgeRemoval :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetEnhancedInternalEdgeRemoval";
BodyCreationSettings_SetEnhancedInternalEdgeRemoval :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetEnhancedInternalEdgeRemoval";

BodyCreationSettings_GetAllowSleeping :: (settings: *BodyCreationSettings) -> bool #foreign joltc "JPH_BodyCreationSettings_GetAllowSleeping";
BodyCreationSettings_SetAllowSleeping :: (settings: *BodyCreationSettings, value: bool) -> void #foreign joltc "JPH_BodyCreationSettings_SetAllowSleeping";

BodyCreationSettings_GetFriction :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetFriction";
BodyCreationSettings_SetFriction :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetFriction";

BodyCreationSettings_GetRestitution :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetRestitution";
BodyCreationSettings_SetRestitution :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetRestitution";

BodyCreationSettings_GetLinearDamping :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetLinearDamping";
BodyCreationSettings_SetLinearDamping :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetLinearDamping";

BodyCreationSettings_GetAngularDamping :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetAngularDamping";
BodyCreationSettings_SetAngularDamping :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetAngularDamping";

BodyCreationSettings_GetMaxLinearVelocity :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetMaxLinearVelocity";
BodyCreationSettings_SetMaxLinearVelocity :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetMaxLinearVelocity";

BodyCreationSettings_GetMaxAngularVelocity :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetMaxAngularVelocity";
BodyCreationSettings_SetMaxAngularVelocity :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetMaxAngularVelocity";

BodyCreationSettings_GetGravityFactor :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetGravityFactor";
BodyCreationSettings_SetGravityFactor :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetGravityFactor";

BodyCreationSettings_GetNumVelocityStepsOverride :: (settings: *BodyCreationSettings) -> u32 #foreign joltc "JPH_BodyCreationSettings_GetNumVelocityStepsOverride";
BodyCreationSettings_SetNumVelocityStepsOverride :: (settings: *BodyCreationSettings, value: u32) -> void #foreign joltc "JPH_BodyCreationSettings_SetNumVelocityStepsOverride";

BodyCreationSettings_GetNumPositionStepsOverride :: (settings: *BodyCreationSettings) -> u32 #foreign joltc "JPH_BodyCreationSettings_GetNumPositionStepsOverride";
BodyCreationSettings_SetNumPositionStepsOverride :: (settings: *BodyCreationSettings, value: u32) -> void #foreign joltc "JPH_BodyCreationSettings_SetNumPositionStepsOverride";

BodyCreationSettings_GetOverrideMassProperties :: (settings: *BodyCreationSettings) -> OverrideMassProperties #foreign joltc "JPH_BodyCreationSettings_GetOverrideMassProperties";
BodyCreationSettings_SetOverrideMassProperties :: (settings: *BodyCreationSettings, value: OverrideMassProperties) -> void #foreign joltc "JPH_BodyCreationSettings_SetOverrideMassProperties";

BodyCreationSettings_GetInertiaMultiplier :: (settings: *BodyCreationSettings) -> float #foreign joltc "JPH_BodyCreationSettings_GetInertiaMultiplier";
BodyCreationSettings_SetInertiaMultiplier :: (settings: *BodyCreationSettings, value: float) -> void #foreign joltc "JPH_BodyCreationSettings_SetInertiaMultiplier";

BodyCreationSettings_GetMassPropertiesOverride :: (settings: *BodyCreationSettings, result: *MassProperties) -> void #foreign joltc "JPH_BodyCreationSettings_GetMassPropertiesOverride";
BodyCreationSettings_SetMassPropertiesOverride :: (settings: *BodyCreationSettings, massProperties: *MassProperties) -> void #foreign joltc "JPH_BodyCreationSettings_SetMassPropertiesOverride";

/* JPH_SoftBodyCreationSettings */
SoftBodyCreationSettings_Create :: () -> *SoftBodyCreationSettings #foreign joltc "JPH_SoftBodyCreationSettings_Create";
SoftBodyCreationSettings_Destroy :: (settings: *SoftBodyCreationSettings) -> void #foreign joltc "JPH_SoftBodyCreationSettings_Destroy";

/* JPH_Constraint */
Constraint_Destroy :: (constraint: *Constraint) -> void #foreign joltc "JPH_Constraint_Destroy";
Constraint_GetType :: (constraint: *Constraint) -> ConstraintType #foreign joltc "JPH_Constraint_GetType";
Constraint_GetSubType :: (constraint: *Constraint) -> ConstraintSubType #foreign joltc "JPH_Constraint_GetSubType";
Constraint_GetConstraintPriority :: (constraint: *Constraint) -> u32 #foreign joltc "JPH_Constraint_GetConstraintPriority";
Constraint_SetConstraintPriority :: (constraint: *Constraint, priority: u32) -> void #foreign joltc "JPH_Constraint_SetConstraintPriority";
Constraint_GetNumVelocityStepsOverride :: (constraint: *Constraint) -> u32 #foreign joltc "JPH_Constraint_GetNumVelocityStepsOverride";
Constraint_SetNumVelocityStepsOverride :: (constraint: *Constraint, value: u32) -> void #foreign joltc "JPH_Constraint_SetNumVelocityStepsOverride";
Constraint_GetNumPositionStepsOverride :: (constraint: *Constraint) -> u32 #foreign joltc "JPH_Constraint_GetNumPositionStepsOverride";
Constraint_SetNumPositionStepsOverride :: (constraint: *Constraint, value: u32) -> void #foreign joltc "JPH_Constraint_SetNumPositionStepsOverride";
Constraint_GetEnabled :: (constraint: *Constraint) -> bool #foreign joltc "JPH_Constraint_GetEnabled";
Constraint_SetEnabled :: (constraint: *Constraint, enabled: bool) -> void #foreign joltc "JPH_Constraint_SetEnabled";
Constraint_GetUserData :: (constraint: *Constraint) -> u64 #foreign joltc "JPH_Constraint_GetUserData";
Constraint_SetUserData :: (constraint: *Constraint, userData: u64) -> void #foreign joltc "JPH_Constraint_SetUserData";
Constraint_NotifyShapeChanged :: (constraint: *Constraint, bodyID: BodyID, deltaCOM: *Vec3) -> void #foreign joltc "JPH_Constraint_NotifyShapeChanged";
Constraint_ResetWarmStart :: (constraint: *Constraint) -> void #foreign joltc "JPH_Constraint_ResetWarmStart";
Constraint_IsActive :: (constraint: *Constraint) -> bool #foreign joltc "JPH_Constraint_IsActive";
Constraint_SetupVelocityConstraint :: (constraint: *Constraint, deltaTime: float) -> void #foreign joltc "JPH_Constraint_SetupVelocityConstraint";
Constraint_WarmStartVelocityConstraint :: (constraint: *Constraint, warmStartImpulseRatio: float) -> void #foreign joltc "JPH_Constraint_WarmStartVelocityConstraint";
Constraint_SolveVelocityConstraint :: (constraint: *Constraint, deltaTime: float) -> bool #foreign joltc "JPH_Constraint_SolveVelocityConstraint";
Constraint_SolvePositionConstraint :: (constraint: *Constraint, deltaTime: float, baumgarte: float) -> bool #foreign joltc "JPH_Constraint_SolvePositionConstraint";

/* JPH_TwoBodyConstraint */
TwoBodyConstraint_GetBody1 :: (constraint: *TwoBodyConstraint) -> *Body #foreign joltc "JPH_TwoBodyConstraint_GetBody1";
TwoBodyConstraint_GetBody2 :: (constraint: *TwoBodyConstraint) -> *Body #foreign joltc "JPH_TwoBodyConstraint_GetBody2";
TwoBodyConstraint_GetConstraintToBody1Matrix :: (constraint: *TwoBodyConstraint, result: *Matrix4x4) -> void #foreign joltc "JPH_TwoBodyConstraint_GetConstraintToBody1Matrix";
TwoBodyConstraint_GetConstraintToBody2Matrix :: (constraint: *TwoBodyConstraint, result: *Matrix4x4) -> void #foreign joltc "JPH_TwoBodyConstraint_GetConstraintToBody2Matrix";

/* JPH_FixedConstraint */
FixedConstraintSettings_Init :: (settings: *FixedConstraintSettings) -> void #foreign joltc "JPH_FixedConstraintSettings_Init";
FixedConstraint_Create :: (settings: *FixedConstraintSettings, body1: *Body, body2: *Body) -> *FixedConstraint #foreign joltc "JPH_FixedConstraint_Create";
FixedConstraint_GetSettings :: (constraint: *FixedConstraint, settings: *FixedConstraintSettings) -> void #foreign joltc "JPH_FixedConstraint_GetSettings";
FixedConstraint_GetTotalLambdaPosition :: (constraint: *FixedConstraint, result: *Vec3) -> void #foreign joltc "JPH_FixedConstraint_GetTotalLambdaPosition";
FixedConstraint_GetTotalLambdaRotation :: (constraint: *FixedConstraint, result: *Vec3) -> void #foreign joltc "JPH_FixedConstraint_GetTotalLambdaRotation";

/* JPH_DistanceConstraint */
DistanceConstraintSettings_Init :: (settings: *DistanceConstraintSettings) -> void #foreign joltc "JPH_DistanceConstraintSettings_Init";
DistanceConstraint_Create :: (settings: *DistanceConstraintSettings, body1: *Body, body2: *Body) -> *DistanceConstraint #foreign joltc "JPH_DistanceConstraint_Create";
DistanceConstraint_GetSettings :: (constraint: *DistanceConstraint, settings: *DistanceConstraintSettings) -> void #foreign joltc "JPH_DistanceConstraint_GetSettings";
DistanceConstraint_SetDistance :: (constraint: *DistanceConstraint, minDistance: float, maxDistance: float) -> void #foreign joltc "JPH_DistanceConstraint_SetDistance";
DistanceConstraint_GetMinDistance :: (constraint: *DistanceConstraint) -> float #foreign joltc "JPH_DistanceConstraint_GetMinDistance";
DistanceConstraint_GetMaxDistance :: (constraint: *DistanceConstraint) -> float #foreign joltc "JPH_DistanceConstraint_GetMaxDistance";
DistanceConstraint_GetLimitsSpringSettings :: (constraint: *DistanceConstraint, result: *SpringSettings) -> void #foreign joltc "JPH_DistanceConstraint_GetLimitsSpringSettings";
DistanceConstraint_SetLimitsSpringSettings :: (constraint: *DistanceConstraint, settings: *SpringSettings) -> void #foreign joltc "JPH_DistanceConstraint_SetLimitsSpringSettings";
DistanceConstraint_GetTotalLambdaPosition :: (constraint: *DistanceConstraint) -> float #foreign joltc "JPH_DistanceConstraint_GetTotalLambdaPosition";

/* JPH_PointConstraint */
PointConstraintSettings_Init :: (settings: *PointConstraintSettings) -> void #foreign joltc "JPH_PointConstraintSettings_Init";
PointConstraint_Create :: (settings: *PointConstraintSettings, body1: *Body, body2: *Body) -> *PointConstraint #foreign joltc "JPH_PointConstraint_Create";
PointConstraint_GetSettings :: (constraint: *PointConstraint, settings: *PointConstraintSettings) -> void #foreign joltc "JPH_PointConstraint_GetSettings";
PointConstraint_SetPoint1 :: (constraint: *PointConstraint, space: ConstraintSpace, value: *RVec3) -> void #foreign joltc "JPH_PointConstraint_SetPoint1";
PointConstraint_SetPoint2 :: (constraint: *PointConstraint, space: ConstraintSpace, value: *RVec3) -> void #foreign joltc "JPH_PointConstraint_SetPoint2";
PointConstraint_GetLocalSpacePoint1 :: (constraint: *PointConstraint, result: *Vec3) -> void #foreign joltc "JPH_PointConstraint_GetLocalSpacePoint1";
PointConstraint_GetLocalSpacePoint2 :: (constraint: *PointConstraint, result: *Vec3) -> void #foreign joltc "JPH_PointConstraint_GetLocalSpacePoint2";
PointConstraint_GetTotalLambdaPosition :: (constraint: *PointConstraint, result: *Vec3) -> void #foreign joltc "JPH_PointConstraint_GetTotalLambdaPosition";

/* JPH_HingeConstraint */
HingeConstraintSettings_Init :: (settings: *HingeConstraintSettings) -> void #foreign joltc "JPH_HingeConstraintSettings_Init";
HingeConstraint_Create :: (settings: *HingeConstraintSettings, body1: *Body, body2: *Body) -> *HingeConstraint #foreign joltc "JPH_HingeConstraint_Create";
HingeConstraint_GetSettings :: (constraint: *HingeConstraint, settings: *HingeConstraintSettings) -> void #foreign joltc "JPH_HingeConstraint_GetSettings";
HingeConstraint_GetLocalSpacePoint1 :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetLocalSpacePoint1";
HingeConstraint_GetLocalSpacePoint2 :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetLocalSpacePoint2";
HingeConstraint_GetLocalSpaceHingeAxis1 :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetLocalSpaceHingeAxis1";
HingeConstraint_GetLocalSpaceHingeAxis2 :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetLocalSpaceHingeAxis2";
HingeConstraint_GetLocalSpaceNormalAxis1 :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetLocalSpaceNormalAxis1";
HingeConstraint_GetLocalSpaceNormalAxis2 :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetLocalSpaceNormalAxis2";
HingeConstraint_GetCurrentAngle :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetCurrentAngle";
HingeConstraint_SetMaxFrictionTorque :: (constraint: *HingeConstraint, frictionTorque: float) -> void #foreign joltc "JPH_HingeConstraint_SetMaxFrictionTorque";
HingeConstraint_GetMaxFrictionTorque :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetMaxFrictionTorque";
HingeConstraint_SetMotorSettings :: (constraint: *HingeConstraint, settings: *MotorSettings) -> void #foreign joltc "JPH_HingeConstraint_SetMotorSettings";
HingeConstraint_GetMotorSettings :: (constraint: *HingeConstraint, result: *MotorSettings) -> void #foreign joltc "JPH_HingeConstraint_GetMotorSettings";
HingeConstraint_SetMotorState :: (constraint: *HingeConstraint, state: MotorState) -> void #foreign joltc "JPH_HingeConstraint_SetMotorState";
HingeConstraint_GetMotorState :: (constraint: *HingeConstraint) -> MotorState #foreign joltc "JPH_HingeConstraint_GetMotorState";
HingeConstraint_SetTargetAngularVelocity :: (constraint: *HingeConstraint, angularVelocity: float) -> void #foreign joltc "JPH_HingeConstraint_SetTargetAngularVelocity";
HingeConstraint_GetTargetAngularVelocity :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetTargetAngularVelocity";
HingeConstraint_SetTargetAngle :: (constraint: *HingeConstraint, angle: float) -> void #foreign joltc "JPH_HingeConstraint_SetTargetAngle";
HingeConstraint_GetTargetAngle :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetTargetAngle";
HingeConstraint_SetLimits :: (constraint: *HingeConstraint, inLimitsMin: float, inLimitsMax: float) -> void #foreign joltc "JPH_HingeConstraint_SetLimits";
HingeConstraint_GetLimitsMin :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetLimitsMin";
HingeConstraint_GetLimitsMax :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetLimitsMax";
HingeConstraint_HasLimits :: (constraint: *HingeConstraint) -> bool #foreign joltc "JPH_HingeConstraint_HasLimits";
HingeConstraint_GetLimitsSpringSettings :: (constraint: *HingeConstraint, result: *SpringSettings) -> void #foreign joltc "JPH_HingeConstraint_GetLimitsSpringSettings";
HingeConstraint_SetLimitsSpringSettings :: (constraint: *HingeConstraint, settings: *SpringSettings) -> void #foreign joltc "JPH_HingeConstraint_SetLimitsSpringSettings";
HingeConstraint_GetTotalLambdaPosition :: (constraint: *HingeConstraint, result: *Vec3) -> void #foreign joltc "JPH_HingeConstraint_GetTotalLambdaPosition";
HingeConstraint_GetTotalLambdaRotation :: (constraint: *HingeConstraint, rotation: *[2] float) -> void #foreign joltc "JPH_HingeConstraint_GetTotalLambdaRotation";
HingeConstraint_GetTotalLambdaRotationLimits :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetTotalLambdaRotationLimits";
HingeConstraint_GetTotalLambdaMotor :: (constraint: *HingeConstraint) -> float #foreign joltc "JPH_HingeConstraint_GetTotalLambdaMotor";

/* JPH_SliderConstraint */
SliderConstraintSettings_Init :: (settings: *SliderConstraintSettings) -> void #foreign joltc "JPH_SliderConstraintSettings_Init";
SliderConstraintSettings_SetSliderAxis :: (settings: *SliderConstraintSettings, axis: *Vec3) -> void #foreign joltc "JPH_SliderConstraintSettings_SetSliderAxis";

SliderConstraint_Create :: (settings: *SliderConstraintSettings, body1: *Body, body2: *Body) -> *SliderConstraint #foreign joltc "JPH_SliderConstraint_Create";
SliderConstraint_GetSettings :: (constraint: *SliderConstraint, settings: *SliderConstraintSettings) -> void #foreign joltc "JPH_SliderConstraint_GetSettings";
SliderConstraint_GetCurrentPosition :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetCurrentPosition";
SliderConstraint_SetMaxFrictionForce :: (constraint: *SliderConstraint, frictionForce: float) -> void #foreign joltc "JPH_SliderConstraint_SetMaxFrictionForce";
SliderConstraint_GetMaxFrictionForce :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetMaxFrictionForce";
SliderConstraint_SetMotorSettings :: (constraint: *SliderConstraint, settings: *MotorSettings) -> void #foreign joltc "JPH_SliderConstraint_SetMotorSettings";
SliderConstraint_GetMotorSettings :: (constraint: *SliderConstraint, result: *MotorSettings) -> void #foreign joltc "JPH_SliderConstraint_GetMotorSettings";
SliderConstraint_SetMotorState :: (constraint: *SliderConstraint, state: MotorState) -> void #foreign joltc "JPH_SliderConstraint_SetMotorState";
SliderConstraint_GetMotorState :: (constraint: *SliderConstraint) -> MotorState #foreign joltc "JPH_SliderConstraint_GetMotorState";
SliderConstraint_SetTargetVelocity :: (constraint: *SliderConstraint, velocity: float) -> void #foreign joltc "JPH_SliderConstraint_SetTargetVelocity";
SliderConstraint_GetTargetVelocity :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetTargetVelocity";
SliderConstraint_SetTargetPosition :: (constraint: *SliderConstraint, position: float) -> void #foreign joltc "JPH_SliderConstraint_SetTargetPosition";
SliderConstraint_GetTargetPosition :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetTargetPosition";
SliderConstraint_SetLimits :: (constraint: *SliderConstraint, inLimitsMin: float, inLimitsMax: float) -> void #foreign joltc "JPH_SliderConstraint_SetLimits";
SliderConstraint_GetLimitsMin :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetLimitsMin";
SliderConstraint_GetLimitsMax :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetLimitsMax";
SliderConstraint_HasLimits :: (constraint: *SliderConstraint) -> bool #foreign joltc "JPH_SliderConstraint_HasLimits";
SliderConstraint_GetLimitsSpringSettings :: (constraint: *SliderConstraint, result: *SpringSettings) -> void #foreign joltc "JPH_SliderConstraint_GetLimitsSpringSettings";
SliderConstraint_SetLimitsSpringSettings :: (constraint: *SliderConstraint, settings: *SpringSettings) -> void #foreign joltc "JPH_SliderConstraint_SetLimitsSpringSettings";
SliderConstraint_GetTotalLambdaPosition :: (constraint: *SliderConstraint, position: *[2] float) -> void #foreign joltc "JPH_SliderConstraint_GetTotalLambdaPosition";
SliderConstraint_GetTotalLambdaPositionLimits :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetTotalLambdaPositionLimits";
SliderConstraint_GetTotalLambdaRotation :: (constraint: *SliderConstraint, result: *Vec3) -> void #foreign joltc "JPH_SliderConstraint_GetTotalLambdaRotation";
SliderConstraint_GetTotalLambdaMotor :: (constraint: *SliderConstraint) -> float #foreign joltc "JPH_SliderConstraint_GetTotalLambdaMotor";

/* JPH_ConeConstraint */
ConeConstraintSettings_Init :: (settings: *ConeConstraintSettings) -> void #foreign joltc "JPH_ConeConstraintSettings_Init";
ConeConstraint_Create :: (settings: *ConeConstraintSettings, body1: *Body, body2: *Body) -> *ConeConstraint #foreign joltc "JPH_ConeConstraint_Create";
ConeConstraint_GetSettings :: (constraint: *ConeConstraint, settings: *ConeConstraintSettings) -> void #foreign joltc "JPH_ConeConstraint_GetSettings";
ConeConstraint_SetHalfConeAngle :: (constraint: *ConeConstraint, halfConeAngle: float) -> void #foreign joltc "JPH_ConeConstraint_SetHalfConeAngle";
ConeConstraint_GetCosHalfConeAngle :: (constraint: *ConeConstraint) -> float #foreign joltc "JPH_ConeConstraint_GetCosHalfConeAngle";
ConeConstraint_GetTotalLambdaPosition :: (constraint: *ConeConstraint, result: *Vec3) -> void #foreign joltc "JPH_ConeConstraint_GetTotalLambdaPosition";
ConeConstraint_GetTotalLambdaRotation :: (constraint: *ConeConstraint) -> float #foreign joltc "JPH_ConeConstraint_GetTotalLambdaRotation";

/* JPH_SwingTwistConstraint */
SwingTwistConstraintSettings_Init :: (settings: *SwingTwistConstraintSettings) -> void #foreign joltc "JPH_SwingTwistConstraintSettings_Init";
SwingTwistConstraint_Create :: (settings: *SwingTwistConstraintSettings, body1: *Body, body2: *Body) -> *SwingTwistConstraint #foreign joltc "JPH_SwingTwistConstraint_Create";
SwingTwistConstraint_GetSettings :: (constraint: *SwingTwistConstraint, settings: *SwingTwistConstraintSettings) -> void #foreign joltc "JPH_SwingTwistConstraint_GetSettings";
SwingTwistConstraint_GetNormalHalfConeAngle :: (constraint: *SwingTwistConstraint) -> float #foreign joltc "JPH_SwingTwistConstraint_GetNormalHalfConeAngle";
SwingTwistConstraint_GetTotalLambdaPosition :: (constraint: *SwingTwistConstraint, result: *Vec3) -> void #foreign joltc "JPH_SwingTwistConstraint_GetTotalLambdaPosition";
SwingTwistConstraint_GetTotalLambdaTwist :: (constraint: *SwingTwistConstraint) -> float #foreign joltc "JPH_SwingTwistConstraint_GetTotalLambdaTwist";
SwingTwistConstraint_GetTotalLambdaSwingY :: (constraint: *SwingTwistConstraint) -> float #foreign joltc "JPH_SwingTwistConstraint_GetTotalLambdaSwingY";
SwingTwistConstraint_GetTotalLambdaSwingZ :: (constraint: *SwingTwistConstraint) -> float #foreign joltc "JPH_SwingTwistConstraint_GetTotalLambdaSwingZ";
SwingTwistConstraint_GetTotalLambdaMotor :: (constraint: *SwingTwistConstraint, result: *Vec3) -> void #foreign joltc "JPH_SwingTwistConstraint_GetTotalLambdaMotor";

/* JPH_SixDOFConstraint */
SixDOFConstraintSettings_Init :: (settings: *SixDOFConstraintSettings) -> void #foreign joltc "JPH_SixDOFConstraintSettings_Init";
SixDOFConstraintSettings_MakeFreeAxis :: (settings: *SixDOFConstraintSettings, axis: SixDOFConstraintAxis) -> void #foreign joltc "JPH_SixDOFConstraintSettings_MakeFreeAxis";
SixDOFConstraintSettings_IsFreeAxis :: (settings: *SixDOFConstraintSettings, axis: SixDOFConstraintAxis) -> bool #foreign joltc "JPH_SixDOFConstraintSettings_IsFreeAxis";
SixDOFConstraintSettings_MakeFixedAxis :: (settings: *SixDOFConstraintSettings, axis: SixDOFConstraintAxis) -> void #foreign joltc "JPH_SixDOFConstraintSettings_MakeFixedAxis";
SixDOFConstraintSettings_IsFixedAxis :: (settings: *SixDOFConstraintSettings, axis: SixDOFConstraintAxis) -> bool #foreign joltc "JPH_SixDOFConstraintSettings_IsFixedAxis";
SixDOFConstraintSettings_SetLimitedAxis :: (settings: *SixDOFConstraintSettings, axis: SixDOFConstraintAxis, min: float, max: float) -> void #foreign joltc "JPH_SixDOFConstraintSettings_SetLimitedAxis";

SixDOFConstraint_Create :: (settings: *SixDOFConstraintSettings, body1: *Body, body2: *Body) -> *SixDOFConstraint #foreign joltc "JPH_SixDOFConstraint_Create";
SixDOFConstraint_GetSettings :: (constraint: *SixDOFConstraint, settings: *SixDOFConstraintSettings) -> void #foreign joltc "JPH_SixDOFConstraint_GetSettings";
SixDOFConstraint_GetLimitsMin :: (constraint: *SixDOFConstraint, axis: SixDOFConstraintAxis) -> float #foreign joltc "JPH_SixDOFConstraint_GetLimitsMin";
SixDOFConstraint_GetLimitsMax :: (constraint: *SixDOFConstraint, axis: SixDOFConstraintAxis) -> float #foreign joltc "JPH_SixDOFConstraint_GetLimitsMax";
SixDOFConstraint_GetTotalLambdaPosition :: (constraint: *SixDOFConstraint, result: *Vec3) -> void #foreign joltc "JPH_SixDOFConstraint_GetTotalLambdaPosition";
SixDOFConstraint_GetTotalLambdaRotation :: (constraint: *SixDOFConstraint, result: *Vec3) -> void #foreign joltc "JPH_SixDOFConstraint_GetTotalLambdaRotation";
SixDOFConstraint_GetTotalLambdaMotorTranslation :: (constraint: *SixDOFConstraint, result: *Vec3) -> void #foreign joltc "JPH_SixDOFConstraint_GetTotalLambdaMotorTranslation";
SixDOFConstraint_GetTotalLambdaMotorRotation :: (constraint: *SixDOFConstraint, result: *Vec3) -> void #foreign joltc "JPH_SixDOFConstraint_GetTotalLambdaMotorRotation";

/* JPH_GearConstraint */
GearConstraintSettings_Init :: (settings: *GearConstraintSettings) -> void #foreign joltc "JPH_GearConstraintSettings_Init";
GearConstraint_Create :: (settings: *GearConstraintSettings, body1: *Body, body2: *Body) -> *GearConstraint #foreign joltc "JPH_GearConstraint_Create";
GearConstraint_GetSettings :: (constraint: *GearConstraint, settings: *GearConstraintSettings) -> void #foreign joltc "JPH_GearConstraint_GetSettings";
GearConstraint_SetConstraints :: (constraint: *GearConstraint, gear1: *Constraint, gear2: *Constraint) -> void #foreign joltc "JPH_GearConstraint_SetConstraints";
GearConstraint_GetTotalLambda :: (constraint: *GearConstraint) -> float #foreign joltc "JPH_GearConstraint_GetTotalLambda";

/* BodyInterface */
BodyInterface_DestroyBody :: (_interface: *BodyInterface, bodyID: BodyID) -> void #foreign joltc "JPH_BodyInterface_DestroyBody";
BodyInterface_CreateAndAddBody :: (_interface: *BodyInterface, settings: *BodyCreationSettings, activationMode: Activation) -> BodyID #foreign joltc "JPH_BodyInterface_CreateAndAddBody";
BodyInterface_CreateBody :: (_interface: *BodyInterface, settings: *BodyCreationSettings) -> *Body #foreign joltc "JPH_BodyInterface_CreateBody";
BodyInterface_CreateBodyWithID :: (_interface: *BodyInterface, bodyID: BodyID, settings: *BodyCreationSettings) -> *Body #foreign joltc "JPH_BodyInterface_CreateBodyWithID";
BodyInterface_CreateBodyWithoutID :: (_interface: *BodyInterface, settings: *BodyCreationSettings) -> *Body #foreign joltc "JPH_BodyInterface_CreateBodyWithoutID";
BodyInterface_DestroyBodyWithoutID :: (_interface: *BodyInterface, body: *Body) -> void #foreign joltc "JPH_BodyInterface_DestroyBodyWithoutID";
BodyInterface_AssignBodyID :: (_interface: *BodyInterface, body: *Body) -> bool #foreign joltc "JPH_BodyInterface_AssignBodyID";
BodyInterface_AssignBodyID2 :: (_interface: *BodyInterface, body: *Body, bodyID: BodyID) -> bool #foreign joltc "JPH_BodyInterface_AssignBodyID2";
BodyInterface_UnassignBodyID :: (_interface: *BodyInterface, bodyID: BodyID) -> *Body #foreign joltc "JPH_BodyInterface_UnassignBodyID";

BodyInterface_CreateSoftBody :: (_interface: *BodyInterface, settings: *SoftBodyCreationSettings) -> *Body #foreign joltc "JPH_BodyInterface_CreateSoftBody";
BodyInterface_CreateSoftBodyWithID :: (_interface: *BodyInterface, bodyID: BodyID, settings: *SoftBodyCreationSettings) -> *Body #foreign joltc "JPH_BodyInterface_CreateSoftBodyWithID";
BodyInterface_CreateSoftBodyWithoutID :: (_interface: *BodyInterface, settings: *SoftBodyCreationSettings) -> *Body #foreign joltc "JPH_BodyInterface_CreateSoftBodyWithoutID";
BodyInterface_CreateAndAddSoftBody :: (_interface: *BodyInterface, settings: *SoftBodyCreationSettings, activationMode: Activation) -> BodyID #foreign joltc "JPH_BodyInterface_CreateAndAddSoftBody";

BodyInterface_AddBody :: (_interface: *BodyInterface, bodyID: BodyID, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_AddBody";
BodyInterface_RemoveBody :: (_interface: *BodyInterface, bodyID: BodyID) -> void #foreign joltc "JPH_BodyInterface_RemoveBody";
BodyInterface_RemoveAndDestroyBody :: (_interface: *BodyInterface, bodyID: BodyID) -> void #foreign joltc "JPH_BodyInterface_RemoveAndDestroyBody";
BodyInterface_IsActive :: (_interface: *BodyInterface, bodyID: BodyID) -> bool #foreign joltc "JPH_BodyInterface_IsActive";
BodyInterface_IsAdded :: (_interface: *BodyInterface, bodyID: BodyID) -> bool #foreign joltc "JPH_BodyInterface_IsAdded";
BodyInterface_GetBodyType :: (_interface: *BodyInterface, bodyID: BodyID) -> BodyType #foreign joltc "JPH_BodyInterface_GetBodyType";

BodyInterface_SetLinearVelocity :: (_interface: *BodyInterface, bodyID: BodyID, velocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_SetLinearVelocity";
BodyInterface_GetLinearVelocity :: (_interface: *BodyInterface, bodyID: BodyID, velocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_GetLinearVelocity";
BodyInterface_GetCenterOfMassPosition :: (_interface: *BodyInterface, bodyID: BodyID, position: *RVec3) -> void #foreign joltc "JPH_BodyInterface_GetCenterOfMassPosition";

BodyInterface_GetMotionType :: (_interface: *BodyInterface, bodyID: BodyID) -> MotionType #foreign joltc "JPH_BodyInterface_GetMotionType";
BodyInterface_SetMotionType :: (_interface: *BodyInterface, bodyID: BodyID, motionType: MotionType, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_SetMotionType";

BodyInterface_GetRestitution :: (_interface: *BodyInterface, bodyID: BodyID) -> float #foreign joltc "JPH_BodyInterface_GetRestitution";
BodyInterface_SetRestitution :: (_interface: *BodyInterface, bodyID: BodyID, restitution: float) -> void #foreign joltc "JPH_BodyInterface_SetRestitution";

BodyInterface_GetFriction :: (_interface: *BodyInterface, bodyID: BodyID) -> float #foreign joltc "JPH_BodyInterface_GetFriction";
BodyInterface_SetFriction :: (_interface: *BodyInterface, bodyID: BodyID, friction: float) -> void #foreign joltc "JPH_BodyInterface_SetFriction";

BodyInterface_SetPosition :: (_interface: *BodyInterface, bodyId: BodyID, position: *RVec3, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_SetPosition";
BodyInterface_GetPosition :: (_interface: *BodyInterface, bodyId: BodyID, result: *RVec3) -> void #foreign joltc "JPH_BodyInterface_GetPosition";

BodyInterface_SetRotation :: (_interface: *BodyInterface, bodyId: BodyID, rotation: *Quat, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_SetRotation";
BodyInterface_GetRotation :: (_interface: *BodyInterface, bodyId: BodyID, result: *Quat) -> void #foreign joltc "JPH_BodyInterface_GetRotation";

BodyInterface_SetPositionAndRotation :: (_interface: *BodyInterface, bodyId: BodyID, position: *RVec3, rotation: *Quat, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_SetPositionAndRotation";
BodyInterface_SetPositionAndRotationWhenChanged :: (_interface: *BodyInterface, bodyId: BodyID, position: *RVec3, rotation: *Quat, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_SetPositionAndRotationWhenChanged";
BodyInterface_GetPositionAndRotation :: (_interface: *BodyInterface, bodyId: BodyID, position: *RVec3, rotation: *Quat) -> void #foreign joltc "JPH_BodyInterface_GetPositionAndRotation";
BodyInterface_SetPositionRotationAndVelocity :: (_interface: *BodyInterface, bodyId: BodyID, position: *RVec3, rotation: *Quat, linearVelocity: *Vec3, angularVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_SetPositionRotationAndVelocity";

BodyInterface_GetShape :: (_interface: *BodyInterface, bodyId: BodyID) -> *Shape #foreign joltc "JPH_BodyInterface_GetShape";
BodyInterface_SetShape :: (_interface: *BodyInterface, bodyId: BodyID, shape: *Shape, updateMassProperties: bool, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_SetShape";
BodyInterface_NotifyShapeChanged :: (_interface: *BodyInterface, bodyId: BodyID, previousCenterOfMass: *Vec3, updateMassProperties: bool, activationMode: Activation) -> void #foreign joltc "JPH_BodyInterface_NotifyShapeChanged";

BodyInterface_ActivateBody :: (_interface: *BodyInterface, bodyId: BodyID) -> void #foreign joltc "JPH_BodyInterface_ActivateBody";
BodyInterface_DeactivateBody :: (_interface: *BodyInterface, bodyId: BodyID) -> void #foreign joltc "JPH_BodyInterface_DeactivateBody";

BodyInterface_GetObjectLayer :: (_interface: *BodyInterface, bodyId: BodyID) -> ObjectLayer #foreign joltc "JPH_BodyInterface_GetObjectLayer";
BodyInterface_SetObjectLayer :: (_interface: *BodyInterface, bodyId: BodyID, layer: ObjectLayer) -> void #foreign joltc "JPH_BodyInterface_SetObjectLayer";

BodyInterface_GetWorldTransform :: (_interface: *BodyInterface, bodyId: BodyID, result: *RMatrix4x4) -> void #foreign joltc "JPH_BodyInterface_GetWorldTransform";
BodyInterface_GetCenterOfMassTransform :: (_interface: *BodyInterface, bodyId: BodyID, result: *RMatrix4x4) -> void #foreign joltc "JPH_BodyInterface_GetCenterOfMassTransform";

BodyInterface_MoveKinematic :: (_interface: *BodyInterface, bodyId: BodyID, targetPosition: *RVec3, targetRotation: *Quat, deltaTime: float) -> void #foreign joltc "JPH_BodyInterface_MoveKinematic";
BodyInterface_ApplyBuoyancyImpulse :: (_interface: *BodyInterface, bodyId: BodyID, surfacePosition: *RVec3, surfaceNormal: *Vec3, buoyancy: float, linearDrag: float, angularDrag: float, fluidVelocity: *Vec3, gravity: *Vec3, deltaTime: float) -> bool #foreign joltc "JPH_BodyInterface_ApplyBuoyancyImpulse";

BodyInterface_SetLinearAndAngularVelocity :: (_interface: *BodyInterface, bodyId: BodyID, linearVelocity: *Vec3, angularVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_SetLinearAndAngularVelocity";
BodyInterface_GetLinearAndAngularVelocity :: (_interface: *BodyInterface, bodyId: BodyID, linearVelocity: *Vec3, angularVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_GetLinearAndAngularVelocity";

BodyInterface_AddLinearVelocity :: (_interface: *BodyInterface, bodyId: BodyID, linearVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddLinearVelocity";
BodyInterface_AddLinearAndAngularVelocity :: (_interface: *BodyInterface, bodyId: BodyID, linearVelocity: *Vec3, angularVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddLinearAndAngularVelocity";

BodyInterface_SetAngularVelocity :: (_interface: *BodyInterface, bodyId: BodyID, angularVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_SetAngularVelocity";
BodyInterface_GetAngularVelocity :: (_interface: *BodyInterface, bodyId: BodyID, angularVelocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_GetAngularVelocity";

BodyInterface_GetPointVelocity :: (_interface: *BodyInterface, bodyId: BodyID, point: *RVec3, velocity: *Vec3) -> void #foreign joltc "JPH_BodyInterface_GetPointVelocity";

BodyInterface_AddForce :: (_interface: *BodyInterface, bodyId: BodyID, force: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddForce";
BodyInterface_AddForce2 :: (_interface: *BodyInterface, bodyId: BodyID, force: *Vec3, point: *RVec3) -> void #foreign joltc "JPH_BodyInterface_AddForce2";
BodyInterface_AddTorque :: (_interface: *BodyInterface, bodyId: BodyID, torque: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddTorque";
BodyInterface_AddForceAndTorque :: (_interface: *BodyInterface, bodyId: BodyID, force: *Vec3, torque: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddForceAndTorque";

BodyInterface_AddImpulse :: (_interface: *BodyInterface, bodyId: BodyID, impulse: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddImpulse";
BodyInterface_AddImpulse2 :: (_interface: *BodyInterface, bodyId: BodyID, impulse: *Vec3, point: *RVec3) -> void #foreign joltc "JPH_BodyInterface_AddImpulse2";
BodyInterface_AddAngularImpulse :: (_interface: *BodyInterface, bodyId: BodyID, angularImpulse: *Vec3) -> void #foreign joltc "JPH_BodyInterface_AddAngularImpulse";

BodyInterface_SetMotionQuality :: (_interface: *BodyInterface, bodyId: BodyID, quality: MotionQuality) -> void #foreign joltc "JPH_BodyInterface_SetMotionQuality";
BodyInterface_GetMotionQuality :: (_interface: *BodyInterface, bodyId: BodyID) -> MotionQuality #foreign joltc "JPH_BodyInterface_GetMotionQuality";

BodyInterface_GetInverseInertia :: (_interface: *BodyInterface, bodyId: BodyID, result: *Matrix4x4) -> void #foreign joltc "JPH_BodyInterface_GetInverseInertia";

BodyInterface_SetGravityFactor :: (_interface: *BodyInterface, bodyId: BodyID, value: float) -> void #foreign joltc "JPH_BodyInterface_SetGravityFactor";
BodyInterface_GetGravityFactor :: (_interface: *BodyInterface, bodyId: BodyID) -> float #foreign joltc "JPH_BodyInterface_GetGravityFactor";

BodyInterface_SetUseManifoldReduction :: (_interface: *BodyInterface, bodyId: BodyID, value: bool) -> void #foreign joltc "JPH_BodyInterface_SetUseManifoldReduction";
BodyInterface_GetUseManifoldReduction :: (_interface: *BodyInterface, bodyId: BodyID) -> bool #foreign joltc "JPH_BodyInterface_GetUseManifoldReduction";

BodyInterface_SetUserData :: (_interface: *BodyInterface, bodyId: BodyID, inUserData: u64) -> void #foreign joltc "JPH_BodyInterface_SetUserData";
BodyInterface_GetUserData :: (_interface: *BodyInterface, bodyId: BodyID) -> u64 #foreign joltc "JPH_BodyInterface_GetUserData";

BodyInterface_GetMaterial :: (_interface: *BodyInterface, bodyId: BodyID, subShapeID: SubShapeID) -> *PhysicsMaterial #foreign joltc "JPH_BodyInterface_GetMaterial";

BodyInterface_InvalidateContactCache :: (_interface: *BodyInterface, bodyId: BodyID) -> void #foreign joltc "JPH_BodyInterface_InvalidateContactCache";

//--------------------------------------------------------------------------------------------------
// JPH_BodyLockInterface
//--------------------------------------------------------------------------------------------------
BodyLockInterface_LockRead :: (lockInterface: *BodyLockInterface, bodyID: BodyID, outLock: *BodyLockRead) -> void #foreign joltc "JPH_BodyLockInterface_LockRead";
BodyLockInterface_UnlockRead :: (lockInterface: *BodyLockInterface, ioLock: *BodyLockRead) -> void #foreign joltc "JPH_BodyLockInterface_UnlockRead";

BodyLockInterface_LockWrite :: (lockInterface: *BodyLockInterface, bodyID: BodyID, outLock: *BodyLockWrite) -> void #foreign joltc "JPH_BodyLockInterface_LockWrite";
BodyLockInterface_UnlockWrite :: (lockInterface: *BodyLockInterface, ioLock: *BodyLockWrite) -> void #foreign joltc "JPH_BodyLockInterface_UnlockWrite";

BodyLockInterface_LockMultiRead :: (lockInterface: *BodyLockInterface, bodyIDs: *BodyID, count: u32) -> *BodyLockMultiRead #foreign joltc "JPH_BodyLockInterface_LockMultiRead";
BodyLockMultiRead_Destroy :: (ioLock: *BodyLockMultiRead) -> void #foreign joltc "JPH_BodyLockMultiRead_Destroy";
BodyLockMultiRead_GetBody :: (ioLock: *BodyLockMultiRead, bodyIndex: u32) -> *Body #foreign joltc "JPH_BodyLockMultiRead_GetBody";

BodyLockInterface_LockMultiWrite :: (lockInterface: *BodyLockInterface, bodyIDs: *BodyID, count: u32) -> *BodyLockMultiWrite #foreign joltc "JPH_BodyLockInterface_LockMultiWrite";
BodyLockMultiWrite_Destroy :: (ioLock: *BodyLockMultiWrite) -> void #foreign joltc "JPH_BodyLockMultiWrite_Destroy";
BodyLockMultiWrite_GetBody :: (ioLock: *BodyLockMultiWrite, bodyIndex: u32) -> *Body #foreign joltc "JPH_BodyLockMultiWrite_GetBody";

//--------------------------------------------------------------------------------------------------
// JPH_MotionProperties
//--------------------------------------------------------------------------------------------------
MotionProperties_GetAllowedDOFs :: (properties: *MotionProperties) -> AllowedDOFs #foreign joltc "JPH_MotionProperties_GetAllowedDOFs";
MotionProperties_SetLinearDamping :: (properties: *MotionProperties, damping: float) -> void #foreign joltc "JPH_MotionProperties_SetLinearDamping";
MotionProperties_GetLinearDamping :: (properties: *MotionProperties) -> float #foreign joltc "JPH_MotionProperties_GetLinearDamping";
MotionProperties_SetAngularDamping :: (properties: *MotionProperties, damping: float) -> void #foreign joltc "JPH_MotionProperties_SetAngularDamping";
MotionProperties_GetAngularDamping :: (properties: *MotionProperties) -> float #foreign joltc "JPH_MotionProperties_GetAngularDamping";
MotionProperties_SetMassProperties :: (properties: *MotionProperties, allowedDOFs: AllowedDOFs, massProperties: *MassProperties) -> void #foreign joltc "JPH_MotionProperties_SetMassProperties";
MotionProperties_GetInverseMassUnchecked :: (properties: *MotionProperties) -> float #foreign joltc "JPH_MotionProperties_GetInverseMassUnchecked";
MotionProperties_SetInverseMass :: (properties: *MotionProperties, inverseMass: float) -> void #foreign joltc "JPH_MotionProperties_SetInverseMass";
MotionProperties_GetInverseInertiaDiagonal :: (properties: *MotionProperties, result: *Vec3) -> void #foreign joltc "JPH_MotionProperties_GetInverseInertiaDiagonal";
MotionProperties_GetInertiaRotation :: (properties: *MotionProperties, result: *Quat) -> void #foreign joltc "JPH_MotionProperties_GetInertiaRotation";
MotionProperties_SetInverseInertia :: (properties: *MotionProperties, diagonal: *Vec3, rot: *Quat) -> void #foreign joltc "JPH_MotionProperties_SetInverseInertia";
MotionProperties_ScaleToMass :: (properties: *MotionProperties, mass: float) -> void #foreign joltc "JPH_MotionProperties_ScaleToMass";

//--------------------------------------------------------------------------------------------------
// JPH_RayCast
//--------------------------------------------------------------------------------------------------
RayCast_GetPointOnRay :: (origin: *Vec3, direction: *Vec3, fraction: float, result: *Vec3) -> void #foreign joltc "JPH_RayCast_GetPointOnRay";
RRayCast_GetPointOnRay :: (origin: *RVec3, direction: *Vec3, fraction: float, result: *RVec3) -> void #foreign joltc "JPH_RRayCast_GetPointOnRay";

//--------------------------------------------------------------------------------------------------
// JPH_MassProperties
//--------------------------------------------------------------------------------------------------
MassProperties_DecomposePrincipalMomentsOfInertia :: (properties: *MassProperties, rotation: *Matrix4x4, diagonal: *Vec3) -> void #foreign joltc "JPH_MassProperties_DecomposePrincipalMomentsOfInertia";
MassProperties_ScaleToMass :: (properties: *MassProperties, mass: float) -> void #foreign joltc "JPH_MassProperties_ScaleToMass";
MassProperties_GetEquivalentSolidBoxSize :: (mass: float, inertiaDiagonal: *Vec3, result: *Vec3) -> void #foreign joltc "JPH_MassProperties_GetEquivalentSolidBoxSize";

//--------------------------------------------------------------------------------------------------
// JPH_CollideShapeSettings
//--------------------------------------------------------------------------------------------------
CollideShapeSettings_Init :: (settings: *CollideShapeSettings) -> void #foreign joltc "JPH_CollideShapeSettings_Init";

//--------------------------------------------------------------------------------------------------
// JPH_ShapeCastSettings
//--------------------------------------------------------------------------------------------------
ShapeCastSettings_Init :: (settings: *ShapeCastSettings) -> void #foreign joltc "JPH_ShapeCastSettings_Init";

//--------------------------------------------------------------------------------------------------
// JPH_BroadPhaseQuery
//--------------------------------------------------------------------------------------------------
BroadPhaseQuery_CastRay :: (query: *BroadPhaseQuery, origin: *Vec3, direction: *Vec3, callback: RayCastBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter) -> bool #foreign joltc "JPH_BroadPhaseQuery_CastRay";

BroadPhaseQuery_CastRay2 :: (query: *BroadPhaseQuery, origin: *Vec3, direction: *Vec3, collectorType: CollisionCollectorType, callback: RayCastBodyResultCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter) -> bool #foreign joltc "JPH_BroadPhaseQuery_CastRay2";

BroadPhaseQuery_CollideAABox :: (query: *BroadPhaseQuery, box: *AABox, callback: CollideShapeBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter) -> bool #foreign joltc "JPH_BroadPhaseQuery_CollideAABox";

BroadPhaseQuery_CollideSphere :: (query: *BroadPhaseQuery, center: *Vec3, radius: float, callback: CollideShapeBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter) -> bool #foreign joltc "JPH_BroadPhaseQuery_CollideSphere";

BroadPhaseQuery_CollidePoint :: (query: *BroadPhaseQuery, point: *Vec3, callback: CollideShapeBodyCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter) -> bool #foreign joltc "JPH_BroadPhaseQuery_CollidePoint";

//--------------------------------------------------------------------------------------------------
// JPH_NarrowPhaseQuery
//--------------------------------------------------------------------------------------------------
NarrowPhaseQuery_CastRay :: (query: *NarrowPhaseQuery, origin: *RVec3, direction: *Vec3, hit: *RayCastResult, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CastRay";

NarrowPhaseQuery_CastRay2 :: (query: *NarrowPhaseQuery, origin: *RVec3, direction: *Vec3, rayCastSettings: *RayCastSettings, callback: CastRayCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CastRay2";

NarrowPhaseQuery_CastRay3 :: (query: *NarrowPhaseQuery, origin: *RVec3, direction: *Vec3, rayCastSettings: *RayCastSettings, collectorType: CollisionCollectorType, callback: CastRayResultCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CastRay3";

NarrowPhaseQuery_CollidePoint :: (query: *NarrowPhaseQuery, point: *RVec3, callback: CollidePointCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CollidePoint";

NarrowPhaseQuery_CollidePoint2 :: (query: *NarrowPhaseQuery, point: *RVec3, collectorType: CollisionCollectorType, callback: CollidePointResultCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CollidePoint2";

NarrowPhaseQuery_CollideShape :: (query: *NarrowPhaseQuery, shape: *Shape, scale: *Vec3, centerOfMassTransform: *RMatrix4x4, settings: *CollideShapeSettings, baseOffset: *RVec3, callback: CollideShapeCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CollideShape";

NarrowPhaseQuery_CollideShape2 :: (query: *NarrowPhaseQuery, shape: *Shape, scale: *Vec3, centerOfMassTransform: *RMatrix4x4, settings: *CollideShapeSettings, baseOffset: *RVec3, collectorType: CollisionCollectorType, callback: CollideShapeResultCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CollideShape2";

NarrowPhaseQuery_CastShape :: (query: *NarrowPhaseQuery, shape: *Shape, worldTransform: *RMatrix4x4, direction: *Vec3, settings: *ShapeCastSettings, baseOffset: *RVec3, callback: CastShapeCollectorCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CastShape";

NarrowPhaseQuery_CastShape2 :: (query: *NarrowPhaseQuery, shape: *Shape, worldTransform: *RMatrix4x4, direction: *Vec3, settings: *ShapeCastSettings, baseOffset: *RVec3, collectorType: CollisionCollectorType, callback: CastShapeResultCallback, userData: *void, broadPhaseLayerFilter: *BroadPhaseLayerFilter, objectLayerFilter: *ObjectLayerFilter, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_NarrowPhaseQuery_CastShape2";

//--------------------------------------------------------------------------------------------------
// JPH_Body
//--------------------------------------------------------------------------------------------------
Body_GetID :: (body: *Body) -> BodyID #foreign joltc "JPH_Body_GetID";
Body_GetBodyType :: (body: *Body) -> BodyType #foreign joltc "JPH_Body_GetBodyType";
Body_IsRigidBody :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsRigidBody";
Body_IsSoftBody :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsSoftBody";
Body_IsActive :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsActive";
Body_IsStatic :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsStatic";
Body_IsKinematic :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsKinematic";
Body_IsDynamic :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsDynamic";
Body_CanBeKinematicOrDynamic :: (body: *Body) -> bool #foreign joltc "JPH_Body_CanBeKinematicOrDynamic";

Body_SetIsSensor :: (body: *Body, value: bool) -> void #foreign joltc "JPH_Body_SetIsSensor";
Body_IsSensor :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsSensor";

Body_SetCollideKinematicVsNonDynamic :: (body: *Body, value: bool) -> void #foreign joltc "JPH_Body_SetCollideKinematicVsNonDynamic";
Body_GetCollideKinematicVsNonDynamic :: (body: *Body) -> bool #foreign joltc "JPH_Body_GetCollideKinematicVsNonDynamic";

Body_SetUseManifoldReduction :: (body: *Body, value: bool) -> void #foreign joltc "JPH_Body_SetUseManifoldReduction";
Body_GetUseManifoldReduction :: (body: *Body) -> bool #foreign joltc "JPH_Body_GetUseManifoldReduction";
Body_GetUseManifoldReductionWithBody :: (body: *Body, other: *Body) -> bool #foreign joltc "JPH_Body_GetUseManifoldReductionWithBody";

Body_SetApplyGyroscopicForce :: (body: *Body, value: bool) -> void #foreign joltc "JPH_Body_SetApplyGyroscopicForce";
Body_GetApplyGyroscopicForce :: (body: *Body) -> bool #foreign joltc "JPH_Body_GetApplyGyroscopicForce";

Body_SetEnhancedInternalEdgeRemoval :: (body: *Body, value: bool) -> void #foreign joltc "JPH_Body_SetEnhancedInternalEdgeRemoval";
Body_GetEnhancedInternalEdgeRemoval :: (body: *Body) -> bool #foreign joltc "JPH_Body_GetEnhancedInternalEdgeRemoval";
Body_GetEnhancedInternalEdgeRemovalWithBody :: (body: *Body, other: *Body) -> bool #foreign joltc "JPH_Body_GetEnhancedInternalEdgeRemovalWithBody";

Body_GetMotionType :: (body: *Body) -> MotionType #foreign joltc "JPH_Body_GetMotionType";
Body_SetMotionType :: (body: *Body, motionType: MotionType) -> void #foreign joltc "JPH_Body_SetMotionType";

Body_GetBroadPhaseLayer :: (body: *Body) -> BroadPhaseLayer #foreign joltc "JPH_Body_GetBroadPhaseLayer";
Body_GetObjectLayer :: (body: *Body) -> ObjectLayer #foreign joltc "JPH_Body_GetObjectLayer";

Body_GetAllowSleeping :: (body: *Body) -> bool #foreign joltc "JPH_Body_GetAllowSleeping";
Body_SetAllowSleeping :: (body: *Body, allowSleeping: bool) -> void #foreign joltc "JPH_Body_SetAllowSleeping";
Body_ResetSleepTimer :: (body: *Body) -> void #foreign joltc "JPH_Body_ResetSleepTimer";

Body_GetFriction :: (body: *Body) -> float #foreign joltc "JPH_Body_GetFriction";
Body_SetFriction :: (body: *Body, friction: float) -> void #foreign joltc "JPH_Body_SetFriction";
Body_GetRestitution :: (body: *Body) -> float #foreign joltc "JPH_Body_GetRestitution";
Body_SetRestitution :: (body: *Body, restitution: float) -> void #foreign joltc "JPH_Body_SetRestitution";
Body_GetLinearVelocity :: (body: *Body, velocity: *Vec3) -> void #foreign joltc "JPH_Body_GetLinearVelocity";
Body_SetLinearVelocity :: (body: *Body, velocity: *Vec3) -> void #foreign joltc "JPH_Body_SetLinearVelocity";
Body_SetLinearVelocityClamped :: (body: *Body, velocity: *Vec3) -> void #foreign joltc "JPH_Body_SetLinearVelocityClamped";
Body_GetAngularVelocity :: (body: *Body, velocity: *Vec3) -> void #foreign joltc "JPH_Body_GetAngularVelocity";
Body_SetAngularVelocity :: (body: *Body, velocity: *Vec3) -> void #foreign joltc "JPH_Body_SetAngularVelocity";
Body_SetAngularVelocityClamped :: (body: *Body, velocity: *Vec3) -> void #foreign joltc "JPH_Body_SetAngularVelocityClamped";

Body_GetPointVelocityCOM :: (body: *Body, pointRelativeToCOM: *Vec3, velocity: *Vec3) -> void #foreign joltc "JPH_Body_GetPointVelocityCOM";
Body_GetPointVelocity :: (body: *Body, point: *RVec3, velocity: *Vec3) -> void #foreign joltc "JPH_Body_GetPointVelocity";

Body_AddForce :: (body: *Body, force: *Vec3) -> void #foreign joltc "JPH_Body_AddForce";
Body_AddForceAtPosition :: (body: *Body, force: *Vec3, position: *RVec3) -> void #foreign joltc "JPH_Body_AddForceAtPosition";
Body_AddTorque :: (body: *Body, force: *Vec3) -> void #foreign joltc "JPH_Body_AddTorque";
Body_GetAccumulatedForce :: (body: *Body, force: *Vec3) -> void #foreign joltc "JPH_Body_GetAccumulatedForce";
Body_GetAccumulatedTorque :: (body: *Body, force: *Vec3) -> void #foreign joltc "JPH_Body_GetAccumulatedTorque";
Body_ResetForce :: (body: *Body) -> void #foreign joltc "JPH_Body_ResetForce";
Body_ResetTorque :: (body: *Body) -> void #foreign joltc "JPH_Body_ResetTorque";
Body_ResetMotion :: (body: *Body) -> void #foreign joltc "JPH_Body_ResetMotion";

Body_GetInverseInertia :: (body: *Body, result: *Matrix4x4) -> void #foreign joltc "JPH_Body_GetInverseInertia";

Body_AddImpulse :: (body: *Body, impulse: *Vec3) -> void #foreign joltc "JPH_Body_AddImpulse";
Body_AddImpulseAtPosition :: (body: *Body, impulse: *Vec3, position: *RVec3) -> void #foreign joltc "JPH_Body_AddImpulseAtPosition";
Body_AddAngularImpulse :: (body: *Body, angularImpulse: *Vec3) -> void #foreign joltc "JPH_Body_AddAngularImpulse";
Body_MoveKinematic :: (body: *Body, targetPosition: *RVec3, targetRotation: *Quat, deltaTime: float) -> void #foreign joltc "JPH_Body_MoveKinematic";
Body_ApplyBuoyancyImpulse :: (body: *Body, surfacePosition: *RVec3, surfaceNormal: *Vec3, buoyancy: float, linearDrag: float, angularDrag: float, fluidVelocity: *Vec3, gravity: *Vec3, deltaTime: float) -> bool #foreign joltc "JPH_Body_ApplyBuoyancyImpulse";

Body_IsInBroadPhase :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsInBroadPhase";
Body_IsCollisionCacheInvalid :: (body: *Body) -> bool #foreign joltc "JPH_Body_IsCollisionCacheInvalid";

Body_GetShape :: (body: *Body) -> *Shape #foreign joltc "JPH_Body_GetShape";

Body_GetPosition :: (body: *Body, result: *RVec3) -> void #foreign joltc "JPH_Body_GetPosition";
Body_GetRotation :: (body: *Body, result: *Quat) -> void #foreign joltc "JPH_Body_GetRotation";
Body_GetWorldTransform :: (body: *Body, result: *RMatrix4x4) -> void #foreign joltc "JPH_Body_GetWorldTransform";
Body_GetCenterOfMassPosition :: (body: *Body, result: *RVec3) -> void #foreign joltc "JPH_Body_GetCenterOfMassPosition";
Body_GetCenterOfMassTransform :: (body: *Body, result: *RMatrix4x4) -> void #foreign joltc "JPH_Body_GetCenterOfMassTransform";
Body_GetInverseCenterOfMassTransform :: (body: *Body, result: *RMatrix4x4) -> void #foreign joltc "JPH_Body_GetInverseCenterOfMassTransform";

Body_GetWorldSpaceBounds :: (body: *Body, result: *AABox) -> void #foreign joltc "JPH_Body_GetWorldSpaceBounds";
Body_GetWorldSpaceSurfaceNormal :: (body: *Body, subShapeID: SubShapeID, position: *RVec3, normal: *Vec3) -> void #foreign joltc "JPH_Body_GetWorldSpaceSurfaceNormal";

Body_GetMotionProperties :: (body: *Body) -> *MotionProperties #foreign joltc "JPH_Body_GetMotionProperties";
Body_GetMotionPropertiesUnchecked :: (body: *Body) -> *MotionProperties #foreign joltc "JPH_Body_GetMotionPropertiesUnchecked";

Body_SetUserData :: (body: *Body, userData: u64) -> void #foreign joltc "JPH_Body_SetUserData";
Body_GetUserData :: (body: *Body) -> u64 #foreign joltc "JPH_Body_GetUserData";

Body_GetFixedToWorldBody :: () -> *Body #foreign joltc "JPH_Body_GetFixedToWorldBody";

/* JPH_BroadPhaseLayerFilter_Procs */
BroadPhaseLayerFilter_Procs :: struct {
    ShouldCollide: #type (userData: *void, layer: BroadPhaseLayer) -> bool #c_call;
}

BroadPhaseLayerFilter_SetProcs :: (procs: *BroadPhaseLayerFilter_Procs) -> void #foreign joltc "JPH_BroadPhaseLayerFilter_SetProcs";
BroadPhaseLayerFilter_Create :: (userData: *void) -> *BroadPhaseLayerFilter #foreign joltc "JPH_BroadPhaseLayerFilter_Create";
BroadPhaseLayerFilter_Destroy :: (filter: *BroadPhaseLayerFilter) -> void #foreign joltc "JPH_BroadPhaseLayerFilter_Destroy";

/* JPH_ObjectLayerFilter */
ObjectLayerFilter_Procs :: struct {
    ShouldCollide: #type (userData: *void, layer: ObjectLayer) -> bool #c_call;
}

ObjectLayerFilter_SetProcs :: (procs: *ObjectLayerFilter_Procs) -> void #foreign joltc "JPH_ObjectLayerFilter_SetProcs";
ObjectLayerFilter_Create :: (userData: *void) -> *ObjectLayerFilter #foreign joltc "JPH_ObjectLayerFilter_Create";
ObjectLayerFilter_Destroy :: (filter: *ObjectLayerFilter) -> void #foreign joltc "JPH_ObjectLayerFilter_Destroy";

/* JPH_BodyFilter */
BodyFilter_Procs :: struct {
    ShouldCollide:       #type (userData: *void, bodyID: BodyID) -> bool #c_call;
    ShouldCollideLocked: #type (userData: *void, bodyID: *Body) -> bool #c_call;
}

BodyFilter_SetProcs :: (procs: *BodyFilter_Procs) -> void #foreign joltc "JPH_BodyFilter_SetProcs";
BodyFilter_Create :: (userData: *void) -> *BodyFilter #foreign joltc "JPH_BodyFilter_Create";
BodyFilter_Destroy :: (filter: *BodyFilter) -> void #foreign joltc "JPH_BodyFilter_Destroy";

/* JPH_ShapeFilter */
ShapeFilter_Procs :: struct {
    ShouldCollide:  #type (userData: *void, shape2: *Shape, subShapeIDOfShape2: *SubShapeID) -> bool #c_call;
    ShouldCollide2: #type (userData: *void, shape1: *Shape, subShapeIDOfShape1: *SubShapeID, shape2: *Shape, subShapeIDOfShape2: *SubShapeID) -> bool #c_call;
}

ShapeFilter_SetProcs :: (procs: *ShapeFilter_Procs) -> void #foreign joltc "JPH_ShapeFilter_SetProcs";
ShapeFilter_Create :: (userData: *void) -> *ShapeFilter #foreign joltc "JPH_ShapeFilter_Create";
ShapeFilter_Destroy :: (filter: *ShapeFilter) -> void #foreign joltc "JPH_ShapeFilter_Destroy";
ShapeFilter_GetBodyID2 :: (filter: *ShapeFilter) -> BodyID #foreign joltc "JPH_ShapeFilter_GetBodyID2";
ShapeFilter_SetBodyID2 :: (filter: *ShapeFilter, id: BodyID) -> void #foreign joltc "JPH_ShapeFilter_SetBodyID2";

/* JPH_SimShapeFilter */
SimShapeFilter_Procs :: struct {
    ShouldCollide: #type (userData: *void, body1: *Body, shape1: *Shape, subShapeIDOfShape1: *SubShapeID, body2: *Body, shape2: *Shape, subShapeIDOfShape2: *SubShapeID) -> bool #c_call;
}

SimShapeFilter_SetProcs :: (procs: *SimShapeFilter_Procs) -> void #foreign joltc "JPH_SimShapeFilter_SetProcs";
SimShapeFilter_Create :: (userData: *void) -> *SimShapeFilter #foreign joltc "JPH_SimShapeFilter_Create";
SimShapeFilter_Destroy :: (filter: *SimShapeFilter) -> void #foreign joltc "JPH_SimShapeFilter_Destroy";

/* Contact listener */
ContactListener_Procs :: struct {
    OnContactValidate:  #type (userData: *void, body1: *Body, body2: *Body, baseOffset: *RVec3, collisionResult: *CollideShapeResult) -> ValidateResult #c_call;

    OnContactAdded:     #type (userData: *void, body1: *Body, body2: *Body, manifold: *ContactManifold, settings: *ContactSettings) -> void #c_call;

    OnContactPersisted: #type (userData: *void, body1: *Body, body2: *Body, manifold: *ContactManifold, settings: *ContactSettings) -> void #c_call;

    OnContactRemoved:   #type (userData: *void, subShapePair: *SubShapeIDPair) -> void #c_call;
}

ContactListener_SetProcs :: (procs: *ContactListener_Procs) -> void #foreign joltc "JPH_ContactListener_SetProcs";
ContactListener_Create :: (userData: *void) -> *ContactListener #foreign joltc "JPH_ContactListener_Create";
ContactListener_Destroy :: (listener: *ContactListener) -> void #foreign joltc "JPH_ContactListener_Destroy";

/* BodyActivationListener */
BodyActivationListener_Procs :: struct {
    OnBodyActivated:   #type (userData: *void, bodyID: BodyID, bodyUserData: u64) -> void #c_call;
    OnBodyDeactivated: #type (userData: *void, bodyID: BodyID, bodyUserData: u64) -> void #c_call;
}

BodyActivationListener_SetProcs :: (procs: *BodyActivationListener_Procs) -> void #foreign joltc "JPH_BodyActivationListener_SetProcs";
BodyActivationListener_Create :: (userData: *void) -> *BodyActivationListener #foreign joltc "JPH_BodyActivationListener_Create";
BodyActivationListener_Destroy :: (listener: *BodyActivationListener) -> void #foreign joltc "JPH_BodyActivationListener_Destroy";

/* JPH_BodyDrawFilter */
BodyDrawFilter_Procs :: struct {
    ShouldDraw: #type (userData: *void, body: *Body) -> bool #c_call;
}

BodyDrawFilter_SetProcs :: (procs: *BodyDrawFilter_Procs) -> void #foreign joltc "JPH_BodyDrawFilter_SetProcs";
BodyDrawFilter_Create :: (userData: *void) -> *BodyDrawFilter #foreign joltc "JPH_BodyDrawFilter_Create";
BodyDrawFilter_Destroy :: (filter: *BodyDrawFilter) -> void #foreign joltc "JPH_BodyDrawFilter_Destroy";

/* ContactManifold */
ContactManifold_GetWorldSpaceNormal :: (manifold: *ContactManifold, result: *Vec3) -> void #foreign joltc "JPH_ContactManifold_GetWorldSpaceNormal";
ContactManifold_GetPenetrationDepth :: (manifold: *ContactManifold) -> float #foreign joltc "JPH_ContactManifold_GetPenetrationDepth";
ContactManifold_GetSubShapeID1 :: (manifold: *ContactManifold) -> SubShapeID #foreign joltc "JPH_ContactManifold_GetSubShapeID1";
ContactManifold_GetSubShapeID2 :: (manifold: *ContactManifold) -> SubShapeID #foreign joltc "JPH_ContactManifold_GetSubShapeID2";
ContactManifold_GetPointCount :: (manifold: *ContactManifold) -> u32 #foreign joltc "JPH_ContactManifold_GetPointCount";
ContactManifold_GetWorldSpaceContactPointOn1 :: (manifold: *ContactManifold, index: u32, result: *RVec3) -> void #foreign joltc "JPH_ContactManifold_GetWorldSpaceContactPointOn1";
ContactManifold_GetWorldSpaceContactPointOn2 :: (manifold: *ContactManifold, index: u32, result: *RVec3) -> void #foreign joltc "JPH_ContactManifold_GetWorldSpaceContactPointOn2";

/* ContactSettings */
ContactSettings_GetFriction :: (settings: *ContactSettings) -> float #foreign joltc "JPH_ContactSettings_GetFriction";
ContactSettings_SetFriction :: (settings: *ContactSettings, friction: float) -> void #foreign joltc "JPH_ContactSettings_SetFriction";
ContactSettings_GetRestitution :: (settings: *ContactSettings) -> float #foreign joltc "JPH_ContactSettings_GetRestitution";
ContactSettings_SetRestitution :: (settings: *ContactSettings, restitution: float) -> void #foreign joltc "JPH_ContactSettings_SetRestitution";
ContactSettings_GetInvMassScale1 :: (settings: *ContactSettings) -> float #foreign joltc "JPH_ContactSettings_GetInvMassScale1";
ContactSettings_SetInvMassScale1 :: (settings: *ContactSettings, scale: float) -> void #foreign joltc "JPH_ContactSettings_SetInvMassScale1";
ContactSettings_GetInvInertiaScale1 :: (settings: *ContactSettings) -> float #foreign joltc "JPH_ContactSettings_GetInvInertiaScale1";
ContactSettings_SetInvInertiaScale1 :: (settings: *ContactSettings, scale: float) -> void #foreign joltc "JPH_ContactSettings_SetInvInertiaScale1";
ContactSettings_GetInvMassScale2 :: (settings: *ContactSettings) -> float #foreign joltc "JPH_ContactSettings_GetInvMassScale2";
ContactSettings_SetInvMassScale2 :: (settings: *ContactSettings, scale: float) -> void #foreign joltc "JPH_ContactSettings_SetInvMassScale2";
ContactSettings_GetInvInertiaScale2 :: (settings: *ContactSettings) -> float #foreign joltc "JPH_ContactSettings_GetInvInertiaScale2";
ContactSettings_SetInvInertiaScale2 :: (settings: *ContactSettings, scale: float) -> void #foreign joltc "JPH_ContactSettings_SetInvInertiaScale2";
ContactSettings_GetIsSensor :: (settings: *ContactSettings) -> bool #foreign joltc "JPH_ContactSettings_GetIsSensor";
ContactSettings_SetIsSensor :: (settings: *ContactSettings, sensor: bool) -> void #foreign joltc "JPH_ContactSettings_SetIsSensor";
ContactSettings_GetRelativeLinearSurfaceVelocity :: (settings: *ContactSettings, result: *Vec3) -> void #foreign joltc "JPH_ContactSettings_GetRelativeLinearSurfaceVelocity";
ContactSettings_SetRelativeLinearSurfaceVelocity :: (settings: *ContactSettings, velocity: *Vec3) -> void #foreign joltc "JPH_ContactSettings_SetRelativeLinearSurfaceVelocity";
ContactSettings_GetRelativeAngularSurfaceVelocity :: (settings: *ContactSettings, result: *Vec3) -> void #foreign joltc "JPH_ContactSettings_GetRelativeAngularSurfaceVelocity";
ContactSettings_SetRelativeAngularSurfaceVelocity :: (settings: *ContactSettings, velocity: *Vec3) -> void #foreign joltc "JPH_ContactSettings_SetRelativeAngularSurfaceVelocity";

/* CharacterBase */
CharacterBase_Destroy :: (character: *CharacterBase) -> void #foreign joltc "JPH_CharacterBase_Destroy";
CharacterBase_GetCosMaxSlopeAngle :: (character: *CharacterBase) -> float #foreign joltc "JPH_CharacterBase_GetCosMaxSlopeAngle";
CharacterBase_SetMaxSlopeAngle :: (character: *CharacterBase, maxSlopeAngle: float) -> void #foreign joltc "JPH_CharacterBase_SetMaxSlopeAngle";
CharacterBase_GetUp :: (character: *CharacterBase, result: *Vec3) -> void #foreign joltc "JPH_CharacterBase_GetUp";
CharacterBase_SetUp :: (character: *CharacterBase, value: *Vec3) -> void #foreign joltc "JPH_CharacterBase_SetUp";
CharacterBase_IsSlopeTooSteep :: (character: *CharacterBase, value: *Vec3) -> bool #foreign joltc "JPH_CharacterBase_IsSlopeTooSteep";
CharacterBase_GetShape :: (character: *CharacterBase) -> *Shape #foreign joltc "JPH_CharacterBase_GetShape";

CharacterBase_GetGroundState :: (character: *CharacterBase) -> GroundState #foreign joltc "JPH_CharacterBase_GetGroundState";
CharacterBase_IsSupported :: (character: *CharacterBase) -> bool #foreign joltc "JPH_CharacterBase_IsSupported";
CharacterBase_GetGroundPosition :: (character: *CharacterBase, position: *RVec3) -> void #foreign joltc "JPH_CharacterBase_GetGroundPosition";
CharacterBase_GetGroundNormal :: (character: *CharacterBase, normal: *Vec3) -> void #foreign joltc "JPH_CharacterBase_GetGroundNormal";
CharacterBase_GetGroundVelocity :: (character: *CharacterBase, velocity: *Vec3) -> void #foreign joltc "JPH_CharacterBase_GetGroundVelocity";
CharacterBase_GetGroundMaterial :: (character: *CharacterBase) -> *PhysicsMaterial #foreign joltc "JPH_CharacterBase_GetGroundMaterial";
CharacterBase_GetGroundBodyId :: (character: *CharacterBase) -> BodyID #foreign joltc "JPH_CharacterBase_GetGroundBodyId";
CharacterBase_GetGroundSubShapeId :: (character: *CharacterBase) -> SubShapeID #foreign joltc "JPH_CharacterBase_GetGroundSubShapeId";
CharacterBase_GetGroundUserData :: (character: *CharacterBase) -> u64 #foreign joltc "JPH_CharacterBase_GetGroundUserData";

/* CharacterSettings */
CharacterSettings_Init :: (settings: *CharacterSettings) -> void #foreign joltc "JPH_CharacterSettings_Init";

/* Character */
Character_Create :: (settings: *CharacterSettings, position: *RVec3, rotation: *Quat, userData: u64, system: *PhysicsSystem) -> *Character #foreign joltc "JPH_Character_Create";

Character_AddToPhysicsSystem :: (character: *Character, activationMode: Activation, lockBodies: bool) -> void #foreign joltc "JPH_Character_AddToPhysicsSystem";
Character_RemoveFromPhysicsSystem :: (character: *Character, lockBodies: bool) -> void #foreign joltc "JPH_Character_RemoveFromPhysicsSystem";
Character_Activate :: (character: *Character, lockBodies: bool) -> void #foreign joltc "JPH_Character_Activate";
Character_PostSimulation :: (character: *Character, maxSeparationDistance: float, lockBodies: bool) -> void #foreign joltc "JPH_Character_PostSimulation";
Character_SetLinearAndAngularVelocity :: (character: *Character, linearVelocity: *Vec3, angularVelocity: *Vec3, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetLinearAndAngularVelocity";
Character_GetLinearVelocity :: (character: *Character, result: *Vec3) -> void #foreign joltc "JPH_Character_GetLinearVelocity";
Character_SetLinearVelocity :: (character: *Character, value: *Vec3, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetLinearVelocity";
Character_AddLinearVelocity :: (character: *Character, value: *Vec3, lockBodies: bool) -> void #foreign joltc "JPH_Character_AddLinearVelocity";
Character_AddImpulse :: (character: *Character, value: *Vec3, lockBodies: bool) -> void #foreign joltc "JPH_Character_AddImpulse";
Character_GetBodyID :: (character: *Character) -> BodyID #foreign joltc "JPH_Character_GetBodyID";

Character_GetPositionAndRotation :: (character: *Character, position: *RVec3, rotation: *Quat, lockBodies: bool) -> void #foreign joltc "JPH_Character_GetPositionAndRotation";
Character_SetPositionAndRotation :: (character: *Character, position: *RVec3, rotation: *Quat, activationMode: Activation, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetPositionAndRotation";
Character_GetPosition :: (character: *Character, position: *RVec3, lockBodies: bool) -> void #foreign joltc "JPH_Character_GetPosition";
Character_SetPosition :: (character: *Character, position: *RVec3, activationMode: Activation, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetPosition";
Character_GetRotation :: (character: *Character, rotation: *Quat, lockBodies: bool) -> void #foreign joltc "JPH_Character_GetRotation";
Character_SetRotation :: (character: *Character, rotation: *Quat, activationMode: Activation, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetRotation";
Character_GetCenterOfMassPosition :: (character: *Character, result: *RVec3, lockBodies: bool) -> void #foreign joltc "JPH_Character_GetCenterOfMassPosition";
Character_GetWorldTransform :: (character: *Character, result: *RMatrix4x4, lockBodies: bool) -> void #foreign joltc "JPH_Character_GetWorldTransform";
Character_GetLayer :: (character: *Character) -> ObjectLayer #foreign joltc "JPH_Character_GetLayer";
Character_SetLayer :: (character: *Character, value: ObjectLayer, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetLayer";
Character_SetShape :: (character: *Character, shape: *Shape, maxPenetrationDepth: float, lockBodies: bool) -> void #foreign joltc "JPH_Character_SetShape";

/* CharacterVirtualSettings */
CharacterVirtualSettings_Init :: (settings: *CharacterVirtualSettings) -> void #foreign joltc "JPH_CharacterVirtualSettings_Init";

/* CharacterVirtual */
CharacterVirtual_Create :: (settings: *CharacterVirtualSettings, position: *RVec3, rotation: *Quat, userData: u64, system: *PhysicsSystem) -> *CharacterVirtual #foreign joltc "JPH_CharacterVirtual_Create";

CharacterVirtual_GetID :: (character: *CharacterVirtual) -> CharacterID #foreign joltc "JPH_CharacterVirtual_GetID";
CharacterVirtual_SetListener :: (character: *CharacterVirtual, listener: *CharacterContactListener) -> void #foreign joltc "JPH_CharacterVirtual_SetListener";
CharacterVirtual_SetCharacterVsCharacterCollision :: (character: *CharacterVirtual, characterVsCharacterCollision: *CharacterVsCharacterCollision) -> void #foreign joltc "JPH_CharacterVirtual_SetCharacterVsCharacterCollision";

CharacterVirtual_GetLinearVelocity :: (character: *CharacterVirtual, velocity: *Vec3) -> void #foreign joltc "JPH_CharacterVirtual_GetLinearVelocity";
CharacterVirtual_SetLinearVelocity :: (character: *CharacterVirtual, velocity: *Vec3) -> void #foreign joltc "JPH_CharacterVirtual_SetLinearVelocity";
CharacterVirtual_GetPosition :: (character: *CharacterVirtual, position: *RVec3) -> void #foreign joltc "JPH_CharacterVirtual_GetPosition";
CharacterVirtual_SetPosition :: (character: *CharacterVirtual, position: *RVec3) -> void #foreign joltc "JPH_CharacterVirtual_SetPosition";
CharacterVirtual_GetRotation :: (character: *CharacterVirtual, rotation: *Quat) -> void #foreign joltc "JPH_CharacterVirtual_GetRotation";
CharacterVirtual_SetRotation :: (character: *CharacterVirtual, rotation: *Quat) -> void #foreign joltc "JPH_CharacterVirtual_SetRotation";
CharacterVirtual_GetWorldTransform :: (character: *CharacterVirtual, result: *RMatrix4x4) -> void #foreign joltc "JPH_CharacterVirtual_GetWorldTransform";
CharacterVirtual_GetCenterOfMassTransform :: (character: *CharacterVirtual, result: *RMatrix4x4) -> void #foreign joltc "JPH_CharacterVirtual_GetCenterOfMassTransform";
CharacterVirtual_GetMass :: (character: *CharacterVirtual) -> float #foreign joltc "JPH_CharacterVirtual_GetMass";
CharacterVirtual_SetMass :: (character: *CharacterVirtual, value: float) -> void #foreign joltc "JPH_CharacterVirtual_SetMass";
CharacterVirtual_GetMaxStrength :: (character: *CharacterVirtual) -> float #foreign joltc "JPH_CharacterVirtual_GetMaxStrength";
CharacterVirtual_SetMaxStrength :: (character: *CharacterVirtual, value: float) -> void #foreign joltc "JPH_CharacterVirtual_SetMaxStrength";

CharacterVirtual_GetPenetrationRecoverySpeed :: (character: *CharacterVirtual) -> float #foreign joltc "JPH_CharacterVirtual_GetPenetrationRecoverySpeed";
CharacterVirtual_SetPenetrationRecoverySpeed :: (character: *CharacterVirtual, value: float) -> void #foreign joltc "JPH_CharacterVirtual_SetPenetrationRecoverySpeed";
CharacterVirtual_GetEnhancedInternalEdgeRemoval :: (character: *CharacterVirtual) -> bool #foreign joltc "JPH_CharacterVirtual_GetEnhancedInternalEdgeRemoval";
CharacterVirtual_SetEnhancedInternalEdgeRemoval :: (character: *CharacterVirtual, value: bool) -> void #foreign joltc "JPH_CharacterVirtual_SetEnhancedInternalEdgeRemoval";
CharacterVirtual_GetCharacterPadding :: (character: *CharacterVirtual) -> float #foreign joltc "JPH_CharacterVirtual_GetCharacterPadding";
CharacterVirtual_GetMaxNumHits :: (character: *CharacterVirtual) -> u32 #foreign joltc "JPH_CharacterVirtual_GetMaxNumHits";
CharacterVirtual_SetMaxNumHits :: (character: *CharacterVirtual, value: u32) -> void #foreign joltc "JPH_CharacterVirtual_SetMaxNumHits";
CharacterVirtual_GetHitReductionCosMaxAngle :: (character: *CharacterVirtual) -> float #foreign joltc "JPH_CharacterVirtual_GetHitReductionCosMaxAngle";
CharacterVirtual_SetHitReductionCosMaxAngle :: (character: *CharacterVirtual, value: float) -> void #foreign joltc "JPH_CharacterVirtual_SetHitReductionCosMaxAngle";
CharacterVirtual_GetMaxHitsExceeded :: (character: *CharacterVirtual) -> bool #foreign joltc "JPH_CharacterVirtual_GetMaxHitsExceeded";
CharacterVirtual_GetShapeOffset :: (character: *CharacterVirtual, result: *Vec3) -> void #foreign joltc "JPH_CharacterVirtual_GetShapeOffset";
CharacterVirtual_SetShapeOffset :: (character: *CharacterVirtual, value: *Vec3) -> void #foreign joltc "JPH_CharacterVirtual_SetShapeOffset";
CharacterVirtual_GetUserData :: (character: *CharacterVirtual) -> u64 #foreign joltc "JPH_CharacterVirtual_GetUserData";
CharacterVirtual_SetUserData :: (character: *CharacterVirtual, value: u64) -> void #foreign joltc "JPH_CharacterVirtual_SetUserData";
CharacterVirtual_GetInnerBodyID :: (character: *CharacterVirtual) -> BodyID #foreign joltc "JPH_CharacterVirtual_GetInnerBodyID";

CharacterVirtual_CancelVelocityTowardsSteepSlopes :: (character: *CharacterVirtual, desiredVelocity: *Vec3, velocity: *Vec3) -> void #foreign joltc "JPH_CharacterVirtual_CancelVelocityTowardsSteepSlopes";
CharacterVirtual_StartTrackingContactChanges :: (character: *CharacterVirtual) -> void #foreign joltc "JPH_CharacterVirtual_StartTrackingContactChanges";
CharacterVirtual_FinishTrackingContactChanges :: (character: *CharacterVirtual) -> void #foreign joltc "JPH_CharacterVirtual_FinishTrackingContactChanges";
CharacterVirtual_Update :: (character: *CharacterVirtual, deltaTime: float, layer: ObjectLayer, system: *PhysicsSystem, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> void #foreign joltc "JPH_CharacterVirtual_Update";

CharacterVirtual_ExtendedUpdate :: (character: *CharacterVirtual, deltaTime: float, settings: *ExtendedUpdateSettings, layer: ObjectLayer, system: *PhysicsSystem, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> void #foreign joltc "JPH_CharacterVirtual_ExtendedUpdate";

CharacterVirtual_RefreshContacts :: (character: *CharacterVirtual, layer: ObjectLayer, system: *PhysicsSystem, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> void #foreign joltc "JPH_CharacterVirtual_RefreshContacts";

CharacterVirtual_CanWalkStairs :: (character: *CharacterVirtual, linearVelocity: *Vec3) -> bool #foreign joltc "JPH_CharacterVirtual_CanWalkStairs";
CharacterVirtual_WalkStairs :: (character: *CharacterVirtual, deltaTime: float, stepUp: *Vec3, stepForward: *Vec3, stepForwardTest: *Vec3, stepDownExtra: *Vec3, layer: ObjectLayer, system: *PhysicsSystem, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_CharacterVirtual_WalkStairs";

CharacterVirtual_StickToFloor :: (character: *CharacterVirtual, stepDown: *Vec3, layer: ObjectLayer, system: *PhysicsSystem, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_CharacterVirtual_StickToFloor";

CharacterVirtual_UpdateGroundVelocity :: (character: *CharacterVirtual) -> void #foreign joltc "JPH_CharacterVirtual_UpdateGroundVelocity";
CharacterVirtual_SetShape :: (character: *CharacterVirtual, shape: *Shape, maxPenetrationDepth: float, layer: ObjectLayer, system: *PhysicsSystem, bodyFilter: *BodyFilter, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_CharacterVirtual_SetShape";
CharacterVirtual_SetInnerBodyShape :: (character: *CharacterVirtual, shape: *Shape) -> void #foreign joltc "JPH_CharacterVirtual_SetInnerBodyShape";

CharacterVirtual_GetNumActiveContacts :: (character: *CharacterVirtual) -> u32 #foreign joltc "JPH_CharacterVirtual_GetNumActiveContacts";
CharacterVirtual_GetActiveContact :: (character: *CharacterVirtual, index: u32, result: *CharacterVirtualContact) -> void #foreign joltc "JPH_CharacterVirtual_GetActiveContact";

CharacterVirtual_HasCollidedWithBody :: (character: *CharacterVirtual, body: BodyID) -> bool #foreign joltc "JPH_CharacterVirtual_HasCollidedWithBody";
CharacterVirtual_HasCollidedWith :: (character: *CharacterVirtual, other: CharacterID) -> bool #foreign joltc "JPH_CharacterVirtual_HasCollidedWith";
CharacterVirtual_HasCollidedWithCharacter :: (character: *CharacterVirtual, other: *CharacterVirtual) -> bool #foreign joltc "JPH_CharacterVirtual_HasCollidedWithCharacter";

/* CharacterContactListener */
CharacterContactListener_Procs :: struct {
    OnAdjustBodyVelocity:        #type (userData: *void, character: *CharacterVirtual, body2: *Body, ioLinearVelocity: *Vec3, ioAngularVelocity: *Vec3) -> void #c_call;

    OnContactValidate:           #type (userData: *void, character: *CharacterVirtual, bodyID2: BodyID, subShapeID2: SubShapeID) -> bool #c_call;

    OnCharacterContactValidate:  #type (userData: *void, character: *CharacterVirtual, otherCharacter: *CharacterVirtual, subShapeID2: SubShapeID) -> bool #c_call;

    OnContactAdded:              #type (userData: *void, character: *CharacterVirtual, bodyID2: BodyID, subShapeID2: SubShapeID, contactPosition: *RVec3, contactNormal: *Vec3, ioSettings: *CharacterContactSettings) -> void #c_call;

    OnContactPersisted:          #type (userData: *void, character: *CharacterVirtual, bodyID2: BodyID, subShapeID2: SubShapeID, contactPosition: *RVec3, contactNormal: *Vec3, ioSettings: *CharacterContactSettings) -> void #c_call;

    OnContactRemoved:            #type (userData: *void, character: *CharacterVirtual, bodyID2: BodyID, subShapeID2: SubShapeID) -> void #c_call;

    OnCharacterContactAdded:     #type (userData: *void, character: *CharacterVirtual, otherCharacter: *CharacterVirtual, subShapeID2: SubShapeID, contactPosition: *RVec3, contactNormal: *Vec3, ioSettings: *CharacterContactSettings) -> void #c_call;

    OnCharacterContactPersisted: #type (userData: *void, character: *CharacterVirtual, otherCharacter: *CharacterVirtual, subShapeID2: SubShapeID, contactPosition: *RVec3, contactNormal: *Vec3, ioSettings: *CharacterContactSettings) -> void #c_call;

    OnCharacterContactRemoved:   #type (userData: *void, character: *CharacterVirtual, otherCharacterID: CharacterID, subShapeID2: SubShapeID) -> void #c_call;

    OnContactSolve:              #type (userData: *void, character: *CharacterVirtual, bodyID2: BodyID, subShapeID2: SubShapeID, contactPosition: *RVec3, contactNormal: *Vec3, contactVelocity: *Vec3, contactMaterial: *PhysicsMaterial, characterVelocity: *Vec3, newCharacterVelocity: *Vec3) -> void #c_call;

    OnCharacterContactSolve:     #type (userData: *void, character: *CharacterVirtual, otherCharacter: *CharacterVirtual, subShapeID2: SubShapeID, contactPosition: *RVec3, contactNormal: *Vec3, contactVelocity: *Vec3, contactMaterial: *PhysicsMaterial, characterVelocity: *Vec3, newCharacterVelocity: *Vec3) -> void #c_call;
}

CharacterContactListener_SetProcs :: (procs: *CharacterContactListener_Procs) -> void #foreign joltc "JPH_CharacterContactListener_SetProcs";
CharacterContactListener_Create :: (userData: *void) -> *CharacterContactListener #foreign joltc "JPH_CharacterContactListener_Create";
CharacterContactListener_Destroy :: (listener: *CharacterContactListener) -> void #foreign joltc "JPH_CharacterContactListener_Destroy";

/* JPH_CharacterVsCharacterCollision */
CharacterVsCharacterCollision_Procs :: struct {
    CollideCharacter: #type (userData: *void, character: *CharacterVirtual, centerOfMassTransform: *RMatrix4x4, collideShapeSettings: *CollideShapeSettings, baseOffset: *RVec3) -> void #c_call;

    CastCharacter:    #type (userData: *void, character: *CharacterVirtual, centerOfMassTransform: *RMatrix4x4, direction: *Vec3, shapeCastSettings: *ShapeCastSettings, baseOffset: *RVec3) -> void #c_call;
}

CharacterVsCharacterCollision_SetProcs :: (procs: *CharacterVsCharacterCollision_Procs) -> void #foreign joltc "JPH_CharacterVsCharacterCollision_SetProcs";
CharacterVsCharacterCollision_Create :: (userData: *void) -> *CharacterVsCharacterCollision #foreign joltc "JPH_CharacterVsCharacterCollision_Create";
CharacterVsCharacterCollision_CreateSimple :: () -> *CharacterVsCharacterCollision #foreign joltc "JPH_CharacterVsCharacterCollision_CreateSimple";
CharacterVsCharacterCollisionSimple_AddCharacter :: (characterVsCharacter: *CharacterVsCharacterCollision, character: *CharacterVirtual) -> void #foreign joltc "JPH_CharacterVsCharacterCollisionSimple_AddCharacter";
CharacterVsCharacterCollisionSimple_RemoveCharacter :: (characterVsCharacter: *CharacterVsCharacterCollision, character: *CharacterVirtual) -> void #foreign joltc "JPH_CharacterVsCharacterCollisionSimple_RemoveCharacter";
CharacterVsCharacterCollision_Destroy :: (listener: *CharacterVsCharacterCollision) -> void #foreign joltc "JPH_CharacterVsCharacterCollision_Destroy";

/* CollisionDispatch */
CollisionDispatch_CollideShapeVsShape :: (shape1: *Shape, shape2: *Shape, scale1: *Vec3, scale2: *Vec3, centerOfMassTransform1: *Matrix4x4, centerOfMassTransform2: *Matrix4x4, collideShapeSettings: *CollideShapeSettings, callback: CollideShapeCollectorCallback, userData: *void, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_CollisionDispatch_CollideShapeVsShape";

CollisionDispatch_CastShapeVsShapeLocalSpace :: (direction: *Vec3, shape1: *Shape, shape2: *Shape, scale1InShape2LocalSpace: *Vec3, scale2: *Vec3, centerOfMassTransform1InShape2LocalSpace: *Matrix4x4, centerOfMassWorldTransform2: *Matrix4x4, shapeCastSettings: *ShapeCastSettings, callback: CastShapeCollectorCallback, userData: *void, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_CollisionDispatch_CastShapeVsShapeLocalSpace";

CollisionDispatch_CastShapeVsShapeWorldSpace :: (direction: *Vec3, shape1: *Shape, shape2: *Shape, scale1: *Vec3, inScale2: *Vec3, centerOfMassWorldTransform1: *Matrix4x4, centerOfMassWorldTransform2: *Matrix4x4, shapeCastSettings: *ShapeCastSettings, callback: CastShapeCollectorCallback, userData: *void, shapeFilter: *ShapeFilter) -> bool #foreign joltc "JPH_CollisionDispatch_CastShapeVsShapeWorldSpace";

/* DebugRenderer */
DebugRenderer_Procs :: struct {
    DrawLine:     #type (userData: *void, from: *RVec3, to: *RVec3, color: Color) -> void #c_call;
    DrawTriangle: #type (userData: *void, v1: *RVec3, v2: *RVec3, v3: *RVec3, color: Color, castShadow: DebugRenderer_CastShadow) -> void #c_call;
    DrawText3D:   #type (userData: *void, position: *RVec3, str: *u8, color: Color, height: float) -> void #c_call;
}

DebugRenderer_SetProcs :: (procs: *DebugRenderer_Procs) -> void #foreign joltc "JPH_DebugRenderer_SetProcs";
DebugRenderer_Create :: (userData: *void) -> *DebugRenderer #foreign joltc "JPH_DebugRenderer_Create";
DebugRenderer_Destroy :: (renderer: *DebugRenderer) -> void #foreign joltc "JPH_DebugRenderer_Destroy";
DebugRenderer_NextFrame :: (renderer: *DebugRenderer) -> void #foreign joltc "JPH_DebugRenderer_NextFrame";
DebugRenderer_SetCameraPos :: (renderer: *DebugRenderer, position: *RVec3) -> void #foreign joltc "JPH_DebugRenderer_SetCameraPos";

DebugRenderer_DrawLine :: (renderer: *DebugRenderer, from: *RVec3, to: *RVec3, color: Color) -> void #foreign joltc "JPH_DebugRenderer_DrawLine";
DebugRenderer_DrawWireBox :: (renderer: *DebugRenderer, box: *AABox, color: Color) -> void #foreign joltc "JPH_DebugRenderer_DrawWireBox";
DebugRenderer_DrawWireBox2 :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, box: *AABox, color: Color) -> void #foreign joltc "JPH_DebugRenderer_DrawWireBox2";
DebugRenderer_DrawMarker :: (renderer: *DebugRenderer, position: *RVec3, color: Color, size: float) -> void #foreign joltc "JPH_DebugRenderer_DrawMarker";
DebugRenderer_DrawArrow :: (renderer: *DebugRenderer, from: *RVec3, to: *RVec3, color: Color, size: float) -> void #foreign joltc "JPH_DebugRenderer_DrawArrow";
DebugRenderer_DrawCoordinateSystem :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, size: float) -> void #foreign joltc "JPH_DebugRenderer_DrawCoordinateSystem";
DebugRenderer_DrawPlane :: (renderer: *DebugRenderer, point: *RVec3, normal: *Vec3, color: Color, size: float) -> void #foreign joltc "JPH_DebugRenderer_DrawPlane";
DebugRenderer_DrawWireTriangle :: (renderer: *DebugRenderer, v1: *RVec3, v2: *RVec3, v3: *RVec3, color: Color) -> void #foreign joltc "JPH_DebugRenderer_DrawWireTriangle";
DebugRenderer_DrawWireSphere :: (renderer: *DebugRenderer, center: *RVec3, radius: float, color: Color, level: s32) -> void #foreign joltc "JPH_DebugRenderer_DrawWireSphere";
DebugRenderer_DrawWireUnitSphere :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, color: Color, level: s32) -> void #foreign joltc "JPH_DebugRenderer_DrawWireUnitSphere";
DebugRenderer_DrawTriangle :: (renderer: *DebugRenderer, v1: *RVec3, v2: *RVec3, v3: *RVec3, color: Color, castShadow: DebugRenderer_CastShadow) -> void #foreign joltc "JPH_DebugRenderer_DrawTriangle";
DebugRenderer_DrawBox :: (renderer: *DebugRenderer, box: *AABox, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawBox";
DebugRenderer_DrawBox2 :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, box: *AABox, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawBox2";
DebugRenderer_DrawSphere :: (renderer: *DebugRenderer, center: *RVec3, radius: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawSphere";
DebugRenderer_DrawUnitSphere :: (renderer: *DebugRenderer, matrix: RMatrix4x4, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawUnitSphere";
DebugRenderer_DrawCapsule :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, halfHeightOfCylinder: float, radius: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawCapsule";
DebugRenderer_DrawCylinder :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, halfHeight: float, radius: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawCylinder";
DebugRenderer_DrawOpenCone :: (renderer: *DebugRenderer, top: *RVec3, axis: *Vec3, perpendicular: *Vec3, halfAngle: float, length: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawOpenCone";
DebugRenderer_DrawSwingConeLimits :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, swingYHalfAngle: float, swingZHalfAngle: float, edgeLength: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawSwingConeLimits";
DebugRenderer_DrawSwingPyramidLimits :: (renderer: *DebugRenderer, matrix: *RMatrix4x4, minSwingYAngle: float, maxSwingYAngle: float, minSwingZAngle: float, maxSwingZAngle: float, edgeLength: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawSwingPyramidLimits";
DebugRenderer_DrawPie :: (renderer: *DebugRenderer, center: *RVec3, radius: float, normal: *Vec3, axis: *Vec3, minAngle: float, maxAngle: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawPie";
DebugRenderer_DrawTaperedCylinder :: (renderer: *DebugRenderer, inMatrix: *RMatrix4x4, top: float, bottom: float, topRadius: float, bottomRadius: float, color: Color, castShadow: DebugRenderer_CastShadow, drawMode: DebugRenderer_DrawMode) -> void #foreign joltc "JPH_DebugRenderer_DrawTaperedCylinder";

/* Skeleton */
SkeletonJoint :: struct {
    name:             *u8;
    parentName:       *u8;
    parentJointIndex: s32;
}

Skeleton_Create :: () -> *Skeleton #foreign joltc "JPH_Skeleton_Create";
Skeleton_Destroy :: (skeleton: *Skeleton) -> void #foreign joltc "JPH_Skeleton_Destroy";

Skeleton_AddJoint :: (skeleton: *Skeleton, name: *u8) -> u32 #foreign joltc "JPH_Skeleton_AddJoint";
Skeleton_AddJoint2 :: (skeleton: *Skeleton, name: *u8, parentIndex: s32) -> u32 #foreign joltc "JPH_Skeleton_AddJoint2";
Skeleton_AddJoint3 :: (skeleton: *Skeleton, name: *u8, parentName: *u8) -> u32 #foreign joltc "JPH_Skeleton_AddJoint3";
Skeleton_GetJointCount :: (skeleton: *Skeleton) -> s32 #foreign joltc "JPH_Skeleton_GetJointCount";
Skeleton_GetJoint :: (skeleton: *Skeleton, index: s32, joint: *SkeletonJoint) -> void #foreign joltc "JPH_Skeleton_GetJoint";
Skeleton_GetJointIndex :: (skeleton: *Skeleton, name: *u8) -> s32 #foreign joltc "JPH_Skeleton_GetJointIndex";
Skeleton_CalculateParentJointIndices :: (skeleton: *Skeleton) -> void #foreign joltc "JPH_Skeleton_CalculateParentJointIndices";
Skeleton_AreJointsCorrectlyOrdered :: (skeleton: *Skeleton) -> bool #foreign joltc "JPH_Skeleton_AreJointsCorrectlyOrdered";

/* Ragdoll */
RagdollSettings_Create :: () -> *RagdollSettings #foreign joltc "JPH_RagdollSettings_Create";
RagdollSettings_Destroy :: (settings: *RagdollSettings) -> void #foreign joltc "JPH_RagdollSettings_Destroy";

RagdollSettings_GetSkeleton :: (character: *RagdollSettings) -> *Skeleton #foreign joltc "JPH_RagdollSettings_GetSkeleton";
RagdollSettings_SetSkeleton :: (character: *RagdollSettings, skeleton: *Skeleton) -> void #foreign joltc "JPH_RagdollSettings_SetSkeleton";
RagdollSettings_Stabilize :: (settings: *RagdollSettings) -> bool #foreign joltc "JPH_RagdollSettings_Stabilize";
RagdollSettings_DisableParentChildCollisions :: (settings: *RagdollSettings, jointMatrices: *Matrix4x4, minSeparationDistance: float) -> void #foreign joltc "JPH_RagdollSettings_DisableParentChildCollisions";
RagdollSettings_CalculateBodyIndexToConstraintIndex :: (settings: *RagdollSettings) -> void #foreign joltc "JPH_RagdollSettings_CalculateBodyIndexToConstraintIndex";
RagdollSettings_GetConstraintIndexForBodyIndex :: (settings: *RagdollSettings, bodyIndex: s32) -> s32 #foreign joltc "JPH_RagdollSettings_GetConstraintIndexForBodyIndex";
RagdollSettings_CalculateConstraintIndexToBodyIdxPair :: (settings: *RagdollSettings) -> void #foreign joltc "JPH_RagdollSettings_CalculateConstraintIndexToBodyIdxPair";

RagdollSettings_CreateRagdoll :: (settings: *RagdollSettings, system: *PhysicsSystem, collisionGroup: CollisionGroupID, userData: u64) -> *Ragdoll #foreign joltc "JPH_RagdollSettings_CreateRagdoll";
Ragdoll_Destroy :: (ragdoll: *Ragdoll) -> void #foreign joltc "JPH_Ragdoll_Destroy";
Ragdoll_AddToPhysicsSystem :: (ragdoll: *Ragdoll, activationMode: Activation, lockBodies: bool) -> void #foreign joltc "JPH_Ragdoll_AddToPhysicsSystem";
Ragdoll_RemoveFromPhysicsSystem :: (ragdoll: *Ragdoll, lockBodies: bool) -> void #foreign joltc "JPH_Ragdoll_RemoveFromPhysicsSystem";
Ragdoll_Activate :: (ragdoll: *Ragdoll, lockBodies: bool) -> void #foreign joltc "JPH_Ragdoll_Activate";
Ragdoll_IsActive :: (ragdoll: *Ragdoll, lockBodies: bool) -> bool #foreign joltc "JPH_Ragdoll_IsActive";
Ragdoll_ResetWarmStart :: (ragdoll: *Ragdoll) -> void #foreign joltc "JPH_Ragdoll_ResetWarmStart";

/* JPH_EstimateCollisionResponse */
EstimateCollisionResponse :: (body1: *Body, body2: *Body, manifold: *ContactManifold, combinedFriction: float, combinedRestitution: float, minVelocityForRestitution: float, numIterations: u32, result: *CollisionEstimationResult) -> void #foreign joltc "JPH_EstimateCollisionResponse";

#scope_file

#import "Basic"; // For assert

joltc :: #library "./windows/dynamic/joltc";

#run {
    {
        info := type_info(Plane);
        for info.members {
            if it.name == {
                case "normal";
                    assert(it.offset_in_bytes == 0, "Plane.normal has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Plane.normal has unexpected size % instead of 12", it.type.runtime_size);
                case "distance";
                    assert(it.offset_in_bytes == 12, "Plane.distance has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Plane.distance has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Plane) == 16, "Plane has size % instead of 16", size_of(Plane));
    }

    {
        info := type_info(AABox);
        for info.members {
            if it.name == {
                case "min";
                    assert(it.offset_in_bytes == 0, "AABox.min has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "AABox.min has unexpected size % instead of 12", it.type.runtime_size);
                case "max";
                    assert(it.offset_in_bytes == 12, "AABox.max has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "AABox.max has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(AABox) == 24, "AABox has size % instead of 24", size_of(AABox));
    }

    {
        info := type_info(Triangle);
        for info.members {
            if it.name == {
                case "v1";
                    assert(it.offset_in_bytes == 0, "Triangle.v1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Triangle.v1 has unexpected size % instead of 12", it.type.runtime_size);
                case "v2";
                    assert(it.offset_in_bytes == 12, "Triangle.v2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Triangle.v2 has unexpected size % instead of 12", it.type.runtime_size);
                case "v3";
                    assert(it.offset_in_bytes == 24, "Triangle.v3 has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "Triangle.v3 has unexpected size % instead of 12", it.type.runtime_size);
                case "materialIndex";
                    assert(it.offset_in_bytes == 36, "Triangle.materialIndex has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "Triangle.materialIndex has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(Triangle) == 40, "Triangle has size % instead of 40", size_of(Triangle));
    }

    {
        info := type_info(IndexedTriangleNoMaterial);
        for info.members {
            if it.name == {
                case "i1";
                    assert(it.offset_in_bytes == 0, "IndexedTriangleNoMaterial.i1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangleNoMaterial.i1 has unexpected size % instead of 4", it.type.runtime_size);
                case "i2";
                    assert(it.offset_in_bytes == 4, "IndexedTriangleNoMaterial.i2 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangleNoMaterial.i2 has unexpected size % instead of 4", it.type.runtime_size);
                case "i3";
                    assert(it.offset_in_bytes == 8, "IndexedTriangleNoMaterial.i3 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangleNoMaterial.i3 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(IndexedTriangleNoMaterial) == 12, "IndexedTriangleNoMaterial has size % instead of 12", size_of(IndexedTriangleNoMaterial));
    }

    {
        info := type_info(IndexedTriangle);
        for info.members {
            if it.name == {
                case "i1";
                    assert(it.offset_in_bytes == 0, "IndexedTriangle.i1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangle.i1 has unexpected size % instead of 4", it.type.runtime_size);
                case "i2";
                    assert(it.offset_in_bytes == 4, "IndexedTriangle.i2 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangle.i2 has unexpected size % instead of 4", it.type.runtime_size);
                case "i3";
                    assert(it.offset_in_bytes == 8, "IndexedTriangle.i3 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangle.i3 has unexpected size % instead of 4", it.type.runtime_size);
                case "materialIndex";
                    assert(it.offset_in_bytes == 12, "IndexedTriangle.materialIndex has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangle.materialIndex has unexpected size % instead of 4", it.type.runtime_size);
                case "userData";
                    assert(it.offset_in_bytes == 16, "IndexedTriangle.userData has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "IndexedTriangle.userData has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(IndexedTriangle) == 20, "IndexedTriangle has size % instead of 20", size_of(IndexedTriangle));
    }

    {
        info := type_info(MassProperties);
        for info.members {
            if it.name == {
                case "mass";
                    assert(it.offset_in_bytes == 0, "MassProperties.mass has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MassProperties.mass has unexpected size % instead of 4", it.type.runtime_size);
                case "inertia";
                    assert(it.offset_in_bytes == 4, "MassProperties.inertia has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 64, "MassProperties.inertia has unexpected size % instead of 64", it.type.runtime_size);
            }
        }
        assert(size_of(MassProperties) == 68, "MassProperties has size % instead of 68", size_of(MassProperties));
    }

    {
        info := type_info(CollideSettingsBase);
        for info.members {
            if it.name == {
                case "activeEdgeMode";
                    assert(it.offset_in_bytes == 0, "CollideSettingsBase.activeEdgeMode has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideSettingsBase.activeEdgeMode has unexpected size % instead of 4", it.type.runtime_size);
                case "collectFacesMode";
                    assert(it.offset_in_bytes == 4, "CollideSettingsBase.collectFacesMode has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideSettingsBase.collectFacesMode has unexpected size % instead of 4", it.type.runtime_size);
                case "collisionTolerance";
                    assert(it.offset_in_bytes == 8, "CollideSettingsBase.collisionTolerance has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideSettingsBase.collisionTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "penetrationTolerance";
                    assert(it.offset_in_bytes == 12, "CollideSettingsBase.penetrationTolerance has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideSettingsBase.penetrationTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "activeEdgeMovementDirection";
                    assert(it.offset_in_bytes == 16, "CollideSettingsBase.activeEdgeMovementDirection has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollideSettingsBase.activeEdgeMovementDirection has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(CollideSettingsBase) == 28, "CollideSettingsBase has size % instead of 28", size_of(CollideSettingsBase));
    }

    {
        info := type_info(CollideShapeSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "CollideShapeSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "CollideShapeSettings.base has unexpected size % instead of 28", it.type.runtime_size);
                case "maxSeparationDistance";
                    assert(it.offset_in_bytes == 28, "CollideShapeSettings.maxSeparationDistance has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeSettings.maxSeparationDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "backFaceMode";
                    assert(it.offset_in_bytes == 32, "CollideShapeSettings.backFaceMode has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeSettings.backFaceMode has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CollideShapeSettings) == 36, "CollideShapeSettings has size % instead of 36", size_of(CollideShapeSettings));
    }

    {
        info := type_info(ShapeCastSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "ShapeCastSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "ShapeCastSettings.base has unexpected size % instead of 28", it.type.runtime_size);
                case "backFaceModeTriangles";
                    assert(it.offset_in_bytes == 28, "ShapeCastSettings.backFaceModeTriangles has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastSettings.backFaceModeTriangles has unexpected size % instead of 4", it.type.runtime_size);
                case "backFaceModeConvex";
                    assert(it.offset_in_bytes == 32, "ShapeCastSettings.backFaceModeConvex has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastSettings.backFaceModeConvex has unexpected size % instead of 4", it.type.runtime_size);
                case "useShrunkenShapeAndConvexRadius";
                    assert(it.offset_in_bytes == 36, "ShapeCastSettings.useShrunkenShapeAndConvexRadius has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "ShapeCastSettings.useShrunkenShapeAndConvexRadius has unexpected size % instead of 1", it.type.runtime_size);
                case "returnDeepestPoint";
                    assert(it.offset_in_bytes == 37, "ShapeCastSettings.returnDeepestPoint has unexpected offset % instead of 37", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "ShapeCastSettings.returnDeepestPoint has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(ShapeCastSettings) == 40, "ShapeCastSettings has size % instead of 40", size_of(ShapeCastSettings));
    }

    {
        info := type_info(RayCastSettings);
        for info.members {
            if it.name == {
                case "backFaceModeTriangles";
                    assert(it.offset_in_bytes == 0, "RayCastSettings.backFaceModeTriangles has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RayCastSettings.backFaceModeTriangles has unexpected size % instead of 4", it.type.runtime_size);
                case "backFaceModeConvex";
                    assert(it.offset_in_bytes == 4, "RayCastSettings.backFaceModeConvex has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RayCastSettings.backFaceModeConvex has unexpected size % instead of 4", it.type.runtime_size);
                case "treatConvexAsSolid";
                    assert(it.offset_in_bytes == 8, "RayCastSettings.treatConvexAsSolid has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "RayCastSettings.treatConvexAsSolid has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(RayCastSettings) == 12, "RayCastSettings has size % instead of 12", size_of(RayCastSettings));
    }

    {
        info := type_info(SpringSettings);
        for info.members {
            if it.name == {
                case "mode";
                    assert(it.offset_in_bytes == 0, "SpringSettings.mode has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SpringSettings.mode has unexpected size % instead of 4", it.type.runtime_size);
                case "frequencyOrStiffness";
                    assert(it.offset_in_bytes == 4, "SpringSettings.frequencyOrStiffness has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SpringSettings.frequencyOrStiffness has unexpected size % instead of 4", it.type.runtime_size);
                case "damping";
                    assert(it.offset_in_bytes == 8, "SpringSettings.damping has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SpringSettings.damping has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SpringSettings) == 12, "SpringSettings has size % instead of 12", size_of(SpringSettings));
    }

    {
        info := type_info(MotorSettings);
        for info.members {
            if it.name == {
                case "springSettings";
                    assert(it.offset_in_bytes == 0, "MotorSettings.springSettings has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "MotorSettings.springSettings has unexpected size % instead of 12", it.type.runtime_size);
                case "minForceLimit";
                    assert(it.offset_in_bytes == 12, "MotorSettings.minForceLimit has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MotorSettings.minForceLimit has unexpected size % instead of 4", it.type.runtime_size);
                case "maxForceLimit";
                    assert(it.offset_in_bytes == 16, "MotorSettings.maxForceLimit has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MotorSettings.maxForceLimit has unexpected size % instead of 4", it.type.runtime_size);
                case "minTorqueLimit";
                    assert(it.offset_in_bytes == 20, "MotorSettings.minTorqueLimit has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MotorSettings.minTorqueLimit has unexpected size % instead of 4", it.type.runtime_size);
                case "maxTorqueLimit";
                    assert(it.offset_in_bytes == 24, "MotorSettings.maxTorqueLimit has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "MotorSettings.maxTorqueLimit has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(MotorSettings) == 28, "MotorSettings has size % instead of 28", size_of(MotorSettings));
    }

    {
        info := type_info(SubShapeIDPair);
        for info.members {
            if it.name == {
                case "Body1ID";
                    assert(it.offset_in_bytes == 0, "SubShapeIDPair.Body1ID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SubShapeIDPair.Body1ID has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID1";
                    assert(it.offset_in_bytes == 4, "SubShapeIDPair.subShapeID1 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SubShapeIDPair.subShapeID1 has unexpected size % instead of 4", it.type.runtime_size);
                case "Body2ID";
                    assert(it.offset_in_bytes == 8, "SubShapeIDPair.Body2ID has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SubShapeIDPair.Body2ID has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 12, "SubShapeIDPair.subShapeID2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SubShapeIDPair.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SubShapeIDPair) == 16, "SubShapeIDPair has size % instead of 16", size_of(SubShapeIDPair));
    }

    {
        info := type_info(BroadPhaseCastResult);
        for info.members {
            if it.name == {
                case "bodyID";
                    assert(it.offset_in_bytes == 0, "BroadPhaseCastResult.bodyID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "BroadPhaseCastResult.bodyID has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 4, "BroadPhaseCastResult.fraction has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "BroadPhaseCastResult.fraction has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(BroadPhaseCastResult) == 8, "BroadPhaseCastResult has size % instead of 8", size_of(BroadPhaseCastResult));
    }

    {
        info := type_info(RayCastResult);
        for info.members {
            if it.name == {
                case "bodyID";
                    assert(it.offset_in_bytes == 0, "RayCastResult.bodyID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RayCastResult.bodyID has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 4, "RayCastResult.fraction has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RayCastResult.fraction has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 8, "RayCastResult.subShapeID2 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "RayCastResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(RayCastResult) == 12, "RayCastResult has size % instead of 12", size_of(RayCastResult));
    }

    {
        info := type_info(CollidePointResult);
        for info.members {
            if it.name == {
                case "bodyID";
                    assert(it.offset_in_bytes == 0, "CollidePointResult.bodyID has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollidePointResult.bodyID has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 4, "CollidePointResult.subShapeID2 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollidePointResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CollidePointResult) == 8, "CollidePointResult has size % instead of 8", size_of(CollidePointResult));
    }

    {
        info := type_info(CollideShapeResult);
        for info.members {
            if it.name == {
                case "contactPointOn1";
                    assert(it.offset_in_bytes == 0, "CollideShapeResult.contactPointOn1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollideShapeResult.contactPointOn1 has unexpected size % instead of 12", it.type.runtime_size);
                case "contactPointOn2";
                    assert(it.offset_in_bytes == 12, "CollideShapeResult.contactPointOn2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollideShapeResult.contactPointOn2 has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationAxis";
                    assert(it.offset_in_bytes == 24, "CollideShapeResult.penetrationAxis has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollideShapeResult.penetrationAxis has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationDepth";
                    assert(it.offset_in_bytes == 36, "CollideShapeResult.penetrationDepth has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeResult.penetrationDepth has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID1";
                    assert(it.offset_in_bytes == 40, "CollideShapeResult.subShapeID1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeResult.subShapeID1 has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 44, "CollideShapeResult.subShapeID2 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyID2";
                    assert(it.offset_in_bytes == 48, "CollideShapeResult.bodyID2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeResult.bodyID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "shape1FaceCount";
                    assert(it.offset_in_bytes == 52, "CollideShapeResult.shape1FaceCount has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeResult.shape1FaceCount has unexpected size % instead of 4", it.type.runtime_size);
                case "shape1Faces";
                    assert(it.offset_in_bytes == 56, "CollideShapeResult.shape1Faces has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CollideShapeResult.shape1Faces has unexpected size % instead of 8", it.type.runtime_size);
                case "shape2FaceCount";
                    assert(it.offset_in_bytes == 64, "CollideShapeResult.shape2FaceCount has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollideShapeResult.shape2FaceCount has unexpected size % instead of 4", it.type.runtime_size);
                case "shape2Faces";
                    assert(it.offset_in_bytes == 72, "CollideShapeResult.shape2Faces has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CollideShapeResult.shape2Faces has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CollideShapeResult) == 80, "CollideShapeResult has size % instead of 80", size_of(CollideShapeResult));
    }

    {
        info := type_info(ShapeCastResult);
        for info.members {
            if it.name == {
                case "contactPointOn1";
                    assert(it.offset_in_bytes == 0, "ShapeCastResult.contactPointOn1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ShapeCastResult.contactPointOn1 has unexpected size % instead of 12", it.type.runtime_size);
                case "contactPointOn2";
                    assert(it.offset_in_bytes == 12, "ShapeCastResult.contactPointOn2 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ShapeCastResult.contactPointOn2 has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationAxis";
                    assert(it.offset_in_bytes == 24, "ShapeCastResult.penetrationAxis has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ShapeCastResult.penetrationAxis has unexpected size % instead of 12", it.type.runtime_size);
                case "penetrationDepth";
                    assert(it.offset_in_bytes == 36, "ShapeCastResult.penetrationDepth has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastResult.penetrationDepth has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID1";
                    assert(it.offset_in_bytes == 40, "ShapeCastResult.subShapeID1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastResult.subShapeID1 has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeID2";
                    assert(it.offset_in_bytes == 44, "ShapeCastResult.subShapeID2 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastResult.subShapeID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyID2";
                    assert(it.offset_in_bytes == 48, "ShapeCastResult.bodyID2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastResult.bodyID2 has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 52, "ShapeCastResult.fraction has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ShapeCastResult.fraction has unexpected size % instead of 4", it.type.runtime_size);
                case "isBackFaceHit";
                    assert(it.offset_in_bytes == 56, "ShapeCastResult.isBackFaceHit has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "ShapeCastResult.isBackFaceHit has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(ShapeCastResult) == 60, "ShapeCastResult has size % instead of 60", size_of(ShapeCastResult));
    }

    {
        info := type_info(DrawSettings);
        for info.members {
            if it.name == {
                case "drawGetSupportFunction";
                    assert(it.offset_in_bytes == 0, "DrawSettings.drawGetSupportFunction has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawGetSupportFunction has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSupportDirection";
                    assert(it.offset_in_bytes == 1, "DrawSettings.drawSupportDirection has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSupportDirection has unexpected size % instead of 1", it.type.runtime_size);
                case "drawGetSupportingFace";
                    assert(it.offset_in_bytes == 2, "DrawSettings.drawGetSupportingFace has unexpected offset % instead of 2", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawGetSupportingFace has unexpected size % instead of 1", it.type.runtime_size);
                case "drawShape";
                    assert(it.offset_in_bytes == 3, "DrawSettings.drawShape has unexpected offset % instead of 3", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawShape has unexpected size % instead of 1", it.type.runtime_size);
                case "drawShapeWireframe";
                    assert(it.offset_in_bytes == 4, "DrawSettings.drawShapeWireframe has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawShapeWireframe has unexpected size % instead of 1", it.type.runtime_size);
                case "drawShapeColor";
                    assert(it.offset_in_bytes == 8, "DrawSettings.drawShapeColor has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DrawSettings.drawShapeColor has unexpected size % instead of 4", it.type.runtime_size);
                case "drawBoundingBox";
                    assert(it.offset_in_bytes == 12, "DrawSettings.drawBoundingBox has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawBoundingBox has unexpected size % instead of 1", it.type.runtime_size);
                case "drawCenterOfMassTransform";
                    assert(it.offset_in_bytes == 13, "DrawSettings.drawCenterOfMassTransform has unexpected offset % instead of 13", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawCenterOfMassTransform has unexpected size % instead of 1", it.type.runtime_size);
                case "drawWorldTransform";
                    assert(it.offset_in_bytes == 14, "DrawSettings.drawWorldTransform has unexpected offset % instead of 14", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawWorldTransform has unexpected size % instead of 1", it.type.runtime_size);
                case "drawVelocity";
                    assert(it.offset_in_bytes == 15, "DrawSettings.drawVelocity has unexpected offset % instead of 15", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawVelocity has unexpected size % instead of 1", it.type.runtime_size);
                case "drawMassAndInertia";
                    assert(it.offset_in_bytes == 16, "DrawSettings.drawMassAndInertia has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawMassAndInertia has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSleepStats";
                    assert(it.offset_in_bytes == 17, "DrawSettings.drawSleepStats has unexpected offset % instead of 17", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSleepStats has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyVertices";
                    assert(it.offset_in_bytes == 18, "DrawSettings.drawSoftBodyVertices has unexpected offset % instead of 18", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyVertices has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyVertexVelocities";
                    assert(it.offset_in_bytes == 19, "DrawSettings.drawSoftBodyVertexVelocities has unexpected offset % instead of 19", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyVertexVelocities has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyEdgeConstraints";
                    assert(it.offset_in_bytes == 20, "DrawSettings.drawSoftBodyEdgeConstraints has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyEdgeConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyBendConstraints";
                    assert(it.offset_in_bytes == 21, "DrawSettings.drawSoftBodyBendConstraints has unexpected offset % instead of 21", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyBendConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyVolumeConstraints";
                    assert(it.offset_in_bytes == 22, "DrawSettings.drawSoftBodyVolumeConstraints has unexpected offset % instead of 22", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyVolumeConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodySkinConstraints";
                    assert(it.offset_in_bytes == 23, "DrawSettings.drawSoftBodySkinConstraints has unexpected offset % instead of 23", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodySkinConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyLRAConstraints";
                    assert(it.offset_in_bytes == 24, "DrawSettings.drawSoftBodyLRAConstraints has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyLRAConstraints has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyPredictedBounds";
                    assert(it.offset_in_bytes == 25, "DrawSettings.drawSoftBodyPredictedBounds has unexpected offset % instead of 25", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "DrawSettings.drawSoftBodyPredictedBounds has unexpected size % instead of 1", it.type.runtime_size);
                case "drawSoftBodyConstraintColor";
                    assert(it.offset_in_bytes == 28, "DrawSettings.drawSoftBodyConstraintColor has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DrawSettings.drawSoftBodyConstraintColor has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(DrawSettings) == 32, "DrawSettings has size % instead of 32", size_of(DrawSettings));
    }

    {
        info := type_info(SupportingFace);
        for info.members {
            if it.name == {
                case "count";
                    assert(it.offset_in_bytes == 0, "SupportingFace.count has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SupportingFace.count has unexpected size % instead of 4", it.type.runtime_size);
                case "vertices";
                    assert(it.offset_in_bytes == 4, "SupportingFace.vertices has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 384, "SupportingFace.vertices has unexpected size % instead of 384", it.type.runtime_size);
            }
        }
        assert(size_of(SupportingFace) == 388, "SupportingFace has size % instead of 388", size_of(SupportingFace));
    }

    {
        info := type_info(CollisionEstimationResultImpulse);
        for info.members {
            if it.name == {
                case "contactImpulse";
                    assert(it.offset_in_bytes == 0, "CollisionEstimationResultImpulse.contactImpulse has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollisionEstimationResultImpulse.contactImpulse has unexpected size % instead of 4", it.type.runtime_size);
                case "frictionImpulse1";
                    assert(it.offset_in_bytes == 4, "CollisionEstimationResultImpulse.frictionImpulse1 has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollisionEstimationResultImpulse.frictionImpulse1 has unexpected size % instead of 4", it.type.runtime_size);
                case "frictionImpulse2";
                    assert(it.offset_in_bytes == 8, "CollisionEstimationResultImpulse.frictionImpulse2 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollisionEstimationResultImpulse.frictionImpulse2 has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CollisionEstimationResultImpulse) == 12, "CollisionEstimationResultImpulse has size % instead of 12", size_of(CollisionEstimationResultImpulse));
    }

    {
        info := type_info(CollisionEstimationResult);
        for info.members {
            if it.name == {
                case "linearVelocity1";
                    assert(it.offset_in_bytes == 0, "CollisionEstimationResult.linearVelocity1 has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollisionEstimationResult.linearVelocity1 has unexpected size % instead of 12", it.type.runtime_size);
                case "angularVelocity1";
                    assert(it.offset_in_bytes == 12, "CollisionEstimationResult.angularVelocity1 has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollisionEstimationResult.angularVelocity1 has unexpected size % instead of 12", it.type.runtime_size);
                case "linearVelocity2";
                    assert(it.offset_in_bytes == 24, "CollisionEstimationResult.linearVelocity2 has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollisionEstimationResult.linearVelocity2 has unexpected size % instead of 12", it.type.runtime_size);
                case "angularVelocity2";
                    assert(it.offset_in_bytes == 36, "CollisionEstimationResult.angularVelocity2 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollisionEstimationResult.angularVelocity2 has unexpected size % instead of 12", it.type.runtime_size);
                case "tangent1";
                    assert(it.offset_in_bytes == 48, "CollisionEstimationResult.tangent1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollisionEstimationResult.tangent1 has unexpected size % instead of 12", it.type.runtime_size);
                case "tangent2";
                    assert(it.offset_in_bytes == 60, "CollisionEstimationResult.tangent2 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CollisionEstimationResult.tangent2 has unexpected size % instead of 12", it.type.runtime_size);
                case "impulseCount";
                    assert(it.offset_in_bytes == 72, "CollisionEstimationResult.impulseCount has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CollisionEstimationResult.impulseCount has unexpected size % instead of 4", it.type.runtime_size);
                case "impulses";
                    assert(it.offset_in_bytes == 80, "CollisionEstimationResult.impulses has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CollisionEstimationResult.impulses has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CollisionEstimationResult) == 88, "CollisionEstimationResult has size % instead of 88", size_of(CollisionEstimationResult));
    }

    {
        info := type_info(ConstraintSettings);
        for info.members {
            if it.name == {
                case "enabled";
                    assert(it.offset_in_bytes == 0, "ConstraintSettings.enabled has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "ConstraintSettings.enabled has unexpected size % instead of 1", it.type.runtime_size);
                case "constraintPriority";
                    assert(it.offset_in_bytes == 4, "ConstraintSettings.constraintPriority has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ConstraintSettings.constraintPriority has unexpected size % instead of 4", it.type.runtime_size);
                case "numVelocityStepsOverride";
                    assert(it.offset_in_bytes == 8, "ConstraintSettings.numVelocityStepsOverride has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ConstraintSettings.numVelocityStepsOverride has unexpected size % instead of 4", it.type.runtime_size);
                case "numPositionStepsOverride";
                    assert(it.offset_in_bytes == 12, "ConstraintSettings.numPositionStepsOverride has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ConstraintSettings.numPositionStepsOverride has unexpected size % instead of 4", it.type.runtime_size);
                case "drawConstraintSize";
                    assert(it.offset_in_bytes == 16, "ConstraintSettings.drawConstraintSize has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ConstraintSettings.drawConstraintSize has unexpected size % instead of 4", it.type.runtime_size);
                case "userData";
                    assert(it.offset_in_bytes == 24, "ConstraintSettings.userData has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ConstraintSettings.userData has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ConstraintSettings) == 32, "ConstraintSettings has size % instead of 32", size_of(ConstraintSettings));
    }

    {
        info := type_info(FixedConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "FixedConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "FixedConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "FixedConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "FixedConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "autoDetectPoint";
                    assert(it.offset_in_bytes == 36, "FixedConstraintSettings.autoDetectPoint has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "FixedConstraintSettings.autoDetectPoint has unexpected size % instead of 1", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 40, "FixedConstraintSettings.point1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "FixedConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX1";
                    assert(it.offset_in_bytes == 52, "FixedConstraintSettings.axisX1 has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "FixedConstraintSettings.axisX1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY1";
                    assert(it.offset_in_bytes == 64, "FixedConstraintSettings.axisY1 has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "FixedConstraintSettings.axisY1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 76, "FixedConstraintSettings.point2 has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "FixedConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX2";
                    assert(it.offset_in_bytes == 88, "FixedConstraintSettings.axisX2 has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "FixedConstraintSettings.axisX2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY2";
                    assert(it.offset_in_bytes == 100, "FixedConstraintSettings.axisY2 has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "FixedConstraintSettings.axisY2 has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(FixedConstraintSettings) == 112, "FixedConstraintSettings has size % instead of 112", size_of(FixedConstraintSettings));
    }

    {
        info := type_info(DistanceConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "DistanceConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "DistanceConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "DistanceConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DistanceConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "DistanceConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "DistanceConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 48, "DistanceConstraintSettings.point2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "DistanceConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "minDistance";
                    assert(it.offset_in_bytes == 60, "DistanceConstraintSettings.minDistance has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DistanceConstraintSettings.minDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "maxDistance";
                    assert(it.offset_in_bytes == 64, "DistanceConstraintSettings.maxDistance has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "DistanceConstraintSettings.maxDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 68, "DistanceConstraintSettings.limitsSpringSettings has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "DistanceConstraintSettings.limitsSpringSettings has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(DistanceConstraintSettings) == 80, "DistanceConstraintSettings has size % instead of 80", size_of(DistanceConstraintSettings));
    }

    {
        info := type_info(PointConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "PointConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "PointConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "PointConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PointConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "PointConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "PointConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 48, "PointConstraintSettings.point2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "PointConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(PointConstraintSettings) == 64, "PointConstraintSettings has size % instead of 64", size_of(PointConstraintSettings));
    }

    {
        info := type_info(HingeConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "HingeConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "HingeConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "HingeConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HingeConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "HingeConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "hingeAxis1";
                    assert(it.offset_in_bytes == 48, "HingeConstraintSettings.hingeAxis1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.hingeAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis1";
                    assert(it.offset_in_bytes == 60, "HingeConstraintSettings.normalAxis1 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.normalAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 72, "HingeConstraintSettings.point2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "hingeAxis2";
                    assert(it.offset_in_bytes == 84, "HingeConstraintSettings.hingeAxis2 has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.hingeAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis2";
                    assert(it.offset_in_bytes == 96, "HingeConstraintSettings.normalAxis2 has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.normalAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "limitsMin";
                    assert(it.offset_in_bytes == 108, "HingeConstraintSettings.limitsMin has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HingeConstraintSettings.limitsMin has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsMax";
                    assert(it.offset_in_bytes == 112, "HingeConstraintSettings.limitsMax has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HingeConstraintSettings.limitsMax has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 116, "HingeConstraintSettings.limitsSpringSettings has unexpected offset % instead of 116", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "HingeConstraintSettings.limitsSpringSettings has unexpected size % instead of 12", it.type.runtime_size);
                case "maxFrictionTorque";
                    assert(it.offset_in_bytes == 128, "HingeConstraintSettings.maxFrictionTorque has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "HingeConstraintSettings.maxFrictionTorque has unexpected size % instead of 4", it.type.runtime_size);
                case "motorSettings";
                    assert(it.offset_in_bytes == 132, "HingeConstraintSettings.motorSettings has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "HingeConstraintSettings.motorSettings has unexpected size % instead of 28", it.type.runtime_size);
            }
        }
        assert(size_of(HingeConstraintSettings) == 160, "HingeConstraintSettings has size % instead of 160", size_of(HingeConstraintSettings));
    }

    {
        info := type_info(SliderConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "SliderConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "SliderConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "SliderConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SliderConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "autoDetectPoint";
                    assert(it.offset_in_bytes == 36, "SliderConstraintSettings.autoDetectPoint has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "SliderConstraintSettings.autoDetectPoint has unexpected size % instead of 1", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 40, "SliderConstraintSettings.point1 has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "sliderAxis1";
                    assert(it.offset_in_bytes == 52, "SliderConstraintSettings.sliderAxis1 has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.sliderAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis1";
                    assert(it.offset_in_bytes == 64, "SliderConstraintSettings.normalAxis1 has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.normalAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 76, "SliderConstraintSettings.point2 has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "sliderAxis2";
                    assert(it.offset_in_bytes == 88, "SliderConstraintSettings.sliderAxis2 has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.sliderAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "normalAxis2";
                    assert(it.offset_in_bytes == 100, "SliderConstraintSettings.normalAxis2 has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.normalAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "limitsMin";
                    assert(it.offset_in_bytes == 112, "SliderConstraintSettings.limitsMin has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SliderConstraintSettings.limitsMin has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsMax";
                    assert(it.offset_in_bytes == 116, "SliderConstraintSettings.limitsMax has unexpected offset % instead of 116", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SliderConstraintSettings.limitsMax has unexpected size % instead of 4", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 120, "SliderConstraintSettings.limitsSpringSettings has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SliderConstraintSettings.limitsSpringSettings has unexpected size % instead of 12", it.type.runtime_size);
                case "maxFrictionForce";
                    assert(it.offset_in_bytes == 132, "SliderConstraintSettings.maxFrictionForce has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SliderConstraintSettings.maxFrictionForce has unexpected size % instead of 4", it.type.runtime_size);
                case "motorSettings";
                    assert(it.offset_in_bytes == 136, "SliderConstraintSettings.motorSettings has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "SliderConstraintSettings.motorSettings has unexpected size % instead of 28", it.type.runtime_size);
            }
        }
        assert(size_of(SliderConstraintSettings) == 168, "SliderConstraintSettings has size % instead of 168", size_of(SliderConstraintSettings));
    }

    {
        info := type_info(ConeConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "ConeConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "ConeConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "ConeConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ConeConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "point1";
                    assert(it.offset_in_bytes == 36, "ConeConstraintSettings.point1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ConeConstraintSettings.point1 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis1";
                    assert(it.offset_in_bytes == 48, "ConeConstraintSettings.twistAxis1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ConeConstraintSettings.twistAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "point2";
                    assert(it.offset_in_bytes == 60, "ConeConstraintSettings.point2 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ConeConstraintSettings.point2 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis2";
                    assert(it.offset_in_bytes == 72, "ConeConstraintSettings.twistAxis2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ConeConstraintSettings.twistAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "halfConeAngle";
                    assert(it.offset_in_bytes == 84, "ConeConstraintSettings.halfConeAngle has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ConeConstraintSettings.halfConeAngle has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(ConeConstraintSettings) == 88, "ConeConstraintSettings has size % instead of 88", size_of(ConeConstraintSettings));
    }

    {
        info := type_info(SwingTwistConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "SwingTwistConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "SwingTwistConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "SwingTwistConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "position1";
                    assert(it.offset_in_bytes == 36, "SwingTwistConstraintSettings.position1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SwingTwistConstraintSettings.position1 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis1";
                    assert(it.offset_in_bytes == 48, "SwingTwistConstraintSettings.twistAxis1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SwingTwistConstraintSettings.twistAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "planeAxis1";
                    assert(it.offset_in_bytes == 60, "SwingTwistConstraintSettings.planeAxis1 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SwingTwistConstraintSettings.planeAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "position2";
                    assert(it.offset_in_bytes == 72, "SwingTwistConstraintSettings.position2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SwingTwistConstraintSettings.position2 has unexpected size % instead of 12", it.type.runtime_size);
                case "twistAxis2";
                    assert(it.offset_in_bytes == 84, "SwingTwistConstraintSettings.twistAxis2 has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SwingTwistConstraintSettings.twistAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "planeAxis2";
                    assert(it.offset_in_bytes == 96, "SwingTwistConstraintSettings.planeAxis2 has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SwingTwistConstraintSettings.planeAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "swingType";
                    assert(it.offset_in_bytes == 108, "SwingTwistConstraintSettings.swingType has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.swingType has unexpected size % instead of 4", it.type.runtime_size);
                case "normalHalfConeAngle";
                    assert(it.offset_in_bytes == 112, "SwingTwistConstraintSettings.normalHalfConeAngle has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.normalHalfConeAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "planeHalfConeAngle";
                    assert(it.offset_in_bytes == 116, "SwingTwistConstraintSettings.planeHalfConeAngle has unexpected offset % instead of 116", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.planeHalfConeAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "twistMinAngle";
                    assert(it.offset_in_bytes == 120, "SwingTwistConstraintSettings.twistMinAngle has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.twistMinAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "twistMaxAngle";
                    assert(it.offset_in_bytes == 124, "SwingTwistConstraintSettings.twistMaxAngle has unexpected offset % instead of 124", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.twistMaxAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "maxFrictionTorque";
                    assert(it.offset_in_bytes == 128, "SwingTwistConstraintSettings.maxFrictionTorque has unexpected offset % instead of 128", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SwingTwistConstraintSettings.maxFrictionTorque has unexpected size % instead of 4", it.type.runtime_size);
                case "swingMotorSettings";
                    assert(it.offset_in_bytes == 132, "SwingTwistConstraintSettings.swingMotorSettings has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "SwingTwistConstraintSettings.swingMotorSettings has unexpected size % instead of 28", it.type.runtime_size);
                case "twistMotorSettings";
                    assert(it.offset_in_bytes == 160, "SwingTwistConstraintSettings.twistMotorSettings has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 28, "SwingTwistConstraintSettings.twistMotorSettings has unexpected size % instead of 28", it.type.runtime_size);
            }
        }
        assert(size_of(SwingTwistConstraintSettings) == 192, "SwingTwistConstraintSettings has size % instead of 192", size_of(SwingTwistConstraintSettings));
    }

    {
        info := type_info(SixDOFConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "SixDOFConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "SixDOFConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "SixDOFConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SixDOFConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "position1";
                    assert(it.offset_in_bytes == 36, "SixDOFConstraintSettings.position1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SixDOFConstraintSettings.position1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX1";
                    assert(it.offset_in_bytes == 48, "SixDOFConstraintSettings.axisX1 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SixDOFConstraintSettings.axisX1 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY1";
                    assert(it.offset_in_bytes == 60, "SixDOFConstraintSettings.axisY1 has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SixDOFConstraintSettings.axisY1 has unexpected size % instead of 12", it.type.runtime_size);
                case "position2";
                    assert(it.offset_in_bytes == 72, "SixDOFConstraintSettings.position2 has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SixDOFConstraintSettings.position2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisX2";
                    assert(it.offset_in_bytes == 84, "SixDOFConstraintSettings.axisX2 has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SixDOFConstraintSettings.axisX2 has unexpected size % instead of 12", it.type.runtime_size);
                case "axisY2";
                    assert(it.offset_in_bytes == 96, "SixDOFConstraintSettings.axisY2 has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "SixDOFConstraintSettings.axisY2 has unexpected size % instead of 12", it.type.runtime_size);
                case "maxFriction";
                    assert(it.offset_in_bytes == 108, "SixDOFConstraintSettings.maxFriction has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "SixDOFConstraintSettings.maxFriction has unexpected size % instead of 24", it.type.runtime_size);
                case "swingType";
                    assert(it.offset_in_bytes == 132, "SixDOFConstraintSettings.swingType has unexpected offset % instead of 132", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SixDOFConstraintSettings.swingType has unexpected size % instead of 4", it.type.runtime_size);
                case "limitMin";
                    assert(it.offset_in_bytes == 136, "SixDOFConstraintSettings.limitMin has unexpected offset % instead of 136", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "SixDOFConstraintSettings.limitMin has unexpected size % instead of 24", it.type.runtime_size);
                case "limitMax";
                    assert(it.offset_in_bytes == 160, "SixDOFConstraintSettings.limitMax has unexpected offset % instead of 160", it.offset_in_bytes);
                    assert(it.type.runtime_size == 24, "SixDOFConstraintSettings.limitMax has unexpected size % instead of 24", it.type.runtime_size);
                case "limitsSpringSettings";
                    assert(it.offset_in_bytes == 184, "SixDOFConstraintSettings.limitsSpringSettings has unexpected offset % instead of 184", it.offset_in_bytes);
                    assert(it.type.runtime_size == 36, "SixDOFConstraintSettings.limitsSpringSettings has unexpected size % instead of 36", it.type.runtime_size);
                case "motorSettings";
                    assert(it.offset_in_bytes == 220, "SixDOFConstraintSettings.motorSettings has unexpected offset % instead of 220", it.offset_in_bytes);
                    assert(it.type.runtime_size == 168, "SixDOFConstraintSettings.motorSettings has unexpected size % instead of 168", it.type.runtime_size);
            }
        }
        assert(size_of(SixDOFConstraintSettings) == 392, "SixDOFConstraintSettings has size % instead of 392", size_of(SixDOFConstraintSettings));
    }

    {
        info := type_info(GearConstraintSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "GearConstraintSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 32, "GearConstraintSettings.base has unexpected size % instead of 32", it.type.runtime_size);
                case "space";
                    assert(it.offset_in_bytes == 32, "GearConstraintSettings.space has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GearConstraintSettings.space has unexpected size % instead of 4", it.type.runtime_size);
                case "hingeAxis1";
                    assert(it.offset_in_bytes == 36, "GearConstraintSettings.hingeAxis1 has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "GearConstraintSettings.hingeAxis1 has unexpected size % instead of 12", it.type.runtime_size);
                case "hingeAxis2";
                    assert(it.offset_in_bytes == 48, "GearConstraintSettings.hingeAxis2 has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "GearConstraintSettings.hingeAxis2 has unexpected size % instead of 12", it.type.runtime_size);
                case "ratio";
                    assert(it.offset_in_bytes == 60, "GearConstraintSettings.ratio has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "GearConstraintSettings.ratio has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(GearConstraintSettings) == 64, "GearConstraintSettings has size % instead of 64", size_of(GearConstraintSettings));
    }

    {
        info := type_info(BodyLockRead);
        for info.members {
            if it.name == {
                case "lockInterface";
                    assert(it.offset_in_bytes == 0, "BodyLockRead.lockInterface has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyLockRead.lockInterface has unexpected size % instead of 8", it.type.runtime_size);
                case "mutex";
                    assert(it.offset_in_bytes == 8, "BodyLockRead.mutex has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyLockRead.mutex has unexpected size % instead of 8", it.type.runtime_size);
                case "body";
                    assert(it.offset_in_bytes == 16, "BodyLockRead.body has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyLockRead.body has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(BodyLockRead) == 24, "BodyLockRead has size % instead of 24", size_of(BodyLockRead));
    }

    {
        info := type_info(BodyLockWrite);
        for info.members {
            if it.name == {
                case "lockInterface";
                    assert(it.offset_in_bytes == 0, "BodyLockWrite.lockInterface has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyLockWrite.lockInterface has unexpected size % instead of 8", it.type.runtime_size);
                case "mutex";
                    assert(it.offset_in_bytes == 8, "BodyLockWrite.mutex has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyLockWrite.mutex has unexpected size % instead of 8", it.type.runtime_size);
                case "body";
                    assert(it.offset_in_bytes == 16, "BodyLockWrite.body has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyLockWrite.body has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(BodyLockWrite) == 24, "BodyLockWrite has size % instead of 24", size_of(BodyLockWrite));
    }

    {
        info := type_info(ExtendedUpdateSettings);
        for info.members {
            if it.name == {
                case "stickToFloorStepDown";
                    assert(it.offset_in_bytes == 0, "ExtendedUpdateSettings.stickToFloorStepDown has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ExtendedUpdateSettings.stickToFloorStepDown has unexpected size % instead of 12", it.type.runtime_size);
                case "walkStairsStepUp";
                    assert(it.offset_in_bytes == 12, "ExtendedUpdateSettings.walkStairsStepUp has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ExtendedUpdateSettings.walkStairsStepUp has unexpected size % instead of 12", it.type.runtime_size);
                case "walkStairsMinStepForward";
                    assert(it.offset_in_bytes == 24, "ExtendedUpdateSettings.walkStairsMinStepForward has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ExtendedUpdateSettings.walkStairsMinStepForward has unexpected size % instead of 4", it.type.runtime_size);
                case "walkStairsStepForwardTest";
                    assert(it.offset_in_bytes == 28, "ExtendedUpdateSettings.walkStairsStepForwardTest has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ExtendedUpdateSettings.walkStairsStepForwardTest has unexpected size % instead of 4", it.type.runtime_size);
                case "walkStairsCosAngleForwardContact";
                    assert(it.offset_in_bytes == 32, "ExtendedUpdateSettings.walkStairsCosAngleForwardContact has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "ExtendedUpdateSettings.walkStairsCosAngleForwardContact has unexpected size % instead of 4", it.type.runtime_size);
                case "walkStairsStepDownExtra";
                    assert(it.offset_in_bytes == 36, "ExtendedUpdateSettings.walkStairsStepDownExtra has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "ExtendedUpdateSettings.walkStairsStepDownExtra has unexpected size % instead of 12", it.type.runtime_size);
            }
        }
        assert(size_of(ExtendedUpdateSettings) == 48, "ExtendedUpdateSettings has size % instead of 48", size_of(ExtendedUpdateSettings));
    }

    {
        info := type_info(CharacterBaseSettings);
        for info.members {
            if it.name == {
                case "up";
                    assert(it.offset_in_bytes == 0, "CharacterBaseSettings.up has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CharacterBaseSettings.up has unexpected size % instead of 12", it.type.runtime_size);
                case "supportingVolume";
                    assert(it.offset_in_bytes == 12, "CharacterBaseSettings.supportingVolume has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 16, "CharacterBaseSettings.supportingVolume has unexpected size % instead of 16", it.type.runtime_size);
                case "maxSlopeAngle";
                    assert(it.offset_in_bytes == 28, "CharacterBaseSettings.maxSlopeAngle has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterBaseSettings.maxSlopeAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "enhancedInternalEdgeRemoval";
                    assert(it.offset_in_bytes == 32, "CharacterBaseSettings.enhancedInternalEdgeRemoval has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterBaseSettings.enhancedInternalEdgeRemoval has unexpected size % instead of 1", it.type.runtime_size);
                case "shape";
                    assert(it.offset_in_bytes == 40, "CharacterBaseSettings.shape has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterBaseSettings.shape has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterBaseSettings) == 48, "CharacterBaseSettings has size % instead of 48", size_of(CharacterBaseSettings));
    }

    {
        info := type_info(CharacterSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "CharacterSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "CharacterSettings.base has unexpected size % instead of 48", it.type.runtime_size);
                case "layer";
                    assert(it.offset_in_bytes == 48, "CharacterSettings.layer has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterSettings.layer has unexpected size % instead of 4", it.type.runtime_size);
                case "mass";
                    assert(it.offset_in_bytes == 52, "CharacterSettings.mass has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterSettings.mass has unexpected size % instead of 4", it.type.runtime_size);
                case "friction";
                    assert(it.offset_in_bytes == 56, "CharacterSettings.friction has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterSettings.friction has unexpected size % instead of 4", it.type.runtime_size);
                case "gravityFactor";
                    assert(it.offset_in_bytes == 60, "CharacterSettings.gravityFactor has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterSettings.gravityFactor has unexpected size % instead of 4", it.type.runtime_size);
                case "allowedDOFs";
                    assert(it.offset_in_bytes == 64, "CharacterSettings.allowedDOFs has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterSettings.allowedDOFs has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterSettings) == 72, "CharacterSettings has size % instead of 72", size_of(CharacterSettings));
    }

    {
        info := type_info(CharacterVirtualSettings);
        for info.members {
            if it.name == {
                case "base";
                    assert(it.offset_in_bytes == 0, "CharacterVirtualSettings.base has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 48, "CharacterVirtualSettings.base has unexpected size % instead of 48", it.type.runtime_size);
                case "ID";
                    assert(it.offset_in_bytes == 48, "CharacterVirtualSettings.ID has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.ID has unexpected size % instead of 4", it.type.runtime_size);
                case "mass";
                    assert(it.offset_in_bytes == 52, "CharacterVirtualSettings.mass has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.mass has unexpected size % instead of 4", it.type.runtime_size);
                case "maxStrength";
                    assert(it.offset_in_bytes == 56, "CharacterVirtualSettings.maxStrength has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.maxStrength has unexpected size % instead of 4", it.type.runtime_size);
                case "shapeOffset";
                    assert(it.offset_in_bytes == 60, "CharacterVirtualSettings.shapeOffset has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CharacterVirtualSettings.shapeOffset has unexpected size % instead of 12", it.type.runtime_size);
                case "backFaceMode";
                    assert(it.offset_in_bytes == 72, "CharacterVirtualSettings.backFaceMode has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.backFaceMode has unexpected size % instead of 4", it.type.runtime_size);
                case "predictiveContactDistance";
                    assert(it.offset_in_bytes == 76, "CharacterVirtualSettings.predictiveContactDistance has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.predictiveContactDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "maxCollisionIterations";
                    assert(it.offset_in_bytes == 80, "CharacterVirtualSettings.maxCollisionIterations has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.maxCollisionIterations has unexpected size % instead of 4", it.type.runtime_size);
                case "maxConstraintIterations";
                    assert(it.offset_in_bytes == 84, "CharacterVirtualSettings.maxConstraintIterations has unexpected offset % instead of 84", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.maxConstraintIterations has unexpected size % instead of 4", it.type.runtime_size);
                case "minTimeRemaining";
                    assert(it.offset_in_bytes == 88, "CharacterVirtualSettings.minTimeRemaining has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.minTimeRemaining has unexpected size % instead of 4", it.type.runtime_size);
                case "collisionTolerance";
                    assert(it.offset_in_bytes == 92, "CharacterVirtualSettings.collisionTolerance has unexpected offset % instead of 92", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.collisionTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "characterPadding";
                    assert(it.offset_in_bytes == 96, "CharacterVirtualSettings.characterPadding has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.characterPadding has unexpected size % instead of 4", it.type.runtime_size);
                case "maxNumHits";
                    assert(it.offset_in_bytes == 100, "CharacterVirtualSettings.maxNumHits has unexpected offset % instead of 100", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.maxNumHits has unexpected size % instead of 4", it.type.runtime_size);
                case "hitReductionCosMaxAngle";
                    assert(it.offset_in_bytes == 104, "CharacterVirtualSettings.hitReductionCosMaxAngle has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.hitReductionCosMaxAngle has unexpected size % instead of 4", it.type.runtime_size);
                case "penetrationRecoverySpeed";
                    assert(it.offset_in_bytes == 108, "CharacterVirtualSettings.penetrationRecoverySpeed has unexpected offset % instead of 108", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.penetrationRecoverySpeed has unexpected size % instead of 4", it.type.runtime_size);
                case "innerBodyShape";
                    assert(it.offset_in_bytes == 112, "CharacterVirtualSettings.innerBodyShape has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVirtualSettings.innerBodyShape has unexpected size % instead of 8", it.type.runtime_size);
                case "innerBodyIDOverride";
                    assert(it.offset_in_bytes == 120, "CharacterVirtualSettings.innerBodyIDOverride has unexpected offset % instead of 120", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.innerBodyIDOverride has unexpected size % instead of 4", it.type.runtime_size);
                case "innerBodyLayer";
                    assert(it.offset_in_bytes == 124, "CharacterVirtualSettings.innerBodyLayer has unexpected offset % instead of 124", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualSettings.innerBodyLayer has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterVirtualSettings) == 128, "CharacterVirtualSettings has size % instead of 128", size_of(CharacterVirtualSettings));
    }

    {
        info := type_info(CharacterContactSettings);
        for info.members {
            if it.name == {
                case "canPushCharacter";
                    assert(it.offset_in_bytes == 0, "CharacterContactSettings.canPushCharacter has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterContactSettings.canPushCharacter has unexpected size % instead of 1", it.type.runtime_size);
                case "canReceiveImpulses";
                    assert(it.offset_in_bytes == 1, "CharacterContactSettings.canReceiveImpulses has unexpected offset % instead of 1", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterContactSettings.canReceiveImpulses has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterContactSettings) == 2, "CharacterContactSettings has size % instead of 2", size_of(CharacterContactSettings));
    }

    {
        info := type_info(CharacterVirtualContact);
        for info.members {
            if it.name == {
                case "hash";
                    assert(it.offset_in_bytes == 0, "CharacterVirtualContact.hash has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVirtualContact.hash has unexpected size % instead of 8", it.type.runtime_size);
                case "bodyB";
                    assert(it.offset_in_bytes == 8, "CharacterVirtualContact.bodyB has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualContact.bodyB has unexpected size % instead of 4", it.type.runtime_size);
                case "characterIDB";
                    assert(it.offset_in_bytes == 12, "CharacterVirtualContact.characterIDB has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualContact.characterIDB has unexpected size % instead of 4", it.type.runtime_size);
                case "subShapeIDB";
                    assert(it.offset_in_bytes == 16, "CharacterVirtualContact.subShapeIDB has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualContact.subShapeIDB has unexpected size % instead of 4", it.type.runtime_size);
                case "position";
                    assert(it.offset_in_bytes == 20, "CharacterVirtualContact.position has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CharacterVirtualContact.position has unexpected size % instead of 12", it.type.runtime_size);
                case "linearVelocity";
                    assert(it.offset_in_bytes == 32, "CharacterVirtualContact.linearVelocity has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CharacterVirtualContact.linearVelocity has unexpected size % instead of 12", it.type.runtime_size);
                case "contactNormal";
                    assert(it.offset_in_bytes == 44, "CharacterVirtualContact.contactNormal has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CharacterVirtualContact.contactNormal has unexpected size % instead of 12", it.type.runtime_size);
                case "surfaceNormal";
                    assert(it.offset_in_bytes == 56, "CharacterVirtualContact.surfaceNormal has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 12, "CharacterVirtualContact.surfaceNormal has unexpected size % instead of 12", it.type.runtime_size);
                case "distance";
                    assert(it.offset_in_bytes == 68, "CharacterVirtualContact.distance has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualContact.distance has unexpected size % instead of 4", it.type.runtime_size);
                case "fraction";
                    assert(it.offset_in_bytes == 72, "CharacterVirtualContact.fraction has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualContact.fraction has unexpected size % instead of 4", it.type.runtime_size);
                case "motionTypeB";
                    assert(it.offset_in_bytes == 76, "CharacterVirtualContact.motionTypeB has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "CharacterVirtualContact.motionTypeB has unexpected size % instead of 4", it.type.runtime_size);
                case "isSensorB";
                    assert(it.offset_in_bytes == 80, "CharacterVirtualContact.isSensorB has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterVirtualContact.isSensorB has unexpected size % instead of 1", it.type.runtime_size);
                case "characterB";
                    assert(it.offset_in_bytes == 88, "CharacterVirtualContact.characterB has unexpected offset % instead of 88", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVirtualContact.characterB has unexpected size % instead of 8", it.type.runtime_size);
                case "userData";
                    assert(it.offset_in_bytes == 96, "CharacterVirtualContact.userData has unexpected offset % instead of 96", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVirtualContact.userData has unexpected size % instead of 8", it.type.runtime_size);
                case "material";
                    assert(it.offset_in_bytes == 104, "CharacterVirtualContact.material has unexpected offset % instead of 104", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVirtualContact.material has unexpected size % instead of 8", it.type.runtime_size);
                case "hadCollision";
                    assert(it.offset_in_bytes == 112, "CharacterVirtualContact.hadCollision has unexpected offset % instead of 112", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterVirtualContact.hadCollision has unexpected size % instead of 1", it.type.runtime_size);
                case "wasDiscarded";
                    assert(it.offset_in_bytes == 113, "CharacterVirtualContact.wasDiscarded has unexpected offset % instead of 113", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterVirtualContact.wasDiscarded has unexpected size % instead of 1", it.type.runtime_size);
                case "canPushCharacter";
                    assert(it.offset_in_bytes == 114, "CharacterVirtualContact.canPushCharacter has unexpected offset % instead of 114", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "CharacterVirtualContact.canPushCharacter has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterVirtualContact) == 120, "CharacterVirtualContact has size % instead of 120", size_of(CharacterVirtualContact));
    }

    {
        info := type_info(JobSystemThreadPoolConfig);
        for info.members {
            if it.name == {
                case "maxJobs";
                    assert(it.offset_in_bytes == 0, "JobSystemThreadPoolConfig.maxJobs has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemThreadPoolConfig.maxJobs has unexpected size % instead of 4", it.type.runtime_size);
                case "maxBarriers";
                    assert(it.offset_in_bytes == 4, "JobSystemThreadPoolConfig.maxBarriers has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemThreadPoolConfig.maxBarriers has unexpected size % instead of 4", it.type.runtime_size);
                case "numThreads";
                    assert(it.offset_in_bytes == 8, "JobSystemThreadPoolConfig.numThreads has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemThreadPoolConfig.numThreads has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JobSystemThreadPoolConfig) == 12, "JobSystemThreadPoolConfig has size % instead of 12", size_of(JobSystemThreadPoolConfig));
    }

    {
        info := type_info(JobSystemConfig);
        for info.members {
            if it.name == {
                case "_context";
                    assert(it.offset_in_bytes == 0, "JobSystemConfig._context has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JobSystemConfig._context has unexpected size % instead of 8", it.type.runtime_size);
                case "queueJob";
                    assert(it.offset_in_bytes == 8, "JobSystemConfig.queueJob has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JobSystemConfig.queueJob has unexpected size % instead of 8", it.type.runtime_size);
                case "queueJobs";
                    assert(it.offset_in_bytes == 16, "JobSystemConfig.queueJobs has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "JobSystemConfig.queueJobs has unexpected size % instead of 8", it.type.runtime_size);
                case "maxConcurrency";
                    assert(it.offset_in_bytes == 24, "JobSystemConfig.maxConcurrency has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemConfig.maxConcurrency has unexpected size % instead of 4", it.type.runtime_size);
                case "maxBarriers";
                    assert(it.offset_in_bytes == 28, "JobSystemConfig.maxBarriers has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "JobSystemConfig.maxBarriers has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(JobSystemConfig) == 32, "JobSystemConfig has size % instead of 32", size_of(JobSystemConfig));
    }

    {
        info := type_info(PhysicsSystemSettings);
        for info.members {
            if it.name == {
                case "maxBodies";
                    assert(it.offset_in_bytes == 0, "PhysicsSystemSettings.maxBodies has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSystemSettings.maxBodies has unexpected size % instead of 4", it.type.runtime_size);
                case "numBodyMutexes";
                    assert(it.offset_in_bytes == 4, "PhysicsSystemSettings.numBodyMutexes has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSystemSettings.numBodyMutexes has unexpected size % instead of 4", it.type.runtime_size);
                case "maxBodyPairs";
                    assert(it.offset_in_bytes == 8, "PhysicsSystemSettings.maxBodyPairs has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSystemSettings.maxBodyPairs has unexpected size % instead of 4", it.type.runtime_size);
                case "maxContactConstraints";
                    assert(it.offset_in_bytes == 12, "PhysicsSystemSettings.maxContactConstraints has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSystemSettings.maxContactConstraints has unexpected size % instead of 4", it.type.runtime_size);
                case "_padding";
                    assert(it.offset_in_bytes == 16, "PhysicsSystemSettings._padding has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSystemSettings._padding has unexpected size % instead of 4", it.type.runtime_size);
                case "broadPhaseLayerInterface";
                    assert(it.offset_in_bytes == 24, "PhysicsSystemSettings.broadPhaseLayerInterface has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PhysicsSystemSettings.broadPhaseLayerInterface has unexpected size % instead of 8", it.type.runtime_size);
                case "objectLayerPairFilter";
                    assert(it.offset_in_bytes == 32, "PhysicsSystemSettings.objectLayerPairFilter has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PhysicsSystemSettings.objectLayerPairFilter has unexpected size % instead of 8", it.type.runtime_size);
                case "objectVsBroadPhaseLayerFilter";
                    assert(it.offset_in_bytes == 40, "PhysicsSystemSettings.objectVsBroadPhaseLayerFilter has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "PhysicsSystemSettings.objectVsBroadPhaseLayerFilter has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(PhysicsSystemSettings) == 48, "PhysicsSystemSettings has size % instead of 48", size_of(PhysicsSystemSettings));
    }

    {
        info := type_info(PhysicsSettings);
        for info.members {
            if it.name == {
                case "maxInFlightBodyPairs";
                    assert(it.offset_in_bytes == 0, "PhysicsSettings.maxInFlightBodyPairs has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.maxInFlightBodyPairs has unexpected size % instead of 4", it.type.runtime_size);
                case "stepListenersBatchSize";
                    assert(it.offset_in_bytes == 4, "PhysicsSettings.stepListenersBatchSize has unexpected offset % instead of 4", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.stepListenersBatchSize has unexpected size % instead of 4", it.type.runtime_size);
                case "stepListenerBatchesPerJob";
                    assert(it.offset_in_bytes == 8, "PhysicsSettings.stepListenerBatchesPerJob has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.stepListenerBatchesPerJob has unexpected size % instead of 4", it.type.runtime_size);
                case "baumgarte";
                    assert(it.offset_in_bytes == 12, "PhysicsSettings.baumgarte has unexpected offset % instead of 12", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.baumgarte has unexpected size % instead of 4", it.type.runtime_size);
                case "speculativeContactDistance";
                    assert(it.offset_in_bytes == 16, "PhysicsSettings.speculativeContactDistance has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.speculativeContactDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "penetrationSlop";
                    assert(it.offset_in_bytes == 20, "PhysicsSettings.penetrationSlop has unexpected offset % instead of 20", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.penetrationSlop has unexpected size % instead of 4", it.type.runtime_size);
                case "linearCastThreshold";
                    assert(it.offset_in_bytes == 24, "PhysicsSettings.linearCastThreshold has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.linearCastThreshold has unexpected size % instead of 4", it.type.runtime_size);
                case "linearCastMaxPenetration";
                    assert(it.offset_in_bytes == 28, "PhysicsSettings.linearCastMaxPenetration has unexpected offset % instead of 28", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.linearCastMaxPenetration has unexpected size % instead of 4", it.type.runtime_size);
                case "manifoldTolerance";
                    assert(it.offset_in_bytes == 32, "PhysicsSettings.manifoldTolerance has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.manifoldTolerance has unexpected size % instead of 4", it.type.runtime_size);
                case "maxPenetrationDistance";
                    assert(it.offset_in_bytes == 36, "PhysicsSettings.maxPenetrationDistance has unexpected offset % instead of 36", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.maxPenetrationDistance has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyPairCacheMaxDeltaPositionSq";
                    assert(it.offset_in_bytes == 40, "PhysicsSettings.bodyPairCacheMaxDeltaPositionSq has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.bodyPairCacheMaxDeltaPositionSq has unexpected size % instead of 4", it.type.runtime_size);
                case "bodyPairCacheCosMaxDeltaRotationDiv2";
                    assert(it.offset_in_bytes == 44, "PhysicsSettings.bodyPairCacheCosMaxDeltaRotationDiv2 has unexpected offset % instead of 44", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.bodyPairCacheCosMaxDeltaRotationDiv2 has unexpected size % instead of 4", it.type.runtime_size);
                case "contactNormalCosMaxDeltaRotation";
                    assert(it.offset_in_bytes == 48, "PhysicsSettings.contactNormalCosMaxDeltaRotation has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.contactNormalCosMaxDeltaRotation has unexpected size % instead of 4", it.type.runtime_size);
                case "contactPointPreserveLambdaMaxDistSq";
                    assert(it.offset_in_bytes == 52, "PhysicsSettings.contactPointPreserveLambdaMaxDistSq has unexpected offset % instead of 52", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.contactPointPreserveLambdaMaxDistSq has unexpected size % instead of 4", it.type.runtime_size);
                case "numVelocitySteps";
                    assert(it.offset_in_bytes == 56, "PhysicsSettings.numVelocitySteps has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.numVelocitySteps has unexpected size % instead of 4", it.type.runtime_size);
                case "numPositionSteps";
                    assert(it.offset_in_bytes == 60, "PhysicsSettings.numPositionSteps has unexpected offset % instead of 60", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.numPositionSteps has unexpected size % instead of 4", it.type.runtime_size);
                case "minVelocityForRestitution";
                    assert(it.offset_in_bytes == 64, "PhysicsSettings.minVelocityForRestitution has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.minVelocityForRestitution has unexpected size % instead of 4", it.type.runtime_size);
                case "timeBeforeSleep";
                    assert(it.offset_in_bytes == 68, "PhysicsSettings.timeBeforeSleep has unexpected offset % instead of 68", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.timeBeforeSleep has unexpected size % instead of 4", it.type.runtime_size);
                case "pointVelocitySleepThreshold";
                    assert(it.offset_in_bytes == 72, "PhysicsSettings.pointVelocitySleepThreshold has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "PhysicsSettings.pointVelocitySleepThreshold has unexpected size % instead of 4", it.type.runtime_size);
                case "deterministicSimulation";
                    assert(it.offset_in_bytes == 76, "PhysicsSettings.deterministicSimulation has unexpected offset % instead of 76", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.deterministicSimulation has unexpected size % instead of 1", it.type.runtime_size);
                case "constraintWarmStart";
                    assert(it.offset_in_bytes == 77, "PhysicsSettings.constraintWarmStart has unexpected offset % instead of 77", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.constraintWarmStart has unexpected size % instead of 1", it.type.runtime_size);
                case "useBodyPairContactCache";
                    assert(it.offset_in_bytes == 78, "PhysicsSettings.useBodyPairContactCache has unexpected offset % instead of 78", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.useBodyPairContactCache has unexpected size % instead of 1", it.type.runtime_size);
                case "useManifoldReduction";
                    assert(it.offset_in_bytes == 79, "PhysicsSettings.useManifoldReduction has unexpected offset % instead of 79", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.useManifoldReduction has unexpected size % instead of 1", it.type.runtime_size);
                case "useLargeIslandSplitter";
                    assert(it.offset_in_bytes == 80, "PhysicsSettings.useLargeIslandSplitter has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.useLargeIslandSplitter has unexpected size % instead of 1", it.type.runtime_size);
                case "allowSleeping";
                    assert(it.offset_in_bytes == 81, "PhysicsSettings.allowSleeping has unexpected offset % instead of 81", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.allowSleeping has unexpected size % instead of 1", it.type.runtime_size);
                case "checkActiveEdges";
                    assert(it.offset_in_bytes == 82, "PhysicsSettings.checkActiveEdges has unexpected offset % instead of 82", it.offset_in_bytes);
                    assert(it.type.runtime_size == 1, "PhysicsSettings.checkActiveEdges has unexpected size % instead of 1", it.type.runtime_size);
            }
        }
        assert(size_of(PhysicsSettings) == 84, "PhysicsSettings has size % instead of 84", size_of(PhysicsSettings));
    }

    {
        info := type_info(BroadPhaseLayerFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "BroadPhaseLayerFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BroadPhaseLayerFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(BroadPhaseLayerFilter_Procs) == 8, "BroadPhaseLayerFilter_Procs has size % instead of 8", size_of(BroadPhaseLayerFilter_Procs));
    }

    {
        info := type_info(ObjectLayerFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "ObjectLayerFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ObjectLayerFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ObjectLayerFilter_Procs) == 8, "ObjectLayerFilter_Procs has size % instead of 8", size_of(ObjectLayerFilter_Procs));
    }

    {
        info := type_info(BodyFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "BodyFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
                case "ShouldCollideLocked";
                    assert(it.offset_in_bytes == 8, "BodyFilter_Procs.ShouldCollideLocked has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyFilter_Procs.ShouldCollideLocked has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(BodyFilter_Procs) == 16, "BodyFilter_Procs has size % instead of 16", size_of(BodyFilter_Procs));
    }

    {
        info := type_info(ShapeFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "ShapeFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ShapeFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
                case "ShouldCollide2";
                    assert(it.offset_in_bytes == 8, "ShapeFilter_Procs.ShouldCollide2 has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ShapeFilter_Procs.ShouldCollide2 has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ShapeFilter_Procs) == 16, "ShapeFilter_Procs has size % instead of 16", size_of(ShapeFilter_Procs));
    }

    {
        info := type_info(SimShapeFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldCollide";
                    assert(it.offset_in_bytes == 0, "SimShapeFilter_Procs.ShouldCollide has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SimShapeFilter_Procs.ShouldCollide has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(SimShapeFilter_Procs) == 8, "SimShapeFilter_Procs has size % instead of 8", size_of(SimShapeFilter_Procs));
    }

    {
        info := type_info(ContactListener_Procs);
        for info.members {
            if it.name == {
                case "OnContactValidate";
                    assert(it.offset_in_bytes == 0, "ContactListener_Procs.OnContactValidate has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ContactListener_Procs.OnContactValidate has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactAdded";
                    assert(it.offset_in_bytes == 8, "ContactListener_Procs.OnContactAdded has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ContactListener_Procs.OnContactAdded has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactPersisted";
                    assert(it.offset_in_bytes == 16, "ContactListener_Procs.OnContactPersisted has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ContactListener_Procs.OnContactPersisted has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactRemoved";
                    assert(it.offset_in_bytes == 24, "ContactListener_Procs.OnContactRemoved has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "ContactListener_Procs.OnContactRemoved has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(ContactListener_Procs) == 32, "ContactListener_Procs has size % instead of 32", size_of(ContactListener_Procs));
    }

    {
        info := type_info(BodyActivationListener_Procs);
        for info.members {
            if it.name == {
                case "OnBodyActivated";
                    assert(it.offset_in_bytes == 0, "BodyActivationListener_Procs.OnBodyActivated has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyActivationListener_Procs.OnBodyActivated has unexpected size % instead of 8", it.type.runtime_size);
                case "OnBodyDeactivated";
                    assert(it.offset_in_bytes == 8, "BodyActivationListener_Procs.OnBodyDeactivated has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyActivationListener_Procs.OnBodyDeactivated has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(BodyActivationListener_Procs) == 16, "BodyActivationListener_Procs has size % instead of 16", size_of(BodyActivationListener_Procs));
    }

    {
        info := type_info(BodyDrawFilter_Procs);
        for info.members {
            if it.name == {
                case "ShouldDraw";
                    assert(it.offset_in_bytes == 0, "BodyDrawFilter_Procs.ShouldDraw has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "BodyDrawFilter_Procs.ShouldDraw has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(BodyDrawFilter_Procs) == 8, "BodyDrawFilter_Procs has size % instead of 8", size_of(BodyDrawFilter_Procs));
    }

    {
        info := type_info(CharacterContactListener_Procs);
        for info.members {
            if it.name == {
                case "OnAdjustBodyVelocity";
                    assert(it.offset_in_bytes == 0, "CharacterContactListener_Procs.OnAdjustBodyVelocity has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnAdjustBodyVelocity has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactValidate";
                    assert(it.offset_in_bytes == 8, "CharacterContactListener_Procs.OnContactValidate has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnContactValidate has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactValidate";
                    assert(it.offset_in_bytes == 16, "CharacterContactListener_Procs.OnCharacterContactValidate has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnCharacterContactValidate has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactAdded";
                    assert(it.offset_in_bytes == 24, "CharacterContactListener_Procs.OnContactAdded has unexpected offset % instead of 24", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnContactAdded has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactPersisted";
                    assert(it.offset_in_bytes == 32, "CharacterContactListener_Procs.OnContactPersisted has unexpected offset % instead of 32", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnContactPersisted has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactRemoved";
                    assert(it.offset_in_bytes == 40, "CharacterContactListener_Procs.OnContactRemoved has unexpected offset % instead of 40", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnContactRemoved has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactAdded";
                    assert(it.offset_in_bytes == 48, "CharacterContactListener_Procs.OnCharacterContactAdded has unexpected offset % instead of 48", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnCharacterContactAdded has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactPersisted";
                    assert(it.offset_in_bytes == 56, "CharacterContactListener_Procs.OnCharacterContactPersisted has unexpected offset % instead of 56", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnCharacterContactPersisted has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactRemoved";
                    assert(it.offset_in_bytes == 64, "CharacterContactListener_Procs.OnCharacterContactRemoved has unexpected offset % instead of 64", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnCharacterContactRemoved has unexpected size % instead of 8", it.type.runtime_size);
                case "OnContactSolve";
                    assert(it.offset_in_bytes == 72, "CharacterContactListener_Procs.OnContactSolve has unexpected offset % instead of 72", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnContactSolve has unexpected size % instead of 8", it.type.runtime_size);
                case "OnCharacterContactSolve";
                    assert(it.offset_in_bytes == 80, "CharacterContactListener_Procs.OnCharacterContactSolve has unexpected offset % instead of 80", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterContactListener_Procs.OnCharacterContactSolve has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterContactListener_Procs) == 88, "CharacterContactListener_Procs has size % instead of 88", size_of(CharacterContactListener_Procs));
    }

    {
        info := type_info(CharacterVsCharacterCollision_Procs);
        for info.members {
            if it.name == {
                case "CollideCharacter";
                    assert(it.offset_in_bytes == 0, "CharacterVsCharacterCollision_Procs.CollideCharacter has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVsCharacterCollision_Procs.CollideCharacter has unexpected size % instead of 8", it.type.runtime_size);
                case "CastCharacter";
                    assert(it.offset_in_bytes == 8, "CharacterVsCharacterCollision_Procs.CastCharacter has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "CharacterVsCharacterCollision_Procs.CastCharacter has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(CharacterVsCharacterCollision_Procs) == 16, "CharacterVsCharacterCollision_Procs has size % instead of 16", size_of(CharacterVsCharacterCollision_Procs));
    }

    {
        info := type_info(DebugRenderer_Procs);
        for info.members {
            if it.name == {
                case "DrawLine";
                    assert(it.offset_in_bytes == 0, "DebugRenderer_Procs.DrawLine has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "DebugRenderer_Procs.DrawLine has unexpected size % instead of 8", it.type.runtime_size);
                case "DrawTriangle";
                    assert(it.offset_in_bytes == 8, "DebugRenderer_Procs.DrawTriangle has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "DebugRenderer_Procs.DrawTriangle has unexpected size % instead of 8", it.type.runtime_size);
                case "DrawText3D";
                    assert(it.offset_in_bytes == 16, "DebugRenderer_Procs.DrawText3D has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "DebugRenderer_Procs.DrawText3D has unexpected size % instead of 8", it.type.runtime_size);
            }
        }
        assert(size_of(DebugRenderer_Procs) == 24, "DebugRenderer_Procs has size % instead of 24", size_of(DebugRenderer_Procs));
    }

    {
        info := type_info(SkeletonJoint);
        for info.members {
            if it.name == {
                case "name";
                    assert(it.offset_in_bytes == 0, "SkeletonJoint.name has unexpected offset % instead of 0", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SkeletonJoint.name has unexpected size % instead of 8", it.type.runtime_size);
                case "parentName";
                    assert(it.offset_in_bytes == 8, "SkeletonJoint.parentName has unexpected offset % instead of 8", it.offset_in_bytes);
                    assert(it.type.runtime_size == 8, "SkeletonJoint.parentName has unexpected size % instead of 8", it.type.runtime_size);
                case "parentJointIndex";
                    assert(it.offset_in_bytes == 16, "SkeletonJoint.parentJointIndex has unexpected offset % instead of 16", it.offset_in_bytes);
                    assert(it.type.runtime_size == 4, "SkeletonJoint.parentJointIndex has unexpected size % instead of 4", it.type.runtime_size);
            }
        }
        assert(size_of(SkeletonJoint) == 24, "SkeletonJoint has size % instead of 24", size_of(SkeletonJoint));
    }
}

