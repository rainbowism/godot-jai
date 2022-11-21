//
// This file was auto-generated using the following command:
//
// jai
//
size_t  :: u64;
wchar_t :: u16;



char32_t :: u32;
char16_t :: u16;

/* VARIANT TYPES */
GDNativeVariantType :: enum s32 {
    NIL                  :: 0;

    BOOL                 :: 1;
    INT                  :: 2;
    FLOAT                :: 3;
    STRING               :: 4;

    VECTOR2              :: 5;
    VECTOR2I             :: 6;
    RECT2                :: 7;
    RECT2I               :: 8;
    VECTOR3              :: 9;
    VECTOR3I             :: 10;
    TRANSFORM2D          :: 11;
    VECTOR4              :: 12;
    VECTOR4I             :: 13;
    PLANE                :: 14;
    QUATERNION           :: 15;
    AABB                 :: 16;
    BASIS                :: 17;
    TRANSFORM3D          :: 18;
    PROJECTION           :: 19;

    COLOR                :: 20;
    STRING_NAME          :: 21;
    NODE_PATH            :: 22;
    RID                  :: 23;
    OBJECT               :: 24;
    CALLABLE             :: 25;
    SIGNAL               :: 26;
    DICTIONARY           :: 27;
    ARRAY                :: 28;

    PACKED_BYTE_ARRAY    :: 29;
    PACKED_INT32_ARRAY   :: 30;
    PACKED_INT64_ARRAY   :: 31;
    PACKED_FLOAT32_ARRAY :: 32;
    PACKED_FLOAT64_ARRAY :: 33;
    PACKED_STRING_ARRAY  :: 34;
    PACKED_VECTOR2_ARRAY :: 35;
    PACKED_VECTOR3_ARRAY :: 36;
    PACKED_COLOR_ARRAY   :: 37;

    VARIANT_MAX          :: 38;

    GDNATIVE_VARIANT_TYPE_NIL                  :: NIL;

    GDNATIVE_VARIANT_TYPE_BOOL                 :: BOOL;
    GDNATIVE_VARIANT_TYPE_INT                  :: INT;
    GDNATIVE_VARIANT_TYPE_FLOAT                :: FLOAT;
    GDNATIVE_VARIANT_TYPE_STRING               :: STRING;

    GDNATIVE_VARIANT_TYPE_VECTOR2              :: VECTOR2;
    GDNATIVE_VARIANT_TYPE_VECTOR2I             :: VECTOR2I;
    GDNATIVE_VARIANT_TYPE_RECT2                :: RECT2;
    GDNATIVE_VARIANT_TYPE_RECT2I               :: RECT2I;
    GDNATIVE_VARIANT_TYPE_VECTOR3              :: VECTOR3;
    GDNATIVE_VARIANT_TYPE_VECTOR3I             :: VECTOR3I;
    GDNATIVE_VARIANT_TYPE_TRANSFORM2D          :: TRANSFORM2D;
    GDNATIVE_VARIANT_TYPE_VECTOR4              :: VECTOR4;
    GDNATIVE_VARIANT_TYPE_VECTOR4I             :: VECTOR4I;
    GDNATIVE_VARIANT_TYPE_PLANE                :: PLANE;
    GDNATIVE_VARIANT_TYPE_QUATERNION           :: QUATERNION;
    GDNATIVE_VARIANT_TYPE_AABB                 :: AABB;
    GDNATIVE_VARIANT_TYPE_BASIS                :: BASIS;
    GDNATIVE_VARIANT_TYPE_TRANSFORM3D          :: TRANSFORM3D;
    GDNATIVE_VARIANT_TYPE_PROJECTION           :: PROJECTION;

    GDNATIVE_VARIANT_TYPE_COLOR                :: COLOR;
    GDNATIVE_VARIANT_TYPE_STRING_NAME          :: STRING_NAME;
    GDNATIVE_VARIANT_TYPE_NODE_PATH            :: NODE_PATH;
    GDNATIVE_VARIANT_TYPE_RID                  :: RID;
    GDNATIVE_VARIANT_TYPE_OBJECT               :: OBJECT;
    GDNATIVE_VARIANT_TYPE_CALLABLE             :: CALLABLE;
    GDNATIVE_VARIANT_TYPE_SIGNAL               :: SIGNAL;
    GDNATIVE_VARIANT_TYPE_DICTIONARY           :: DICTIONARY;
    GDNATIVE_VARIANT_TYPE_ARRAY                :: ARRAY;

    GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY    :: PACKED_BYTE_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY   :: PACKED_INT32_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY   :: PACKED_INT64_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY :: PACKED_FLOAT32_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY :: PACKED_FLOAT64_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY  :: PACKED_STRING_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY :: PACKED_VECTOR2_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY :: PACKED_VECTOR3_ARRAY;
    GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY   :: PACKED_COLOR_ARRAY;

    GDNATIVE_VARIANT_TYPE_VARIANT_MAX          :: VARIANT_MAX;
}

