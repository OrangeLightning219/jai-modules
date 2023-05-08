#scope_file
#import "Basic";

#scope_export

#if OS == .WINDOWS
{
    #import "Windows";
    #load "windows.jai";
}
else
{
    #import "POSIX";
    #load "unix.jai";
}
