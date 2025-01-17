#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";

#run {
    set_build_options_dc(.{do_output=false});
    #if OS == .WINDOWS 
    {
        // NOTE: The bindings are simple enough to generate manually so we only build the library here.
        success := build_cpp_static_lib("windows/rectpack2d", "./rectpack2D/src/c_api.cpp", debug = false, extra = .[ "-O2", "/std:c++17", "/EHsc"]);
    }

    if !success
    {
        compiler_set_workspace_status(.FAILED);

    }
}