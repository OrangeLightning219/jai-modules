#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "String";
#import "BuildCpp";
#import "File";

DECLARATIONS_TO_OMIT :: string.[ "ufbx_vec2",
                                 "ufbx_vec3",
                                 "ufbx_vec4",
                                 "ufbx_quat" ];

List :: struct
{
    struct_name: string;
    type_name: string;
}

list_types: [ .. ]List;

generate_bindings :: () -> bool
{
    using opts: Generate_Bindings_Options;

    output_filename := "windows.jai";
    paths := "windows";
    source := "./ufbx/ufbx.h";

    array_add( *libnames, "ufbx" );
    array_add( *libpaths, paths );
    array_add( *source_files, source );

    array_add( *extra_clang_arguments, "-DUFBX_REAL_IS_FLOAT" );
    // array_add(*flatten_namespaces, "ufbx", "UFBX");
    // array_add(*strip_prefixes, "ufbx", "UFBX");

    // generate_compile_time_struct_checks = false;
    visitor = ufbx_visitor;

    list_types.allocator = context.allocator;
    ok := generate_bindings( opts, output_filename );

    if ok
    {
        EXPANSION :: #string DONE
for_expansion :: ( list: %_List, body: Code, flags: For_Flags ) #expand
{
    DO_POINTER :: flags & .POINTER != 0;
    DO_REVERSE :: flags & .REVERSE != 0;

    view: []%;
    view.data = list.data;
    view.count = xx list.count;
    for *= DO_POINTER, <= DO_REVERSE value, index: view
    {
        `it_index := index;
        `it := value;
        #insert(remove=#assert(false), break=break value, continue=continue value) body;
    }
}
        DONE

        builder: String_Builder;
        for list_types
        {
            print( *builder, EXPANSION, it.struct_name, it.type_name );
            print( *builder, "\n" );
        }

        write_entire_file( "lists.jai", *builder );
    }

    return ok;
}

ufbx_visitor :: ( decl: *Declaration, parent_decl: *Declaration ) -> Declaration_Visit_Result
{
    if !parent_decl && array_find( DECLARATIONS_TO_OMIT, decl.name )
    {
        decl.decl_flags |= .OMIT_FROM_OUTPUT;
        return .STOP;
    }

    if decl.kind == .FUNCTION
    {
        for decl.type.type_of_function.arguments
        {
            if it.expression && it.expression.kind == .DECLARATION
            {
                d := it.expression.( *Declaration );
                d.output_name = to_snake_case_type( d.output_name );
            }
        }
    }

    if decl.kind == .STRUCT || decl.kind == .ENUM || decl.kind == .TYPEDEF
    {
        decl.output_name = to_snake_case_type( decl.output_name );

        if decl.kind == .STRUCT && ends_with( decl.output_name, "_List" )
        {
            ok, left, right := split_from_right( decl.output_name, "_" );
            assert( ok );

            name := left;
            for decl.type.type_of_struct.declarations
            {
                if it.output_name == "data"
                {
                    pointer_to := it.type.pointer_to;
                    if pointer_to && pointer_to.pointer_to
                    {
                        name = tprint( "*%", left );
                        break;
                    }
                }
            }

            list: List;
            list.struct_name = copy_string( left,, Context_Base.default_allocator );
            list.type_name = copy_string( name,, Context_Base.default_allocator );
            array_add( *list_types, list );
        }
    }
    return .RECURSE;
}

to_snake_case_type :: ( value: string ) -> string
{
    if !value return "";

    next_upper: bool;
    builder: String_Builder;
    for value
    {
        if it_index == 0
        {
            append( *builder, to_upper( it ) );
        }
        else
        {
            if it == #char "_"
            {
                next_upper = true;
                append( *builder, it );
            }
            else if next_upper
            {
                append( *builder, to_upper( it ) );
                next_upper = false;
            }
            else
            {
                append( *builder, it );
            }
        }
    }

    return builder_to_string( *builder );
}

#run {
    // main :: () {
    set_build_options_dc( .{ do_output = false } );

    success := build_cpp_static_lib( "windows/ufbx", "./ufbx/ufbx.c", debug = false, extra = .[ "-DUFBX_REAL_IS_FLOAT", "-O2" ] );

    if success
    {
        generate_bindings();
    }
    else
    {
        compiler_set_workspace_status( .FAILED );
    }
}
