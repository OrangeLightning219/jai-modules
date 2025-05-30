#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";

generate_bindings :: () -> bool
{
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;
        
        #if OS == .WINDOWS
        {
            output_filename = "windows.jai";
            paths := "win";
            source := "./harfbuzz/src/hb.h";
        }
        else
        {
            output_filename = "unix.jai";
            paths := "unix";
            // source := "/Users/marcel/Programming/harfbuzz/src/hb.h";
            source := "/mnt/e/Tools/harfbuzz/src/hb.h";
        }
        
        // cl -LD -DHB_DLL_EXPORT ../harfbuzz.cc
        array_add( *libnames, "harfbuzz" );
        array_add( *libpaths, paths );
        array_add( *system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH );
        
        array_add( *source_files, source );
        array_add( *path_fragments_to_treat_as_non_system_paths, source );

        array_add( *extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN" );
    }

    return generate_bindings( opts, output_filename );
}

#run {
    set_build_options_dc(.{do_output=false});
    #if OS == .WINDOWS 
    {
        // success := build_cpp_dynamic_lib("win/harfbuzz", "./harfbuzz/src/harfbuzz.cc", debug = false, extra = .["-DHB_DLL_EXPORT", "-O2"]);
        success := build_cpp_static_lib("win/harfbuzz", "./harfbuzz/src/harfbuzz.cc", debug = false, extra = .["-DHB_DLL_EXPORT", "-O2"]);
    }
    else
    {
        success := build_cpp_static_lib("unix/harfbuzz", "/mnt/e/Tools/harfbuzz/src/harfbuzz.cc", debug = false, extra = .["-DHB_DLL_EXPORT", "-O2"]);
    }

    if success
    {
        generate_bindings();
    }
    else
    {
        compiler_set_workspace_status(.FAILED);

    }
}