GDNativeVariantOperator :: enum s32 {
    EQUAL         :: 0;
    NOT_EQUAL     :: 1;
    LESS          :: 2;
    LESS_EQUAL    :: 3;
    GREATER       :: 4;
    GREATER_EQUAL :: 5;

    ADD           :: 6;
    SUBTRACT      :: 7;
    MULTIPLY      :: 8;
    DIVIDE        :: 9;
    NEGATE        :: 10;
    POSITIVE      :: 11;
    MODULE        :: 12;
    POWER         :: 13;

    SHIFT_LEFT    :: 14;
    SHIFT_RIGHT   :: 15;
    BIT_AND       :: 16;
    BIT_OR        :: 17;
    BIT_XOR       :: 18;
    BIT_NEGATE    :: 19;

    AND           :: 20;
    OR            :: 21;
    XOR           :: 22;
    NOT           :: 23;

    IN            :: 24;
    MAX           :: 25;

    GDNATIVE_VARIANT_OP_EQUAL         :: EQUAL;
    GDNATIVE_VARIANT_OP_NOT_EQUAL     :: NOT_EQUAL;
    GDNATIVE_VARIANT_OP_LESS          :: LESS;
    GDNATIVE_VARIANT_OP_LESS_EQUAL    :: LESS_EQUAL;
    GDNATIVE_VARIANT_OP_GREATER       :: GREATER;
    GDNATIVE_VARIANT_OP_GREATER_EQUAL :: GREATER_EQUAL;

    GDNATIVE_VARIANT_OP_ADD           :: ADD;
    GDNATIVE_VARIANT_OP_SUBTRACT      :: SUBTRACT;
    GDNATIVE_VARIANT_OP_MULTIPLY      :: MULTIPLY;
    GDNATIVE_VARIANT_OP_DIVIDE        :: DIVIDE;
    GDNATIVE_VARIANT_OP_NEGATE        :: NEGATE;
    GDNATIVE_VARIANT_OP_POSITIVE      :: POSITIVE;
    GDNATIVE_VARIANT_OP_MODULE        :: MODULE;
    GDNATIVE_VARIANT_OP_POWER         :: POWER;

    GDNATIVE_VARIANT_OP_SHIFT_LEFT    :: SHIFT_LEFT;
    GDNATIVE_VARIANT_OP_SHIFT_RIGHT   :: SHIFT_RIGHT;
    GDNATIVE_VARIANT_OP_BIT_AND       :: BIT_AND;
    GDNATIVE_VARIANT_OP_BIT_OR        :: BIT_OR;
    GDNATIVE_VARIANT_OP_BIT_XOR       :: BIT_XOR;
    GDNATIVE_VARIANT_OP_BIT_NEGATE    :: BIT_NEGATE;

    GDNATIVE_VARIANT_OP_AND           :: AND;
    GDNATIVE_VARIANT_OP_OR            :: OR;
    GDNATIVE_VARIANT_OP_XOR           :: XOR;
    GDNATIVE_VARIANT_OP_NOT           :: NOT;

    GDNATIVE_VARIANT_OP_IN            :: IN;
    GDNATIVE_VARIANT_OP_MAX           :: MAX;
}

GDNativeVariantPtr :: *void;
GDNativeStringNamePtr :: *void;
GDNativeStringPtr :: *void;
GDNativeObjectPtr :: *void;
GDNativeTypePtr :: *void;
GDNativeExtensionPtr :: *void;
GDNativeMethodBindPtr :: *void;
GDNativeInt :: s64;
GDNativeBool :: u8;
GDObjectInstanceID :: u64;

/* VARIANT DATA I/O */
GDNativeCallErrorType :: enum s32 {
    OK                       :: 0;
    ERROR_INVALID_METHOD     :: 1;
    ERROR_INVALID_ARGUMENT   :: 2;
    ERROR_TOO_MANY_ARGUMENTS :: 3;
    ERROR_TOO_FEW_ARGUMENTS  :: 4;
    ERROR_INSTANCE_IS_NULL   :: 5;
    ERROR_METHOD_NOT_CONST   :: 6;

    GDNATIVE_CALL_OK                       :: OK;
    GDNATIVE_CALL_ERROR_INVALID_METHOD     :: ERROR_INVALID_METHOD;
    GDNATIVE_CALL_ERROR_INVALID_ARGUMENT   :: ERROR_INVALID_ARGUMENT;
    GDNATIVE_CALL_ERROR_TOO_MANY_ARGUMENTS :: ERROR_TOO_MANY_ARGUMENTS;
    GDNATIVE_CALL_ERROR_TOO_FEW_ARGUMENTS  :: ERROR_TOO_FEW_ARGUMENTS;
    GDNATIVE_CALL_ERROR_INSTANCE_IS_NULL   :: ERROR_INSTANCE_IS_NULL;
    GDNATIVE_CALL_ERROR_METHOD_NOT_CONST   :: ERROR_METHOD_NOT_CONST;
}

GDNativeCallError :: struct {
    error:    GDNativeCallErrorType;
    argument: s32;
    expected: s32;
}

GDNativeVariantFromTypeConstructorFunc :: #type (unknown0: GDNativeVariantPtr, unknown1: GDNativeTypePtr) -> void #c_call;
GDNativeTypeFromVariantConstructorFunc :: #type (unknown0: GDNativeTypePtr, unknown1: GDNativeVariantPtr) -> void #c_call;
GDNativePtrOperatorEvaluator :: #type (p_left: GDNativeTypePtr, p_right: GDNativeTypePtr, r_result: GDNativeTypePtr) -> void #c_call;
GDNativePtrBuiltInMethod :: #type (p_base: GDNativeTypePtr, p_args: *GDNativeTypePtr, r_return: GDNativeTypePtr, p_argument_count: s32) -> void #c_call;
GDNativePtrConstructor :: #type (p_base: GDNativeTypePtr, p_args: *GDNativeTypePtr) -> void #c_call;
GDNativePtrDestructor :: #type (p_base: GDNativeTypePtr) -> void #c_call;
GDNativePtrSetter :: #type (p_base: GDNativeTypePtr, p_value: GDNativeTypePtr) -> void #c_call;
GDNativePtrGetter :: #type (p_base: GDNativeTypePtr, r_value: GDNativeTypePtr) -> void #c_call;
GDNativePtrIndexedSetter :: #type (p_base: GDNativeTypePtr, p_index: GDNativeInt, p_value: GDNativeTypePtr) -> void #c_call;
GDNativePtrIndexedGetter :: #type (p_base: GDNativeTypePtr, p_index: GDNativeInt, r_value: GDNativeTypePtr) -> void #c_call;
GDNativePtrKeyedSetter :: #type (p_base: GDNativeTypePtr, p_key: GDNativeTypePtr, p_value: GDNativeTypePtr) -> void #c_call;
GDNativePtrKeyedGetter :: #type (p_base: GDNativeTypePtr, p_key: GDNativeTypePtr, r_value: GDNativeTypePtr) -> void #c_call;
GDNativePtrKeyedChecker :: #type (p_base: GDNativeVariantPtr, p_key: GDNativeVariantPtr) -> u32 #c_call;
GDNativePtrUtilityFunction :: #type (r_return: GDNativeTypePtr, p_arguments: *GDNativeTypePtr, p_argument_count: s32) -> void #c_call;

