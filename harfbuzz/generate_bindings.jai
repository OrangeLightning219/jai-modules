#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";

main :: ()
{
    #if OS == .WINDOWS 
    {
        success := build_cpp_dynamic_lib("win/harfbuzz", "E:/Tools/harfbuzz/src/harfbuzz.cc", debug = false, extra = .["-DHB_DLL_EXPORT"]);
    }
    else
    {
        success := build_cpp_dynamic_lib("unix/harfbuzz", "E:/Tools/harfbuzz/src/harfbuzz.cc", debug = false, extra = .["-DHB_DLL_EXPORT"]);
    }
    generate_bindings();
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
            source := "E:/Tools/harfbuzz/src/hb.h";
        }
        else
        {
            output_filename = "unix.jai";
            paths := "unix";
            source := "E:/Tools/harfbuzz/src/hb.h";
        }
        
        // cl -LD -DHB_DLL_EXPORT ../harfbuzz.cc
        array_add( *libpaths, paths );
        array_add( *libnames, "harfbuzz" );
        array_add( *system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH );
        array_add( *source_files, source );
    }

    return generate_bindings( opts, output_filename );
}
