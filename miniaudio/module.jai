#scope_file
#import "Basic";
#import "Windows";

#scope_export

#if OS == .WINDOWS
{
    #load "windows.jai";
}
else
{
    #load "unix.jai";
}