GDNativeInstanceBindingCreateCallback :: #type (p_token: *void, p_instance: *void) -> *void #c_call;
GDNativeInstanceBindingFreeCallback :: #type (p_token: *void, p_instance: *void, p_binding: *void) -> void #c_call;
GDNativeInstanceBindingReferenceCallback :: #type (p_token: *void, p_binding: *void, p_reference: GDNativeBool) -> GDNativeBool #c_call;

GDNativeInstanceBindingCallbacks :: struct {
    create_callback:    GDNativeInstanceBindingCreateCallback;
    free_callback:      GDNativeInstanceBindingFreeCallback;
    reference_callback: GDNativeInstanceBindingReferenceCallback;
}

/* EXTENSION CLASSES */
GDExtensionClassInstancePtr :: *void;

GDNativeExtensionClassSet :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDNativeStringNamePtr, p_value: GDNativeVariantPtr) -> GDNativeBool #c_call;
GDNativeExtensionClassGet :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDNativeStringNamePtr, r_ret: GDNativeVariantPtr) -> GDNativeBool #c_call;
GDNativeExtensionClassGetRID :: #type (p_instance: GDExtensionClassInstancePtr) -> u64 #c_call;

GDNativePropertyInfo :: struct {
    type:        GDNativeVariantType;
    name:        GDNativeStringNamePtr;
    class_name:  GDNativeStringNamePtr;
    hint:        u32; // Bitfield of `PropertyHint` (defined in `extension_api.json`).
    hint_string: GDNativeStringPtr;
    usage:       u32; // Bitfield of `PropertyUsageFlags` (defined in `extension_api.json`).
}

GDNativeMethodInfo :: struct {
    name:                   GDNativeStringNamePtr;
    return_value:           GDNativePropertyInfo;
    flags:                  u32; // Bitfield of `GDNativeExtensionClassMethodFlags`.
    id:                     s32;

    /* Arguments: `default_arguments` is an array of size `argument_count`. */
    argument_count:         u32;
    arguments:              *GDNativePropertyInfo;

    /* Default arguments: `default_arguments` is an array of size `default_argument_count`. */
    default_argument_count: u32;
    default_arguments:      *GDNativeVariantPtr;
}

GDNativeExtensionClassGetPropertyList :: #type (p_instance: GDExtensionClassInstancePtr, r_count: *u32) -> *GDNativePropertyInfo #c_call;
GDNativeExtensionClassFreePropertyList :: #type (p_instance: GDExtensionClassInstancePtr, p_list: *GDNativePropertyInfo) -> void #c_call;
GDNativeExtensionClassPropertyCanRevert :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDNativeStringNamePtr) -> GDNativeBool #c_call;
GDNativeExtensionClassPropertyGetRevert :: #type (p_instance: GDExtensionClassInstancePtr, p_name: GDNativeStringNamePtr, r_ret: GDNativeVariantPtr) -> GDNativeBool #c_call;
GDNativeExtensionClassNotification :: #type (p_instance: GDExtensionClassInstancePtr, p_what: s32) -> void #c_call;
GDNativeExtensionClassToString :: #type (p_instance: GDExtensionClassInstancePtr, r_is_valid: *GDNativeBool, p_out: GDNativeStringPtr) -> void #c_call;
GDNativeExtensionClassReference :: #type (p_instance: GDExtensionClassInstancePtr) -> void #c_call;
GDNativeExtensionClassUnreference :: #type (p_instance: GDExtensionClassInstancePtr) -> void #c_call;
GDNativeExtensionClassCallVirtual :: #type (p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeTypePtr, r_ret: GDNativeTypePtr) -> void #c_call;
GDNativeExtensionClassCreateInstance :: #type (p_userdata: *void) -> GDNativeObjectPtr #c_call;
GDNativeExtensionClassFreeInstance :: #type (p_userdata: *void, p_instance: GDExtensionClassInstancePtr) -> void #c_call;
GDNativeExtensionClassGetVirtual :: #type (p_userdata: *void, p_name: GDNativeStringNamePtr) -> GDNativeExtensionClassCallVirtual #c_call;

GDNativeExtensionClassCreationInfo :: struct {
    is_virtual:               GDNativeBool;
    is_abstract:              GDNativeBool;
    set_func:                 GDNativeExtensionClassSet;
    get_func:                 GDNativeExtensionClassGet;
    get_property_list_func:   GDNativeExtensionClassGetPropertyList;
    free_property_list_func:  GDNativeExtensionClassFreePropertyList;
    property_can_revert_func: GDNativeExtensionClassPropertyCanRevert;
    property_get_revert_func: GDNativeExtensionClassPropertyGetRevert;
    notification_func:        GDNativeExtensionClassNotification;
    to_string_func:           GDNativeExtensionClassToString;
    reference_func:           GDNativeExtensionClassReference;
    unreference_func:         GDNativeExtensionClassUnreference;
    create_instance_func:     GDNativeExtensionClassCreateInstance; // (Default) constructor; mandatory. If the class is not instantiable, consider making it virtual or abstract.
    free_instance_func:       GDNativeExtensionClassFreeInstance; // Destructor; mandatory.
    get_virtual_func:         GDNativeExtensionClassGetVirtual; // Queries a virtual function by name and returns a callback to invoke the requested virtual function.
    get_rid_func:             GDNativeExtensionClassGetRID;
    class_userdata:           *void; // Per-class user data, later accessible in instance bindings.
}

GDNativeExtensionClassLibraryPtr :: *void;

