#scope_file
#import "Basic";
#import "Windows";

XAUDIO2_DLL_NAME :: "xaudio2_9";
windows_media_audio :: #system_library "xaudio2_9";

#scope_export

XAudio2Create :: (ppXAudio2: **IXAudio2, Flags: u32, XAudioProcessor: XAUDIO2_PROCESSOR) -> HRESULT
{
    result := LoadLibraryW( utf8_to_wide( XAUDIO2_DLL_NAME ) );
    assert(result != null);
    create := cast( XAudio2Create )GetProcAddress( result, "XAudio2Create" );
    return create(ppXAudio2, Flags, XAudioProcessor);
}

#load "windows.jai";
