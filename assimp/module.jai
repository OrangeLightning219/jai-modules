#scope_module 

#import "Basic";
#import "Math";

#if OS == .WINDOWS { 
    #load "windows.jai";
} else { 
    #load "unix.jai";
}

GetMaterialDiffuse :: inline ( pMat: *Material ) -> Vector4
{
    color: Color4D;
    GetMaterialColor( pMat, "$clr.diffuse", 0, 0, *color );
    return cast,force( Vector4 )color;
}