/* Method */
GDNativeExtensionClassMethodFlags :: enum s32 {
    NORMAL    :: 1;
    EDITOR    :: 2;
    CONST     :: 4;
    VIRTUAL   :: 8;
    VARARG    :: 16;
    STATIC    :: 32;
    S_DEFAULT :: 1;

    GDNATIVE_EXTENSION_METHOD_FLAG_NORMAL   :: NORMAL;
    GDNATIVE_EXTENSION_METHOD_FLAG_EDITOR   :: EDITOR;
    GDNATIVE_EXTENSION_METHOD_FLAG_CONST    :: CONST;
    GDNATIVE_EXTENSION_METHOD_FLAG_VIRTUAL  :: VIRTUAL;
    GDNATIVE_EXTENSION_METHOD_FLAG_VARARG   :: VARARG;
    GDNATIVE_EXTENSION_METHOD_FLAG_STATIC   :: STATIC;
    GDNATIVE_EXTENSION_METHOD_FLAGS_DEFAULT :: S_DEFAULT;
}

GDNativeExtensionClassMethodArgumentMetadata :: enum s32 {
    NONE           :: 0;
    INT_IS_INT8    :: 1;
    INT_IS_INT16   :: 2;
    INT_IS_INT32   :: 3;
    INT_IS_INT64   :: 4;
    INT_IS_UINT8   :: 5;
    INT_IS_UINT16  :: 6;
    INT_IS_UINT32  :: 7;
    INT_IS_UINT64  :: 8;
    REAL_IS_FLOAT  :: 9;
    REAL_IS_DOUBLE :: 10;

    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE           :: NONE;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8    :: INT_IS_INT8;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16   :: INT_IS_INT16;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32   :: INT_IS_INT32;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64   :: INT_IS_INT64;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8   :: INT_IS_UINT8;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16  :: INT_IS_UINT16;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32  :: INT_IS_UINT32;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64  :: INT_IS_UINT64;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT  :: REAL_IS_FLOAT;
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE :: REAL_IS_DOUBLE;
}

GDNativeExtensionClassMethodCall :: #type (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeVariantPtr, p_argument_count: GDNativeInt, r_return: GDNativeVariantPtr, r_error: *GDNativeCallError) -> void #c_call;
GDNativeExtensionClassMethodPtrCall :: #type (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeTypePtr, r_ret: GDNativeTypePtr) -> void #c_call;

GDNativeExtensionClassMethodInfo :: struct {
    name:                   GDNativeStringNamePtr;
    method_userdata:        *void;
    call_func:              GDNativeExtensionClassMethodCall;
    ptrcall_func:           GDNativeExtensionClassMethodPtrCall;
    method_flags:           u32; // Bitfield of `GDNativeExtensionClassMethodFlags`.

    /* If `has_return_value` is false, `return_value_info` and `return_value_metadata` are ignored. */
    has_return_value:       GDNativeBool;
    return_value_info:      *GDNativePropertyInfo;
    return_value_metadata:  GDNativeExtensionClassMethodArgumentMetadata;

    /* Arguments: `arguments_info` and `arguments_metadata` are array of size `argument_count`.
    * Name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies.
    */
    argument_count:         u32;
    arguments_info:         *GDNativePropertyInfo;
    arguments_metadata:     *GDNativeExtensionClassMethodArgumentMetadata;

    /* Default arguments: `default_arguments` is an array of size `default_argument_count`. */
    default_argument_count: u32;
    default_arguments:      *GDNativeVariantPtr;
}

/* SCRIPT INSTANCE EXTENSION */
GDNativeExtensionScriptInstanceDataPtr :: *void;

GDNativeExtensionScriptInstanceSet :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_name: GDNativeStringNamePtr, p_value: GDNativeVariantPtr) -> GDNativeBool #c_call;
GDNativeExtensionScriptInstanceGet :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_name: GDNativeStringNamePtr, r_ret: GDNativeVariantPtr) -> GDNativeBool #c_call;
GDNativeExtensionScriptInstanceGetPropertyList :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, r_count: *u32) -> *GDNativePropertyInfo #c_call;
GDNativeExtensionScriptInstanceFreePropertyList :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_list: *GDNativePropertyInfo) -> void #c_call;
GDNativeExtensionScriptInstanceGetPropertyType :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_name: GDNativeStringNamePtr, r_is_valid: *GDNativeBool) -> GDNativeVariantType #c_call;

GDNativeExtensionScriptInstancePropertyCanRevert :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_name: GDNativeStringNamePtr) -> GDNativeBool #c_call;
GDNativeExtensionScriptInstancePropertyGetRevert :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_name: GDNativeStringNamePtr, r_ret: GDNativeVariantPtr) -> GDNativeBool #c_call;

GDNativeExtensionScriptInstanceGetOwner :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> GDNativeObjectPtr #c_call;
GDNativeExtensionScriptInstancePropertyStateAdd :: #type (p_name: GDNativeStringNamePtr, p_value: GDNativeVariantPtr, p_userdata: *void) -> void #c_call;
GDNativeExtensionScriptInstanceGetPropertyState :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_add_func: GDNativeExtensionScriptInstancePropertyStateAdd, p_userdata: *void) -> void #c_call;

GDNativeExtensionScriptInstanceGetMethodList :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, r_count: *u32) -> *GDNativeMethodInfo #c_call;
GDNativeExtensionScriptInstanceFreeMethodList :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_list: *GDNativeMethodInfo) -> void #c_call;

GDNativeExtensionScriptInstanceHasMethod :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_name: GDNativeStringNamePtr) -> GDNativeBool #c_call;

GDNativeExtensionScriptInstanceCall :: #type (p_self: GDNativeExtensionScriptInstanceDataPtr, p_method: GDNativeStringNamePtr, p_args: *GDNativeVariantPtr, p_argument_count: GDNativeInt, r_return: GDNativeVariantPtr, r_error: *GDNativeCallError) -> void #c_call;
GDNativeExtensionScriptInstanceNotification :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, p_what: s32) -> void #c_call;
GDNativeExtensionScriptInstanceToString :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr, r_is_valid: *GDNativeBool, r_out: GDNativeStringPtr) -> void #c_call;

