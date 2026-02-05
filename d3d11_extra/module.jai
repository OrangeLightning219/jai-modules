#scope_file
#import "d3d11";
#import "dxgi";
#import "d3d_compiler";
#import "Windows";

#scope_export
#if OS == .WINDOWS
{
    d3d11 :: #library,system "d3d11";

    ID3DUserDefinedAnnotation_UUID :: "b2daad8b-03d4-4dbf-95eb-32ab4b63d0ab";
    ID3DUserDefinedAnnotation :: struct
    {
        #as using,except( vtable ) iunknown: IUnknown;
        #overlay ( iunknown ) vtable: *ID3DUserDefinedAnnotation_VTable;
    }
    ID3DUserDefinedAnnotation_VTable :: struct #type_info_none
    {
        using iunknown: IUnknown_VTable;
        BeginEvent: ( this: *ID3DUserDefinedAnnotation, Name: *s16 ) -> s32 #cpp_method;
        EndEvent: ( this: *ID3DUserDefinedAnnotation ) -> s32 #cpp_method;
        SetMarker: ( this: *ID3DUserDefinedAnnotation, Name: *s16 ) -> void #cpp_method;
        GetStatus: ( this: *ID3DUserDefinedAnnotation ) -> BOOL #cpp_method;
    }
    ID3DUserDefinedAnnotation_BeginEvent :: inline ( this: *ID3DUserDefinedAnnotation, Name: *s16 ) -> s32 { return this.vtable.BeginEvent( this, Name ); }
    ID3DUserDefinedAnnotation_EndEvent :: inline ( this: *ID3DUserDefinedAnnotation ) -> s32 { return this.vtable.EndEvent( this ); }
    ID3DUserDefinedAnnotation_SetMarker :: inline ( this: *ID3DUserDefinedAnnotation, Name: *s16 ) { this.vtable.SetMarker( this, Name ); }
    ID3DUserDefinedAnnotation_GetStatus :: inline ( this: *ID3DUserDefinedAnnotation ) -> BOOL { return this.vtable.GetStatus( this ); }

    vtable :: ( obj: *ID3DUserDefinedAnnotation ) -> *ID3DUserDefinedAnnotation_VTable { return obj.vtable; }
}

