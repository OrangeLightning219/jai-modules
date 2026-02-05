#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";
#import "File_Utilities";
#import "File";

DECLARATIONS_TO_OMIT :: string.[ "b2Vec2", "b2QueryFilter" ];

generate_bindings :: () -> bool
{
    file_name: string;
    opts: Generate_Bindings_Options;
    {
        using opts;
        file_name = "windows.jai";
        array_add( *library_search_paths, "./windows" );
        array_add( *libraries, Library.{"box2d", ""} );
        array_add( *include_paths, "./box2d/include" );
        array_add( *source_files, "./box2d/include/box2d/box2d.h" );
        array_add( *strip_prefixes, "b2", "B2" );
        log_stripped_declarations = true;
        visitor = box2d_visitor;
    }

    ok := generate_bindings( opts, file_name );
    if !ok
    {
        log_error( "Failed to generate bindings" );
    }

    return ok;
}

box2d_visitor :: ( decl: *Declaration, parent_decl: *Declaration ) -> Declaration_Visit_Result
{
    if !parent_decl && array_find( DECLARATIONS_TO_OMIT, decl.name )
    {
        decl.decl_flags |= .OMIT_FROM_OUTPUT;
        return .STOP;
    }

    if decl.type && decl.type.type_of_enum != null
    {
        for decl.type.type_of_enum.enumerates
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