GDNativeExtensionScriptInstanceRefCountIncremented :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> void #c_call;
GDNativeExtensionScriptInstanceRefCountDecremented :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> GDNativeBool #c_call;

GDNativeExtensionScriptInstanceGetScript :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> GDNativeObjectPtr #c_call;
GDNativeExtensionScriptInstanceIsPlaceholder :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> GDNativeBool #c_call;

GDNativeExtensionScriptLanguagePtr :: *void;

GDNativeExtensionScriptInstanceGetLanguage :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> GDNativeExtensionScriptLanguagePtr #c_call;

GDNativeExtensionScriptInstanceFree :: #type (p_instance: GDNativeExtensionScriptInstanceDataPtr) -> void #c_call;

GDNativeScriptInstancePtr :: *void;

GDNativeExtensionScriptInstanceInfo :: struct {
    set_func:                  GDNativeExtensionScriptInstanceSet;
    get_func:                  GDNativeExtensionScriptInstanceGet;
    get_property_list_func:    GDNativeExtensionScriptInstanceGetPropertyList;
    free_property_list_func:   GDNativeExtensionScriptInstanceFreePropertyList;

    property_can_revert_func:  GDNativeExtensionScriptInstancePropertyCanRevert;
    property_get_revert_func:  GDNativeExtensionScriptInstancePropertyGetRevert;

    get_owner_func:            GDNativeExtensionScriptInstanceGetOwner;
    get_property_state_func:   GDNativeExtensionScriptInstanceGetPropertyState;

    get_method_list_func:      GDNativeExtensionScriptInstanceGetMethodList;
    free_method_list_func:     GDNativeExtensionScriptInstanceFreeMethodList;
    get_property_type_func:    GDNativeExtensionScriptInstanceGetPropertyType;

    has_method_func:           GDNativeExtensionScriptInstanceHasMethod;

    call_func:                 GDNativeExtensionScriptInstanceCall;
    notification_func:         GDNativeExtensionScriptInstanceNotification;

    to_string_func:            GDNativeExtensionScriptInstanceToString;

    refcount_incremented_func: GDNativeExtensionScriptInstanceRefCountIncremented;
    refcount_decremented_func: GDNativeExtensionScriptInstanceRefCountDecremented;

    get_script_func:           GDNativeExtensionScriptInstanceGetScript;

    is_placeholder_func:       GDNativeExtensionScriptInstanceIsPlaceholder;

    set_fallback_func:         GDNativeExtensionScriptInstanceSet;
    get_fallback_func:         GDNativeExtensionScriptInstanceGet;

    get_language_func:         GDNativeExtensionScriptInstanceGetLanguage;

    free_func:                 GDNativeExtensionScriptInstanceFree;
}

