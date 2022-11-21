GD_Extension_API :: struct {
    header: *GD_Header;
    builtin_class_sizes: [] GD_Builtin_Class_Size;
    builtin_class_member_offsets: [] GD_Builtin_Class_Member_Offset;
    global_constants: [] GD_Constant;
    global_enums: [] GD_Enum;
    utility_functions: [] GD_Utility_Function;
    builtin_classes: [] GD_Builtin_Class;
    classes: [] GD_Class;
    singletons: [] GD_Member;
    native_structures: [] GD_Native_Structure;
}

GD_Member :: struct {
    name: string;
    type: string;
}
GD_Argument :: GD_Member;

GD_Constant :: struct {
    name: string;
    type: string;
    value: string;
}

GD_Header :: struct {
    version_major: int;
    version_minor: int;
    version_patch: int;
    version_status: string;
    version_build: string;
    version_full_name: string;
}

GD_Builtin_Class_Size :: struct {
    build_configuration: string;
    sizes: [] Class_Size;

    Class_Size :: struct {
        name: string;
        size: int;
    }
}

GD_Builtin_Class_Member_Offset :: struct {
    build_configuration: string;
    classes: [] Class;

    Class :: struct {
        name: string;
        members: [] Class_Member;
    }

    Class_Member :: struct {
        name: string;
        offset: int;
    }
}

GD_Enum :: struct {
    name: string;
    values: [] Enum_Value;

    Enum_Value :: struct {
        name: string;
        value: int;
    }
}

GD_Utility_Function :: struct {
    name: string;
    return_type: string;
    category: string;
    is_vararg: bool;
    hash: int;
    arguments: [] GD_Argument;
}

GD_Builtin_Class :: struct {
    name: string;
    indexing_return_type: string;
    is_keyed: bool;
    members: [] GD_Member;
    constants: [] GD_Constant;
    enums: [] GD_Enum;
    operators: [] Operator;
    methods: [] Method;
    constructors: [] Constructor;
    has_destructor: bool;

    Operator :: struct {
        name: string;
        right_type: string;
        return_type: string;
    }

    Method :: struct {
        name: string;
        return_type: string;
        is_vararg: bool;
        is_const: bool;
        is_static: bool;
        hash: int;
        arguments: [] GD_Argument;
    }

    Constructor :: struct {
        index: int;
        arguments: [] GD_Argument;
    }
}

GD_Class :: struct {
    name: string;
    is_refcounted: bool;
    is_instantiable: bool;
    inherits: string;
    api_type: string;
    enums: [] GD_Enum;
    methods: [] Method;

    Method :: struct {
        name: string;
        is_const: bool;
        is_vararg: bool;
        is_static: bool;
        is_virtual: bool;
        hash: int;
        return_value: struct {
            type: string;
        }
        arguments: [] GD_Argument;
    }
}

GD_Native_Structure :: struct {
    name: string;
    format: string;
}
