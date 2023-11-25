#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";

// #run main();

main :: ()
{
    // set_build_options_dc( .{ do_output = false } );
    
    // options := get_build_options();
    if !generate_bindings()
    {
        // compiler_set_workspace_status( .FAILED );
        return;
    }
}

#assert ( OS == .WINDOWS );

PREFIXES_FOR_TYPES_TO_OMIT :: string.[
    "__REQUIRED_",
    "LP",
    // Omit all the COM garbage 
    "IID_",
    "__MIDL_",
    "D3D",
    "D3D_",
    "_D3D",
    "WKPDID"
];

TYPES_WHITELIST :: string.[
    "_D3DMATRIX"
];

TYPES_TO_OMIT :: string.[
    "WKPDID_D3DDebugObjectName", // Defined manually
    "INTERFACE", // Frequently re-declared macro

     // We want these to be part of module "d3d_compiler" instead.
    "ID3D10Blob",
    "ID3D11Linker",
    "ID3D11Module",
    "ID3D11ModuleInstance",
    "ID3DBlob",
    "ID3DInclude",
    "_D3D_INCLUDE_TYPE",
    "_D3D_SHADER_MACRO",

    "IEnumString",
    "IID",
    "GUID",
    "ID3DDestructionNotifier",
    "PFN_DESTRUCTION_CALLBACK",
    "D3D_SHADER_VARIABLE_CLASS"
];


ENUM_FLAGS :: string.[
    "D3D_COMPONENT_MASK",
    "D3D_SHADER_REQUIRES",
];

generate_bindings :: () -> bool
{
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;
        
        #if OS == .WINDOWS
        {
            output_filename = "windows.jai";
            // strip_flags = 0;
        }
        generate_compile_time_struct_checks = false;


        libs := string.["shdocvw.dll", "shell32.dll"];

        array_add( *libnames, ..libs );
        array_add( *system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH );

        files := string.["shobjidl.h", "exdisp.h", "shobjidl_core.h", "shtypes.h", "oaidl.h"];
        // files := string.["dcomp.h"];

        array_add( *source_files, ..files );
        array_add( *path_fragments_to_treat_as_non_system_paths, ..files );

        types := string.["byte", "PCWSTR", "CLSID"];
        // types := string.["byte", "RPC_IF_HANDLE", "IStream", "COSERVERINFO", "LPOLESTR", "LPBINDCTX", "LPCLSID", "STATSTG", "tagSTATSTG", "ISequentialStream", "PCWSTR"];
        array_add( *system_types_to_include, ..types);

        array_add( *extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN" );

        visitor = d3d_visitor;

    }

    return generate_bindings( opts, output_filename );
}

d3d_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    // Make unnecessary typedefs for enums and structs disappear 
    if (decl.kind == .STRUCT || decl.kind == .ENUM) && decl.output_name.count > 2 && decl.output_name[0] == #char "_" && decl.output_name[1] !=  #char "_" {
        advance(*decl.output_name);
    }

    if !parent_decl {
        if array_find(TYPES_TO_OMIT, decl.name) {
            decl.decl_flags |= .OMIT_FROM_OUTPUT;
            return .STOP;
        }
        for PREFIXES_FOR_TYPES_TO_OMIT {
            if begins_with(decl.name, it) && !array_find(TYPES_WHITELIST, decl.name) {
                decl.decl_flags |= .OMIT_FROM_OUTPUT;
                return .STOP;
            }
        }
    }

    // if decl.kind == .ENUM {
    //     if ends_with(decl.name, "FLAG") || ends_with(decl.name, "FLAGS") || array_find(ENUM_FLAGS, decl.name) {
    //         en := cast(*Enum)decl;
    //         en.flags |= .IS_ENUM_FLAGS;
    //         en.flags |= .VALUES_IN_HEX;

    //         if en.type {
    //             // Clang on Windows claims that all enums are signed, but MS function declarations expects at least the flags to be unsigned
    //             if en.type.size == {
    //                 case 1;
    //                     en.type = context.generator.type_def_u8;
    //                 case 2;
    //                     en.type = context.generator.type_def_u16;
    //                 case 4;
    //                     en.type = context.generator.type_def_u32;
    //                 case 8;
    //                     en.type = context.generator.type_def_u64;
    //             }
    //         }
    //     }
    // }

    // // Replace integers with their corresponding enum flags, where possible
    // if parent_decl && (parent_decl.kind == .FUNCTION || parent_decl.kind == .STRUCT) && decl.kind == .DECLARATION && decl.type.number_flags {
    //     new_name := get_enum_name(decl.name, parent_decl.name);
    //     if !new_name    return .RECURSE;

    //     // log("% -> %\n", decl.name, new_name);
    //     for context.generator.global_scope.members {
    //         if it.kind != .ENUM  || it.name != new_name     continue;

    //         en := cast(*Enum)it;

    //         // swap in the enum for the integer
    //         enum_type := New(CType);
    //         enum_type.type_of_enum = en;
    //         enum_type.size = decl.type.size;
    //         decl.type = enum_type;
            
    //         // we'll also need to output a cast, like "cast(EnumType)5" for the default argument
    //         decl.decl_flags |= .NEEDS_DEFAULT_ARGUMENT_CAST;

    //         break;
    //     }
    // }

    return .RECURSE;
}

get_enum_name :: (argument_name: string, parent_name: string) -> string {
    if argument_name == {
        case "BindFlags";
            return "D3D11_BIND_FLAG";
        case "CPUAccessFlags";
            return "D3D11_CPU_ACCESS_FLAG";
        case "MiscFlags";
            return "D3D11_RESOURCE_MISC_FLAG";
        case "Flags";
            if parent_name == {
                case "D3D11CreateDevice";
                    return "D3D11_CREATE_DEVICE_FLAG";
            }
    }

    return "";
}