/* INTERFACE */
GDNativeInterface :: struct {
    version_major:                                      u32;
    version_minor:                                      u32;
    version_patch:                                      u32;
    version_string:                                     *u8;

    /* GODOT CORE */
    mem_alloc:                                          #type (p_bytes: size_t) -> *void #c_call;
    mem_realloc:                                        #type (p_ptr: *void, p_bytes: size_t) -> *void #c_call;
    mem_free:                                           #type (p_ptr: *void) -> void #c_call;

    print_error:                                        #type (p_description: *u8, p_function: *u8, p_file: *u8, p_line: s32) -> void #c_call;
    print_warning:                                      #type (p_description: *u8, p_function: *u8, p_file: *u8, p_line: s32) -> void #c_call;
    print_script_error:                                 #type (p_description: *u8, p_function: *u8, p_file: *u8, p_line: s32) -> void #c_call;

    get_native_struct_size:                             #type (p_name: GDNativeStringNamePtr) -> u64 #c_call;

    /* variant general */
    variant_new_copy:                                   #type (r_dest: GDNativeVariantPtr, p_src: GDNativeVariantPtr) -> void #c_call;
    variant_new_nil:                                    #type (r_dest: GDNativeVariantPtr) -> void #c_call;
    variant_destroy:                                    #type (p_self: GDNativeVariantPtr) -> void #c_call;

    /* variant type */
    variant_call:                                       #type (p_self: GDNativeVariantPtr, p_method: GDNativeStringNamePtr, p_args: *GDNativeVariantPtr, p_argument_count: GDNativeInt, r_return: GDNativeVariantPtr, r_error: *GDNativeCallError) -> void #c_call;
    variant_call_static:                                #type (p_type: GDNativeVariantType, p_method: GDNativeStringNamePtr, p_args: *GDNativeVariantPtr, p_argument_count: GDNativeInt, r_return: GDNativeVariantPtr, r_error: *GDNativeCallError) -> void #c_call;
    variant_evaluate:                                   #type (p_op: GDNativeVariantOperator, p_a: GDNativeVariantPtr, p_b: GDNativeVariantPtr, r_return: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_set:                                        #type (p_self: GDNativeVariantPtr, p_key: GDNativeVariantPtr, p_value: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_set_named:                                  #type (p_self: GDNativeVariantPtr, p_key: GDNativeStringNamePtr, p_value: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_set_keyed:                                  #type (p_self: GDNativeVariantPtr, p_key: GDNativeVariantPtr, p_value: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_set_indexed:                                #type (p_self: GDNativeVariantPtr, p_index: GDNativeInt, p_value: GDNativeVariantPtr, r_valid: *GDNativeBool, r_oob: *GDNativeBool) -> void #c_call;
    variant_get:                                        #type (p_self: GDNativeVariantPtr, p_key: GDNativeVariantPtr, r_ret: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_get_named:                                  #type (p_self: GDNativeVariantPtr, p_key: GDNativeStringNamePtr, r_ret: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_get_keyed:                                  #type (p_self: GDNativeVariantPtr, p_key: GDNativeVariantPtr, r_ret: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_get_indexed:                                #type (p_self: GDNativeVariantPtr, p_index: GDNativeInt, r_ret: GDNativeVariantPtr, r_valid: *GDNativeBool, r_oob: *GDNativeBool) -> void #c_call;
    variant_iter_init:                                  #type (p_self: GDNativeVariantPtr, r_iter: GDNativeVariantPtr, r_valid: *GDNativeBool) -> GDNativeBool #c_call;
    variant_iter_next:                                  #type (p_self: GDNativeVariantPtr, r_iter: GDNativeVariantPtr, r_valid: *GDNativeBool) -> GDNativeBool #c_call;
    variant_iter_get:                                   #type (p_self: GDNativeVariantPtr, r_iter: GDNativeVariantPtr, r_ret: GDNativeVariantPtr, r_valid: *GDNativeBool) -> void #c_call;
    variant_hash:                                       #type (p_self: GDNativeVariantPtr) -> GDNativeInt #c_call;
    variant_recursive_hash:                             #type (p_self: GDNativeVariantPtr, p_recursion_count: GDNativeInt) -> GDNativeInt #c_call;
    variant_hash_compare:                               #type (p_self: GDNativeVariantPtr, p_other: GDNativeVariantPtr) -> GDNativeBool #c_call;
    variant_booleanize:                                 #type (p_self: GDNativeVariantPtr) -> GDNativeBool #c_call;
    variant_duplicate:                                  #type (p_self: GDNativeVariantPtr, r_ret: GDNativeVariantPtr, p_deep: GDNativeBool) -> void #c_call;
    variant_stringify:                                  #type (p_self: GDNativeVariantPtr, r_ret: GDNativeStringPtr) -> void #c_call;

    variant_get_type:                                   #type (p_self: GDNativeVariantPtr) -> GDNativeVariantType #c_call;
    variant_has_method:                                 #type (p_self: GDNativeVariantPtr, p_method: GDNativeStringNamePtr) -> GDNativeBool #c_call;
    variant_has_member:                                 #type (p_type: GDNativeVariantType, p_member: GDNativeStringNamePtr) -> GDNativeBool #c_call;
    variant_has_key:                                    #type (p_self: GDNativeVariantPtr, p_key: GDNativeVariantPtr, r_valid: *GDNativeBool) -> GDNativeBool #c_call;
    variant_get_type_name:                              #type (p_type: GDNativeVariantType, r_name: GDNativeStringPtr) -> void #c_call;
    variant_can_convert:                                #type (p_from: GDNativeVariantType, p_to: GDNativeVariantType) -> GDNativeBool #c_call;
    variant_can_convert_strict:                         #type (p_from: GDNativeVariantType, p_to: GDNativeVariantType) -> GDNativeBool #c_call;

    /* ptrcalls */
    get_variant_from_type_constructor:                  #type (p_type: GDNativeVariantType) -> GDNativeVariantFromTypeConstructorFunc #c_call;
    get_variant_to_type_constructor:                    #type (p_type: GDNativeVariantType) -> GDNativeTypeFromVariantConstructorFunc #c_call;
    variant_get_ptr_operator_evaluator:                 #type (p_operator: GDNativeVariantOperator, p_type_a: GDNativeVariantType, p_type_b: GDNativeVariantType) -> GDNativePtrOperatorEvaluator #c_call;
    variant_get_ptr_builtin_method:                     #type (p_type: GDNativeVariantType, p_method: GDNativeStringNamePtr, p_hash: GDNativeInt) -> GDNativePtrBuiltInMethod #c_call;
    variant_get_ptr_constructor:                        #type (p_type: GDNativeVariantType, p_constructor: s32) -> GDNativePtrConstructor #c_call;
    variant_get_ptr_destructor:                         #type (p_type: GDNativeVariantType) -> GDNativePtrDestructor #c_call;
    variant_construct:                                  #type (p_type: GDNativeVariantType, p_base: GDNativeVariantPtr, p_args: *GDNativeVariantPtr, p_argument_count: s32, r_error: *GDNativeCallError) -> void #c_call;
    variant_get_ptr_setter:                             #type (p_type: GDNativeVariantType, p_member: GDNativeStringNamePtr) -> GDNativePtrSetter #c_call;
    variant_get_ptr_getter:                             #type (p_type: GDNativeVariantType, p_member: GDNativeStringNamePtr) -> GDNativePtrGetter #c_call;
    variant_get_ptr_indexed_setter:                     #type (p_type: GDNativeVariantType) -> GDNativePtrIndexedSetter #c_call;
    variant_get_ptr_indexed_getter:                     #type (p_type: GDNativeVariantType) -> GDNativePtrIndexedGetter #c_call;
    variant_get_ptr_keyed_setter:                       #type (p_type: GDNativeVariantType) -> GDNativePtrKeyedSetter #c_call;
    variant_get_ptr_keyed_getter:                       #type (p_type: GDNativeVariantType) -> GDNativePtrKeyedGetter #c_call;
    variant_get_ptr_keyed_checker:                      #type (p_type: GDNativeVariantType) -> GDNativePtrKeyedChecker #c_call;
    variant_get_constant_value:                         #type (p_type: GDNativeVariantType, p_constant: GDNativeStringNamePtr, r_ret: GDNativeVariantPtr) -> void #c_call;
    variant_get_ptr_utility_function:                   #type (p_function: GDNativeStringNamePtr, p_hash: GDNativeInt) -> GDNativePtrUtilityFunction #c_call;

    /*  extra utilities */
    string_new_with_latin1_chars:                       #type (r_dest: GDNativeStringPtr, p_contents: *u8) -> void #c_call;
    string_new_with_utf8_chars:                         #type (r_dest: GDNativeStringPtr, p_contents: *u8) -> void #c_call;
    string_new_with_utf16_chars:                        #type (r_dest: GDNativeStringPtr, p_contents: *char16_t) -> void #c_call;
    string_new_with_utf32_chars:                        #type (r_dest: GDNativeStringPtr, p_contents: *char32_t) -> void #c_call;
    string_new_with_wide_chars:                         #type (r_dest: GDNativeStringPtr, p_contents: *wchar_t) -> void #c_call;
    string_new_with_latin1_chars_and_len:               #type (r_dest: GDNativeStringPtr, p_contents: *u8, p_size: GDNativeInt) -> void #c_call;
    string_new_with_utf8_chars_and_len:                 #type (r_dest: GDNativeStringPtr, p_contents: *u8, p_size: GDNativeInt) -> void #c_call;
    string_new_with_utf16_chars_and_len:                #type (r_dest: GDNativeStringPtr, p_contents: *char16_t, p_size: GDNativeInt) -> void #c_call;
    string_new_with_utf32_chars_and_len:                #type (r_dest: GDNativeStringPtr, p_contents: *char32_t, p_size: GDNativeInt) -> void #c_call;
    string_new_with_wide_chars_and_len:                 #type (r_dest: GDNativeStringPtr, p_contents: *wchar_t, p_size: GDNativeInt) -> void #c_call;

    /* Information about the following functions:
    * - The return value is the resulting encoded string length.
    * - The length returned is in characters, not in bytes. It also does not include a trailing zero.
    * - These functions also do not write trailing zero, If you need it, write it yourself at the position indicated by the length (and make sure to allocate it).
    * - Passing NULL in r_text means only the length is computed (again, without including trailing zero).
    * - p_max_write_length argument is in characters, not bytes. It will be ignored if r_text is NULL.
    * - p_max_write_length argument does not affect the return value, it's only to cap write length.
    */
    string_to_latin1_chars:                             #type (p_self: GDNativeStringPtr, r_text: *u8, p_max_write_length: GDNativeInt) -> GDNativeInt #c_call;
    string_to_utf8_chars:                               #type (p_self: GDNativeStringPtr, r_text: *u8, p_max_write_length: GDNativeInt) -> GDNativeInt #c_call;
    string_to_utf16_chars:                              #type (p_self: GDNativeStringPtr, r_text: *char16_t, p_max_write_length: GDNativeInt) -> GDNativeInt #c_call;
    string_to_utf32_chars:                              #type (p_self: GDNativeStringPtr, r_text: *char32_t, p_max_write_length: GDNativeInt) -> GDNativeInt #c_call;
    string_to_wide_chars:                               #type (p_self: GDNativeStringPtr, r_text: *wchar_t, p_max_write_length: GDNativeInt) -> GDNativeInt #c_call;
    string_operator_index:                              #type (p_self: GDNativeStringPtr, p_index: GDNativeInt) -> *char32_t #c_call;
    string_operator_index_const:                        #type (p_self: GDNativeStringPtr, p_index: GDNativeInt) -> *char32_t #c_call;

    packed_byte_array_operator_index:                   #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *u8 #c_call; // p_self should be a PackedByteArray
    packed_byte_array_operator_index_const:             #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *u8 #c_call; // p_self should be a PackedByteArray

    packed_color_array_operator_index:                  #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeTypePtr #c_call; // p_self should be a PackedColorArray, returns Color ptr
    packed_color_array_operator_index_const:            #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeTypePtr #c_call; // p_self should be a PackedColorArray, returns Color ptr

    packed_float32_array_operator_index:                #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *float #c_call; // p_self should be a PackedFloat32Array
    packed_float32_array_operator_index_const:          #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *float #c_call; // p_self should be a PackedFloat32Array
    packed_float64_array_operator_index:                #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *float64 #c_call; // p_self should be a PackedFloat64Array
    packed_float64_array_operator_index_const:          #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *float64 #c_call; // p_self should be a PackedFloat64Array

    packed_int32_array_operator_index:                  #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *s32 #c_call; // p_self should be a PackedInt32Array
    packed_int32_array_operator_index_const:            #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *s32 #c_call; // p_self should be a PackedInt32Array
    packed_int64_array_operator_index:                  #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *s64 #c_call; // p_self should be a PackedInt32Array
    packed_int64_array_operator_index_const:            #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> *s64 #c_call; // p_self should be a PackedInt32Array

    packed_string_array_operator_index:                 #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeStringPtr #c_call; // p_self should be a PackedStringArray
    packed_string_array_operator_index_const:           #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeStringPtr #c_call; // p_self should be a PackedStringArray

    packed_vector2_array_operator_index:                #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeTypePtr #c_call; // p_self should be a PackedVector2Array, returns Vector2 ptr
    packed_vector2_array_operator_index_const:          #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeTypePtr #c_call; // p_self should be a PackedVector2Array, returns Vector2 ptr
    packed_vector3_array_operator_index:                #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeTypePtr #c_call; // p_self should be a PackedVector3Array, returns Vector3 ptr
    packed_vector3_array_operator_index_const:          #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeTypePtr #c_call; // p_self should be a PackedVector3Array, returns Vector3 ptr

    array_operator_index:                               #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeVariantPtr #c_call; // p_self should be an Array ptr
    array_operator_index_const:                         #type (p_self: GDNativeTypePtr, p_index: GDNativeInt) -> GDNativeVariantPtr #c_call; // p_self should be an Array ptr

    dictionary_operator_index:                          #type (p_self: GDNativeTypePtr, p_key: GDNativeVariantPtr) -> GDNativeVariantPtr #c_call; // p_self should be an Dictionary ptr
    dictionary_operator_index_const:                    #type (p_self: GDNativeTypePtr, p_key: GDNativeVariantPtr) -> GDNativeVariantPtr #c_call; // p_self should be an Dictionary ptr

    /* OBJECT */
    object_method_bind_call:                            #type (p_method_bind: GDNativeMethodBindPtr, p_instance: GDNativeObjectPtr, p_args: *GDNativeVariantPtr, p_arg_count: GDNativeInt, r_ret: GDNativeVariantPtr, r_error: *GDNativeCallError) -> void #c_call;
    object_method_bind_ptrcall:                         #type (p_method_bind: GDNativeMethodBindPtr, p_instance: GDNativeObjectPtr, p_args: *GDNativeTypePtr, r_ret: GDNativeTypePtr) -> void #c_call;
    object_destroy:                                     #type (p_o: GDNativeObjectPtr) -> void #c_call;
    global_get_singleton:                               #type (p_name: GDNativeStringNamePtr) -> GDNativeObjectPtr #c_call;

    object_get_instance_binding:                        #type (p_o: GDNativeObjectPtr, p_token: *void, p_callbacks: *GDNativeInstanceBindingCallbacks) -> *void #c_call;
    object_set_instance_binding:                        #type (p_o: GDNativeObjectPtr, p_token: *void, p_binding: *void, p_callbacks: *GDNativeInstanceBindingCallbacks) -> void #c_call;

    object_set_instance:                                #type (p_o: GDNativeObjectPtr, p_classname: GDNativeStringNamePtr, p_instance: GDExtensionClassInstancePtr) -> void #c_call; /* p_classname should be a registered extension class and should extend the p_o object's class. */

    object_cast_to:                                     #type (p_object: GDNativeObjectPtr, p_class_tag: *void) -> GDNativeObjectPtr #c_call;
    object_get_instance_from_id:                        #type (p_instance_id: GDObjectInstanceID) -> GDNativeObjectPtr #c_call;
    object_get_instance_id:                             #type (p_object: GDNativeObjectPtr) -> GDObjectInstanceID #c_call;

    /* SCRIPT INSTANCE */
    script_instance_create:                             #type (p_info: *GDNativeExtensionScriptInstanceInfo, p_instance_data: GDNativeExtensionScriptInstanceDataPtr) -> GDNativeScriptInstancePtr #c_call;

    classdb_construct_object:                           #type (p_classname: GDNativeStringNamePtr) -> GDNativeObjectPtr #c_call; /* The passed class must be a built-in godot class, or an already-registered extension class. In both case, object_set_instance should be called to fully initialize the object. */
    classdb_get_method_bind:                            #type (p_classname: GDNativeStringNamePtr, p_methodname: GDNativeStringNamePtr, p_hash: GDNativeInt) -> GDNativeMethodBindPtr #c_call;
    classdb_get_class_tag:                              #type (p_classname: GDNativeStringNamePtr) -> *void #c_call;

    /* Provided parameters for `classdb_register_extension_*` can be safely freed once the function returns. */
    classdb_register_extension_class:                   #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_parent_class_name: GDNativeStringNamePtr, p_extension_funcs: *GDNativeExtensionClassCreationInfo) -> void #c_call;
    classdb_register_extension_class_method:            #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_method_info: *GDNativeExtensionClassMethodInfo) -> void #c_call;
    classdb_register_extension_class_integer_constant:  #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_enum_name: GDNativeStringNamePtr, p_constant_name: GDNativeStringNamePtr, p_constant_value: GDNativeInt, p_is_bitfield: GDNativeBool) -> void #c_call;
    classdb_register_extension_class_property:          #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_info: *GDNativePropertyInfo, p_setter: GDNativeStringNamePtr, p_getter: GDNativeStringNamePtr) -> void #c_call;
    classdb_register_extension_class_property_group:    #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_group_name: GDNativeStringPtr, p_prefix: GDNativeStringPtr) -> void #c_call;
    classdb_register_extension_class_property_subgroup: #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_subgroup_name: GDNativeStringPtr, p_prefix: GDNativeStringPtr) -> void #c_call;
    classdb_register_extension_class_signal:            #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr, p_signal_name: GDNativeStringNamePtr, p_argument_info: *GDNativePropertyInfo, p_argument_count: GDNativeInt) -> void #c_call;
    classdb_unregister_extension_class:                 #type (p_library: GDNativeExtensionClassLibraryPtr, p_class_name: GDNativeStringNamePtr) -> void #c_call; /* Unregistering a parent class before a class that inherits it will result in failure. Inheritors must be unregistered first. */

    get_library_path:                                   #type (p_library: GDNativeExtensionClassLibraryPtr, r_path: GDNativeStringPtr) -> void #c_call;
}

