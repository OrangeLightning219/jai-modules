FREETYPE_PATH :: "src/freetype-2.12.1";

// Set this to true to compile FreeType
// It requires CMake to be in PATH
COMPILE     :: false;
LIVE_OUTPUT :: true;

WINDOWS_BUILD_INSTRUCTIONS :: #string DONE
The build process is unfortunatelly not automated on Windows, as their CMake
script seems broken and only builds a debug build, disregarding the arguments
given, and also it does not support building without dynamically linking to the
MSVC runtime library. I have compiled it last time in the following manner:

1. Change directory into FREETYPE_PATH
2. Use the static config command as in `static_config_cmd`
3. Open the generated project file: FREETYPE_PATH/build/freetype.vcxproj
4. Change the configuration to Release and x64
5. In solution explorer right click on freetype and open the properties
6. Set the platform toolset to v141_xp and change /MD to /MT
7. Build the project
8. Copy FREETYPE_PATH/build/Release/freetype.lib to win/static/freetype.lib
9. Repeat the process for `dynamic_config_cmd`

 - pjurga, 2022-05-20
DONE;

TYPES_TO_OMIT :: string.[
    "HAVE_UNISTD_H",
    "HAVE_FCNTL_H",
];

#run {
    set_build_options_dc(.{do_output=false});
    if COMPILE {
        if !compile_freetype() {
            compiler_set_workspace_status(.FAILED);
            return;
        }
    }
    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
    }
}

compile_freetype :: () -> bool {
    if OS == .WINDOWS {
        log_error(WINDOWS_BUILD_INSTRUCTIONS);
        return false;
    }

    MACOS_VERSION_ARG :: #run -> string {
        using options := get_build_options();
        return tprint("-DCMAKE_OSX_DEPLOYMENT_TARGET=%.%", minimum_macos_version.major, minimum_macos_version.minor);
    }

    STATIC_CONFIG_CMD :: string.[
        "cmake",
        "-Bbuild",
        "-DFT_DISABLE_ZLIB=TRUE",
        "-DFT_DISABLE_BZIP2=TRUE",
        "-DFT_DISABLE_PNG=TRUE",
        "-DFT_DISABLE_HARFBUZZ=TRUE",
        "-DFT_DISABLE_BROTLI=TRUE",
        "-DCMAKE_BUILD_TYPE=Release",
        MACOS_VERSION_ARG
    ];

    DYNAMIC_CONFIG_CMD :: string.[
        "cmake",
        "-Bbuild",
        "-DFT_DISABLE_ZLIB=TRUE",
        "-DFT_DISABLE_BZIP2=TRUE",
        "-DFT_DISABLE_PNG=TRUE",
        "-DFT_DISABLE_HARFBUZZ=TRUE",
        "-DFT_DISABLE_BROTLI=TRUE",
        "-DCMAKE_BUILD_TYPE=Release",
        "-DBUILD_SHARED_LIBS=true",
        MACOS_VERSION_ARG
    ];

    BUILD_CMD :: string.[ "cmake", "--build", "build" ];

    log("Configuring to build the static lib");
    run_or_exit(STATIC_CONFIG_CMD, FREETYPE_PATH);

    log("Building the static lib");
    run_or_exit(BUILD_CMD, FREETYPE_PATH);

    result_path: string;
    dynamic_lib_src: string;
    dynamic_lib_dest: string;
    if OS == .WINDOWS {
        assert(false);
    } else if OS == .LINUX {
        result_path = "linux";
        dynamic_lib_src = tprint("%/build/libfreetype.so", FREETYPE_PATH);
        dynamic_lib_dest = tprint("%/freetype.so", result_path);
    } else if OS == .MACOS {
        result_path = "macos";
        dynamic_lib_src = tprint("%/build/libfreetype.dylib", FREETYPE_PATH);
        dynamic_lib_dest = tprint("%/freetype.dylib", result_path);
    } else {
        assert(false); // Unknown OS
    }

    success := make_directory_if_it_does_not_exist(result_path);
    if !success {
        log_error("Failed to make directory \"%\"", result_path);
        return false;
    }

    static_lib_src := tprint("%/build/libfreetype.a", FREETYPE_PATH);
    static_lib_dest := tprint("%/freetype.a", result_path);
    if !copy_library(static_lib_src, static_lib_dest)  return false;

    log("Configuring to build the dynamic lib");
    run_or_exit(DYNAMIC_CONFIG_CMD, FREETYPE_PATH);

    log("Building the dynamic lib");
    run_or_exit(BUILD_CMD, FREETYPE_PATH);

    if !copy_library(dynamic_lib_src, dynamic_lib_dest)  return false;

    log("Built freetype successfully");
    return true;
}

copy_library :: (src: string, dest: string) -> bool {
    if file_exists(dest) {
        success := file_delete(dest);
        if !success {
            log_error("Failed to delete old \"%\"", dest);
            return false;
        }
    }

    success := copy_file(src, dest);
    if !success {
        log_error("Failed to copy file \"%\" to \"%\"", src, dest);
        return false;
    }

    return true;
}


generate_bindings :: () -> bool {
    freetype_include := tprint("%/include", FREETYPE_PATH);
    opts: Generate_Bindings_Options;
    output_name: string;
    {
        using opts;

        #if OS == .WINDOWS {
            // Both the static and dynamic version can be used to generate bindings, it doesn't seem to matter
            array_add(*libpaths, "win");
            //array_add(*libpaths, "win/dll");
            output_name = "windows.jai";
        } else #if OS == .LINUX {
            array_add(*libpaths, "linux");
            output_name = "unix.jai";
            generate_library_declarations = false;
            footer = UNIX_FOOTER;
        } else #if OS == .MACOS {
            array_add(*libpaths, "macos");
            output_name = "unix.jai";
            generate_library_declarations = false;
            footer = UNIX_FOOTER;
        } else {
            #assert false; // Unknown OS
        }

        sources := string.[
            "freetype/freetype.h",
            "freetype/tttables.h",
        ];

        array_add(*libnames, "freetype");
        array_add(*include_paths, freetype_include);
        for source: sources {
            array_add(*source_files,  tprint("%/%", freetype_include, source));
        }
        auto_detect_enum_prefixes = true;
        log_stripped_declarations = false;
        generate_compile_time_struct_checks = false;
    }

    return generate_bindings(opts, output_name);
}

run_or_exit :: (command: [] string, working_directory: string) {
    // Enable this to see the commands being executed.
    // print("Executing command \"%\" in directory \"%\"\n", join(..command, separator = " "), working_directory);

    result, output_string, error_string := run_command(..command, working_directory = working_directory, capture_and_return_output = true, print_captured_output = LIVE_OUTPUT);
    defer {
        free(output_string);
        free(error_string);
    }
    if result.exit_code != 0 {
        log_error("Could not run command \"%\" in directory \"%\". Exit code: %\nError:\n%", get_quoted_command_string(command), working_directory, result.exit_code, error_string);
        exit(1);
    }
}

#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Process";
#import "String";

UNIX_FOOTER :: #string END
#scope_file

#if OS == .LINUX {
    freetype :: #library "linux/freetype";
} else {
    freetype :: #library "macos/freetype";
}

END
