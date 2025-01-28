AT_COMPILE_TIME :: true;

FREETYPE_PATH :: "src/freetype-2.12.1";

LIVE_OUTPUT :: true;

TYPES_TO_OMIT :: string.[
    "HAVE_UNISTD_H",
    "HAVE_FCNTL_H",
];

#if AT_COMPILE_TIME {
    #run,stallable {
        set_build_options_dc(.{do_output=false});
        options := get_build_options();
        args := options.compile_time_command_line;
        if !generate_bindings(args, options.minimum_os_version) {
            compiler_set_workspace_status(.FAILED);
        }
    }
} else {
    #import "System";

    main :: () {
        set_working_directory(path_strip_filename(get_path_of_running_executable()));
        if !generate_bindings(get_command_line_arguments(), #run get_build_options().minimum_os_version) {
            exit(1);
        }
    }
}

generate_bindings :: (args: [] string, minimum_os_version: type_of(Build_Options.minimum_os_version)) -> bool {
    target_android := array_find(args, "-android");
    target_x64     := array_find(args, "-x64");
    target_arm     := array_find(args, "-arm64");
    compile        := array_find(args, "-compile");
    compile_debug  := array_find(args, "-debug");

    os_target  := OS;
    cpu_target := CPU;
    if target_android os_target = .ANDROID;
    if target_x64     cpu_target = .X64;
    if target_arm     cpu_target = .ARM64;

    lib_directory: string;
    if os_target == {
        case .WINDOWS;
            lib_directory = "windows";
        case .LINUX;
            lib_directory = "linux";
        case .MACOS;
            lib_directory = "macos";
        case .ANDROID;
            lib_directory = ifx cpu_target == .X64 then "android/x64" else "android/arm64";
        case .PS5;
            lib_directory = "ps5";
        case;
            assert(false);
    }

    if compile {
        if os_target == .MACOS {
            success,  static_x64_path,   dynamic_x64_path   := compile_freetype_variant(os_target, .X64,   .{10, 13}, lib_directory, compile_debug = compile_debug, suffix = "_x64");
            if !success return false;
            success=, static_arm64_path, dynamic_arm64_path := compile_freetype_variant(os_target, .ARM64, .{11, 0},  lib_directory, compile_debug = compile_debug, suffix = "_arm64");
            if !success return false;
            // Create universal binaries out of the two arch builds:
            run_or_exit(.["lipo", "-create", dynamic_x64_path, dynamic_arm64_path, "-output", tprint("%/freetype.dylib", lib_directory)], "");
            run_or_exit(.["lipo", "-create", static_x64_path,  static_arm64_path,  "-output", tprint("%/freetype.a",     lib_directory)], "");
        } else {
            success := compile_freetype_variant(os_target, .X64,   minimum_os_version, lib_directory, compile_debug = compile_debug);
            if !success return false;
        }
    }

    freetype_include := tprint("%/include", FREETYPE_PATH);

    options: Generate_Bindings_Options;
    options.os = os_target;
    options.cpu = cpu_target;
    output_name: string;
    {
        using options;

        #if OS == .WINDOWS {
            output_name = "windows.jai";
        } else #if OS == .LINUX {
            output_name = "unix.jai";
            generate_library_declarations = false;
            footer = UNIX_FOOTER;
        } else #if OS == .MACOS {
            output_name = "unix.jai";
            generate_library_declarations = false;
            footer = UNIX_FOOTER;
        } else {
            #assert false; // Unknown OS
        }

        array_add(*libpaths, lib_directory);
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

    return generate_bindings(options, output_name);
}