/* INITIALIZATION */
GDNativeInitializationLevel :: enum s32 {
    INITIALIZATION_CORE      :: 0;
    INITIALIZATION_SERVERS   :: 1;
    INITIALIZATION_SCENE     :: 2;
    INITIALIZATION_EDITOR    :: 3;
    MAX_INITIALIZATION_LEVEL :: 4;

    GDNATIVE_INITIALIZATION_CORE      :: INITIALIZATION_CORE;
    GDNATIVE_INITIALIZATION_SERVERS   :: INITIALIZATION_SERVERS;
    GDNATIVE_INITIALIZATION_SCENE     :: INITIALIZATION_SCENE;
    GDNATIVE_INITIALIZATION_EDITOR    :: INITIALIZATION_EDITOR;
    GDNATIVE_MAX_INITIALIZATION_LEVEL :: MAX_INITIALIZATION_LEVEL;
}

GDNativeInitialization :: struct {
    /* Minimum initialization level required.
    * If Core or Servers, the extension needs editor or game restart to take effect */
    minimum_initialization_level: GDNativeInitializationLevel;

    /* Up to the user to supply when initializing */
    userdata:                     *void;

    /* This function will be called multiple times for each initialization level. */
    initialize:                   #type (userdata: *void, p_level: GDNativeInitializationLevel) -> void #c_call;
    deinitialize:                 #type (userdata: *void, p_level: GDNativeInitializationLevel) -> void #c_call;
}

/* Define a C function prototype that implements the function below and expose it to dlopen() (or similar).
* This is the entry point of the GDExtension library and will be called on initialization.
* It can be used to set up different init levels, which are called during various stages of initialization/shutdown.
* The function name must be a unique one specified in the .gdextension config file.
*/
GDNativeInitializationFunction :: #type (p_interface: *GDNativeInterface, p_library: GDNativeExtensionClassLibraryPtr, r_initialization: *GDNativeInitialization) -> GDNativeBool #c_call;

#scope_file

