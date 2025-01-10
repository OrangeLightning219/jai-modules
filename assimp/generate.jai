DECLARATIONS_TO_OMIT :: string.[
    // "ImVec2",
    // "ImVec4",
    // "ImColor",
    // "ImVector",
    // "ImDrawCallback",

    // "ImGuiTextBuffer",


    // "SDL_Window",
    // "SDL_Renderer",
    // "_SDL_GameController",
    // "SDL_Event",
    // "ID3D11Device",
    // "ID3D11DeviceContext"
];

#import "System";

main :: () {
    set_working_directory(path_strip_filename(get_path_of_running_executable()));
    if !generate_bindings() {
        exit(1);
    }
}


generate_bindings :: () -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            array_add(*libpaths, "windows");
            output_filename = "windows.jai";
        } else {
            #if OS == .LINUX {
                array_add(*libpaths, "linux");
            } else #if OS == .MACOS {
                array_add(*libpaths, "macos");
            } else {
                assert(false);
            }
            output_filename = "unix.jai";
            generate_library_declarations = false;
            footer = FOOTER_UNIX;
        }

        array_add(*libnames,      "assimp-vc143-mt");
        array_add(*include_paths, "assimp/include/assimp");
        array_add(*include_paths, "assimp/include");
        array_add(*source_files,  "cimport.h");
        array_add(*source_files,  "scene.h");
        array_add(*source_files,  "postprocess.h");
        array_add(*source_files,  "material.h");
        
        // array_add(*extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN");
        array_add(*flatten_namespaces, "ai", "AI");
        array_add(*strip_prefixes, "ai", "AI", "AI_");
        
        // auto_detect_enum_prefixes = false;
        log_stripped_declarations = true;
        generate_compile_time_struct_checks = false;
        strip_flags |= .INLINED_FUNCTIONS; // "inline" functions are not present in the static library.

        visitor   = assimp_visitor;
        // get_func_args_for_printing = imgui_get_function_arg_for_printing;
    }

    return generate_bindings(opts, output_filename);
}

assimp_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    if !parent_decl {
        if starts_with(decl.name, "AI_") {
            name := decl.name;
            name.data += 3;
            name.count -= 3;
            decl.output_name = name;
        }
    }

    return .RECURSE;
}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "Hash_Table";
#import "String";

FOOTER_UNIX :: #string END

#if OS == .MACOS    imgui :: #library "macos/ImGui";
#if OS == .LINUX    imgui :: #library "linux/ImGui";

END
