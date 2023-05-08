#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";
#import "String";
#import "File";

main :: ()
{
    #if OS == .WINDOWS 
    {
        success := build_cpp_dynamic_lib("win/miniaudio", "miniaudio.c", debug = false, extra = .["-DMA_DLL", "-DMA_ENABLE_ONLY_SPECIFIC_BACKENDS", "-DMA_ENABLE_WASAPI"]);
    }

    // NOTE: Build manually for mac.
    
    success := generate_bindings();

    if success
    {
        #if OS == .WINDOWS 
        {
            file := "windows.jai";
        }
        else
        {
            file := "unix.jai";
        }
        content := read_entire_file(file);
        content = replace(content, "null", "_null");
        write_entire_file(file, content);        
    }
}

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
        }
        else
        {
            output_filename = "unix.jai";
            paths := "unix";
        }

        generate_compile_time_struct_checks = false;

        array_add( *libnames, "miniaudio" );
        array_add( *libpaths, paths );
        array_add( *system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH );
        #if OS == .MACOS
        {
            array_add( *system_include_paths, "/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk/usr/include" );
        }

        source := "miniaudio.h";

        array_add( *source_files, source );
        array_add( *path_fragments_to_treat_as_non_system_paths, source );

        array_add( *extra_clang_arguments, "-x", "c++", "-DWIN32_LEAN_AND_MEAN" );
    }

    return generate_bindings( opts, output_filename );
}