compile_freetype_variant :: (os_target: Operating_System_Tag, cpu_target: CPU_Tag, minimum_os_version: type_of(Build_Options.minimum_os_version), target_directory: string, compile_debug: bool, suffix := "") -> bool, static_lib_path: string, dynamic_lib_path: string {
    build_type := ifx compile_debug then "Debug" else "Release";

	absolute_build_dir := tprint("%/build%", get_absolute_path("."), suffix);
    static_config_command: [..] string;
    array_add(*static_config_command,
        "cmake",
        tprint("-B%", absolute_build_dir),
        "-DFT_DISABLE_ZLIB=TRUE",
        "-DFT_DISABLE_BZIP2=TRUE",
        "-DFT_DISABLE_PNG=TRUE",
        "-DFT_DISABLE_HARFBUZZ=TRUE",
        "-DFT_DISABLE_BROTLI=TRUE",
    );

    dynamic_config_command: [..] string;
    array_add(*dynamic_config_command,
        "cmake",
        tprint("-B%", absolute_build_dir),
        "-DFT_DISABLE_ZLIB=TRUE",
        "-DFT_DISABLE_BZIP2=TRUE",
        "-DFT_DISABLE_PNG=TRUE",
        "-DFT_DISABLE_HARFBUZZ=TRUE",
        "-DFT_DISABLE_BROTLI=TRUE",
        "-DBUILD_SHARED_LIBS=true",
    );
    array_add(*static_config_command,  tprint("-DCMAKE_BUILD_TYPE=%", build_type));
    array_add(*dynamic_config_command, tprint("-DCMAKE_BUILD_TYPE=%", build_type));
    if os_target == {
        case .WINDOWS;
            array_add(*static_config_command,  tprint("-DCMAKE_CONFIGURATION_TYPES=%", build_type));
            array_add(*dynamic_config_command, tprint("-DCMAKE_CONFIGURATION_TYPES=%", build_type));
        case .MACOS;
            arch_name := ifx cpu_target == .X64 then "x86_64" else "arm64";
            array_add(*static_config_command,  tprint("-DCMAKE_OSX_ARCHITECTURES=%", arch_name));
            array_add(*dynamic_config_command, tprint("-DCMAKE_OSX_ARCHITECTURES=%", arch_name));
    }


    dynamic_library_extension: string;
    if os_target == {
        case .LINUX;
            dynamic_library_extension = "so";
        case .MACOS;
            dynamic_library_extension = "dylib";
            version_arg := tprint("-DCMAKE_OSX_DEPLOYMENT_TARGET=%.%", minimum_os_version.major, minimum_os_version.minor);
            array_add(*static_config_command,  version_arg);
            array_add(*dynamic_config_command, version_arg);
        case .ANDROID;
            dynamic_library_extension = "so";
            ndk := get_ndk_paths();
            toolchain_arg := tprint("-DCMAKE_TOOLCHAIN_FILE=%/build/cmake/android.toolchain.cmake", ndk.root);
            abi_arg       := tprint("-DANDROID_ABI=%", ifx cpu_target == .X64 then "x86_64" else "arm64-v8a");
            platform_arg  := tprint("-DANDROID_PLATFORM=%", ANDROID_SDK_LEVEL);
            array_add(*static_config_command,  toolchain_arg, abi_arg, platform_arg);
            array_add(*dynamic_config_command, toolchain_arg, abi_arg, platform_arg);
        case;
            assert(false); // Unknown OS
    }

    build_command: [..] string;
    array_add(*build_command, "cmake", "--build", absolute_build_dir);
    if OS == .WINDOWS {
        array_add(*build_command, tprint("--config=%", build_type));
    }

    success := make_directory_if_it_does_not_exist(target_directory, recursive = true);
    if !success {
        log_error("Failed to make directory \"%\"", target_directory);
        return false, "", "";
    }


	if file_exists(absolute_build_dir) {
		success := delete_directory(absolute_build_dir);
		if !success {
			log_error("Could not delete old build directory");
			return false, "", "";
		}
	}

    log("Configuring to build the static lib");
    run_or_exit(static_config_command, FREETYPE_PATH);

    log("Building the static lib");
    run_or_exit(build_command, FREETYPE_PATH);

    static_lib_source := tprint("%/libfreetype.a", absolute_build_dir);
    static_lib_dest   := tprint("%/freetype%.a", target_directory, suffix);
    if !copy_library(static_lib_source, static_lib_dest)  return false, "", "";


    success = delete_directory(absolute_build_dir);
    if !success {
        log_error("Could not delete old build directory");
        return false, "", "";
    }

    log("Configuring to build the dynamic lib");
    run_or_exit(dynamic_config_command, FREETYPE_PATH);

    log("Building the dynamic lib");
    run_or_exit(build_command, FREETYPE_PATH);

    dynamic_lib_source := tprint("%/libfreetype.%", absolute_build_dir, dynamic_library_extension);
    dynamic_lib_dest   := tprint("%/freetype%.%", target_directory, suffix, dynamic_library_extension);
    if !copy_library(dynamic_lib_source, dynamic_lib_dest)  return false, "", "";

    delete_directory(absolute_build_dir);

    log("Built freetype successfully");
    return true, static_lib_dest, dynamic_lib_dest;
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

#import "Toolchains/Android";
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
} else #if OS == .MACOS {
    freetype :: #library "macos/freetype";
} else #if OS == .ANDROID {
    #if CPU == .X64 {
        freetype :: #library "android/x64/freetype";
    } else #if CPU == .ARM64 {
        freetype :: #library "android/arm64/freetype";
    }
} else {
    #assert false;
}

END

