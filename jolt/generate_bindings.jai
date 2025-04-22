#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";
#import "File_Utilities";
#import "File";

DECLARATIONS_TO_OMIT :: string.[ "JPH_Vec3", "JPH_Vec4", "JPH_Quat", "JPH_Matrix4x4", "JPH_ObjectLayer", "JPH_BroadPhaseLayer" ];

generate_bindings :: () -> bool
{
    LINK_STATIC :: false;

    file_name: string;
    opts: Generate_Bindings_Options;
    {
        using opts;
        file_name = "windows.jai";
        #if LINK_STATIC
        {
            array_add( *libpaths, "./windows/static" );
        }
        else
        {
            array_add( *libpaths, "./windows/dynamic" );
        }
        array_add( *libnames, "joltc" );
        array_add( *include_paths, "./" );
        array_add( *source_files, "joltc/include/joltc.h" );
        array_add( *strip_prefixes, "JPH" );
        log_stripped_declarations = true;
        visitor = jolt_visitor;
    }

    ok := generate_bindings( opts, file_name );
    if !ok
    {
        log_error( "Failed to generate bindings" );
    }
    else
    {
        bindings_text := read_entire_file( file_name );
        bindings_text = replace( bindings_text, "interface:", "_interface:" );
        write_entire_file( file_name, bindings_text );
    }
    return ok;
}

jolt_visitor :: ( decl: *Declaration, parent_decl: *Declaration ) -> Declaration_Visit_Result
{
    if !parent_decl && array_find( DECLARATIONS_TO_OMIT, decl.name )
    {
        decl.decl_flags |= .OMIT_FROM_OUTPUT;
        return .STOP;
    }

    if decl.type && decl.type.type_of_enum != null
    {
        for *decl.type.type_of_enum.enumerates
        {
            it.output_name = to_snake_case_upper( it.output_name );
        }
    }

    return .RECURSE;
}

to_snake_case_upper :: ( value: string ) -> string
{
    builder: String_Builder;
    for value
    {
        if it >= #char "A" && it <= #char "Z"
        {
            if it_index > 0
            {
                append( *builder, "_" );
            }
            append( *builder, it );
        }
        else
        {
            append( *builder, to_upper( it ) );
        }
    }
    // NOTE: builder_to_string uses context.allocator
    return builder_to_string( *builder );
}

#run {
    set_build_options_dc( .{ do_output = false } );
    ok := generate_bindings();
    if !ok
    {
        compiler_set_workspace_status( .FAILED );
    }
}
