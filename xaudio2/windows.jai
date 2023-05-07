//
// This file was auto-generated using the following command:
//
// generate_bindings.exe
//



XAUDIO2_DLL_A :: "xaudio2_9.dll";

XAUDIO2D_DLL_A :: "xaudio2_9d.dll";

XAUDIO2_DLL :: XAUDIO2_DLL_A;
XAUDIO2D_DLL :: XAUDIO2D_DLL_A;

XAUDIO2_MAX_BUFFER_BYTES :: 0x80000000;
XAUDIO2_MAX_QUEUED_BUFFERS :: 64;
XAUDIO2_MAX_BUFFERS_SYSTEM :: 2;
XAUDIO2_MAX_AUDIO_CHANNELS :: 64;
XAUDIO2_MIN_SAMPLE_RATE :: 1000;
XAUDIO2_MAX_SAMPLE_RATE :: 200000;
XAUDIO2_MAX_VOLUME_LEVEL :: 16777216.0;
XAUDIO2_MIN_FREQ_RATIO :: 1/1024.0;
XAUDIO2_MAX_FREQ_RATIO :: 1024.0;
XAUDIO2_DEFAULT_FREQ_RATIO :: 2.0;
XAUDIO2_MAX_FILTER_ONEOVERQ :: 1.5;
XAUDIO2_MAX_FILTER_FREQUENCY :: 1.0;
XAUDIO2_MAX_LOOP_COUNT :: 254;
XAUDIO2_MAX_INSTANCES :: 8;

XAUDIO2_MAX_RATIO_TIMES_RATE_XMA_MONO :: 600000;
XAUDIO2_MAX_RATIO_TIMES_RATE_XMA_MULTICHANNEL :: 300000;

XAUDIO2_COMMIT_NOW :: 0;
XAUDIO2_COMMIT_ALL :: 0;
XAUDIO2_INVALID_OPSET :: cast,trunc(u32)(-1);
XAUDIO2_NO_LOOP_REGION :: 0;
XAUDIO2_LOOP_INFINITE :: 255;
XAUDIO2_DEFAULT_CHANNELS :: 0;
XAUDIO2_DEFAULT_SAMPLERATE :: 0;

XAUDIO2_DEBUG_ENGINE :: 0x0001;
XAUDIO2_VOICE_NOPITCH :: 0x0002;
XAUDIO2_VOICE_NOSRC :: 0x0004;
XAUDIO2_VOICE_USEFILTER :: 0x0008;
XAUDIO2_PLAY_TAILS :: 0x0020;
XAUDIO2_END_OF_STREAM :: 0x0040;
XAUDIO2_SEND_USEFILTER :: 0x0080;
XAUDIO2_VOICE_NOSAMPLESPLAYED :: 0x0100;
XAUDIO2_STOP_ENGINE_WHEN_IDLE :: 0x2000;
XAUDIO2_1024_QUANTUM :: 0x8000;
XAUDIO2_NO_VIRTUAL_AUDIO_CLIENT :: 0x10000;

XAUDIO2_DEFAULT_FILTER_FREQUENCY :: XAUDIO2_MAX_FILTER_FREQUENCY;
XAUDIO2_DEFAULT_FILTER_ONEOVERQ :: 1.0;

XAUDIO2_QUANTUM_NUMERATOR :: 1;
XAUDIO2_QUANTUM_DENOMINATOR :: 100;
XAUDIO2_QUANTUM_MS :: 1000.0 * XAUDIO2_QUANTUM_NUMERATOR / XAUDIO2_QUANTUM_DENOMINATOR;

FACILITY_XAUDIO2 :: 0x896;

Processor1 :: 0x00000001;
Processor2 :: 0x00000002;
Processor3 :: 0x00000004;
Processor4 :: 0x00000008;
Processor5 :: 0x00000010;
Processor6 :: 0x00000020;
Processor7 :: 0x00000040;
Processor8 :: 0x00000080;
Processor9 :: 0x00000100;
Processor10 :: 0x00000200;
Processor11 :: 0x00000400;
Processor12 :: 0x00000800;
Processor13 :: 0x00001000;
Processor14 :: 0x00002000;
Processor15 :: 0x00004000;
Processor16 :: 0x00008000;
Processor17 :: 0x00010000;
Processor18 :: 0x00020000;
Processor19 :: 0x00040000;
Processor20 :: 0x00080000;
Processor21 :: 0x00100000;
Processor22 :: 0x00200000;
Processor23 :: 0x00400000;
Processor24 :: 0x00800000;
Processor25 :: 0x01000000;
Processor26 :: 0x02000000;
Processor27 :: 0x04000000;
Processor28 :: 0x08000000;
Processor29 :: 0x10000000;
Processor30 :: 0x20000000;
Processor31 :: 0x40000000;
Processor32 :: 0x80000000;
XAUDIO2_ANY_PROCESSOR :: 0xffffffff;

XAUDIO2_USE_DEFAULT_PROCESSOR :: 0x00000000;

XAUDIO2_DEFAULT_PROCESSOR :: Processor1;

XAUDIO2_LOG_ERRORS :: 0x0001;
XAUDIO2_LOG_WARNINGS :: 0x0002;
XAUDIO2_LOG_INFO :: 0x0004;
XAUDIO2_LOG_DETAIL :: 0x0008;
XAUDIO2_LOG_API_CALLS :: 0x0010;
XAUDIO2_LOG_FUNC_CALLS :: 0x0020;
XAUDIO2_LOG_TIMING :: 0x0040;
XAUDIO2_LOG_LOCKS :: 0x0080;
XAUDIO2_LOG_MEMORY :: 0x0100;
XAUDIO2_LOG_STREAMING :: 0x1000;

AUDIOCLOCK_CHARACTERISTIC_FIXED_FREQ :: 0x00000001;

AMBISONICS_PARAM_VERSION_1 :: 1;

XAUDIO2_PROCESSOR :: u32;

XAUDIO2_VOICE_DETAILS :: struct {
    CreationFlags:   u32;
    ActiveFlags:     u32;
    InputChannels:   u32;
    InputSampleRate: u32;
}

XAUDIO2_SEND_DESCRIPTOR :: struct {
    Flags:        u32;
    pOutputVoice: *IXAudio2Voice #align 4;
}

XAUDIO2_VOICE_SENDS :: struct {
    SendCount: u32;
    pSends:    *XAUDIO2_SEND_DESCRIPTOR #align 4;
}

XAUDIO2_EFFECT_DESCRIPTOR :: struct {
    pEffect:        *IUnknown;
    InitialState:   BOOL;
    OutputChannels: u32;
}

XAUDIO2_EFFECT_CHAIN :: struct {
    EffectCount:        u32;
    pEffectDescriptors: *XAUDIO2_EFFECT_DESCRIPTOR #align 4;
}

XAUDIO2_FILTER_TYPE :: enum s32 {
    LowPassFilter         :: 0;
    BandPassFilter        :: 1;
    HighPassFilter        :: 2;
    NotchFilter           :: 3;
    LowPassOnePoleFilter  :: 4;
    HighPassOnePoleFilter :: 5;
}

XAUDIO2_FILTER_PARAMETERS :: struct {
    Type:      XAUDIO2_FILTER_TYPE;
    Frequency: float;

    OneOverQ:  float;
}

XAUDIO2_BUFFER :: struct {
    Flags:      u32;
    AudioBytes: u32;
    pAudioData: *u8;
    PlayBegin:  u32;
    PlayLength: u32;

    LoopBegin:  u32;
    LoopLength: u32;

    LoopCount:  u32;

    pContext:   *void #align 4;
}

XAUDIO2_BUFFER_WMA :: struct {
    pDecodedPacketCumulativeBytes: *u32;

    PacketCount:                   u32;
}

XAUDIO2_VOICE_STATE :: struct {
    pCurrentBufferContext: *void;

    BuffersQueued:         u32;

    SamplesPlayed:         u64 #align 4;
}

XAUDIO2_PERFORMANCE_DATA :: struct {
    AudioCyclesSinceLastQuery:  u64;

    TotalCyclesSinceLastQuery:  u64;

    MinimumCyclesPerQuantum:    u32;

    MaximumCyclesPerQuantum:    u32;

    MemoryUsageInBytes:         u32;

    CurrentLatencyInSamples:    u32;

    GlitchesSinceEngineStarted: u32;

    ActiveSourceVoiceCount:     u32;
    TotalSourceVoiceCount:      u32;
    ActiveSubmixVoiceCount:     u32;

    ActiveResamplerCount:       u32;
    ActiveMatrixMixCount:       u32;

    ActiveXmaSourceVoices:      u32;
    ActiveXmaStreams:           u32;
}

XAUDIO2_DEBUG_CONFIGURATION :: struct {
    TraceMask:       u32;
    BreakMask:       u32;
    LogThreadID:     BOOL;
    LogFileline:     BOOL;
    LogFunctionName: BOOL;
    LogTiming:       BOOL;
}

IXAudio2 :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ixaudio2_vtable: *IXAudio2_VTable;
}
IXAudio2_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RegisterForCallbacks: (this: *IXAudio2, pCallback: *IXAudio2EngineCallback) -> HRESULT #cpp_method;

    UnregisterForCallbacks: (this: *IXAudio2, pCallback: *IXAudio2EngineCallback) -> void #cpp_method;

    CreateSourceVoice: (this: *IXAudio2, ppSourceVoice: **IXAudio2SourceVoice, pSourceFormat: *WAVEFORMATEX, Flags: u32 = 0, MaxFrequencyRatio: float = 2.0, pCallback: *IXAudio2VoiceCallback = null, pSendList: *XAUDIO2_VOICE_SENDS = null, pEffectChain: *XAUDIO2_EFFECT_CHAIN = null) -> HRESULT #cpp_method;

    CreateSubmixVoice: (this: *IXAudio2, ppSubmixVoice: **IXAudio2SubmixVoice, InputChannels: u32, InputSampleRate: u32, Flags: u32 = 0, ProcessingStage: u32 = 0, pSendList: *XAUDIO2_VOICE_SENDS = null, pEffectChain: *XAUDIO2_EFFECT_CHAIN = null) -> HRESULT #cpp_method;

    CreateMasteringVoice: (this: *IXAudio2, ppMasteringVoice: **IXAudio2MasteringVoice, InputChannels: u32 = 0, InputSampleRate: u32 = 0, Flags: u32 = 0, szDeviceId: *s16 = null, pEffectChain: *XAUDIO2_EFFECT_CHAIN = null, StreamCategory: AUDIO_STREAM_CATEGORY = AudioCategory_GameEffects) -> HRESULT #cpp_method;

    StartEngine: (this: *IXAudio2) -> HRESULT #cpp_method;

    StopEngine: (this: *IXAudio2) -> void #cpp_method;

    CommitChanges: (this: *IXAudio2, OperationSet: u32) -> HRESULT #cpp_method;

    GetPerformanceData: (this: *IXAudio2, pPerfData: *XAUDIO2_PERFORMANCE_DATA) -> void #cpp_method;

    SetDebugConfiguration: (this: *IXAudio2, pDebugConfiguration: *XAUDIO2_DEBUG_CONFIGURATION, pReserved: *void = null) -> void #cpp_method;
}

IXAudio2_RegisterForCallbacks :: inline (this: *IXAudio2, pCallback: *IXAudio2EngineCallback) -> HRESULT { return this.ixaudio2_vtable.RegisterForCallbacks(this, pCallback); }

IXAudio2_UnregisterForCallbacks :: inline (this: *IXAudio2, pCallback: *IXAudio2EngineCallback) { this.ixaudio2_vtable.UnregisterForCallbacks(this, pCallback); }

IXAudio2_CreateSourceVoice :: inline (this: *IXAudio2, ppSourceVoice: **IXAudio2SourceVoice, pSourceFormat: *WAVEFORMATEX, Flags: u32 = 0, MaxFrequencyRatio: float = 2.0, pCallback: *IXAudio2VoiceCallback = null, pSendList: *XAUDIO2_VOICE_SENDS = null, pEffectChain: *XAUDIO2_EFFECT_CHAIN = null) -> HRESULT { return this.ixaudio2_vtable.CreateSourceVoice(this, ppSourceVoice, pSourceFormat, Flags, MaxFrequencyRatio, pCallback, pSendList, pEffectChain); }

IXAudio2_CreateSubmixVoice :: inline (this: *IXAudio2, ppSubmixVoice: **IXAudio2SubmixVoice, InputChannels: u32, InputSampleRate: u32, Flags: u32 = 0, ProcessingStage: u32 = 0, pSendList: *XAUDIO2_VOICE_SENDS = null, pEffectChain: *XAUDIO2_EFFECT_CHAIN = null) -> HRESULT { return this.ixaudio2_vtable.CreateSubmixVoice(this, ppSubmixVoice, InputChannels, InputSampleRate, Flags, ProcessingStage, pSendList, pEffectChain); }

IXAudio2_CreateMasteringVoice :: inline (this: *IXAudio2, ppMasteringVoice: **IXAudio2MasteringVoice, InputChannels: u32 = 0, InputSampleRate: u32 = 0, Flags: u32 = 0, szDeviceId: *s16 = null, pEffectChain: *XAUDIO2_EFFECT_CHAIN = null, StreamCategory: AUDIO_STREAM_CATEGORY = AudioCategory_GameEffects) -> HRESULT { return this.ixaudio2_vtable.CreateMasteringVoice(this, ppMasteringVoice, InputChannels, InputSampleRate, Flags, szDeviceId, pEffectChain, StreamCategory); }

IXAudio2_StartEngine :: inline (this: *IXAudio2) -> HRESULT { return this.ixaudio2_vtable.StartEngine(this); }

IXAudio2_StopEngine :: inline (this: *IXAudio2) { this.ixaudio2_vtable.StopEngine(this); }

IXAudio2_CommitChanges :: inline (this: *IXAudio2, OperationSet: u32) -> HRESULT { return this.ixaudio2_vtable.CommitChanges(this, OperationSet); }

IXAudio2_GetPerformanceData :: inline (this: *IXAudio2, pPerfData: *XAUDIO2_PERFORMANCE_DATA) { this.ixaudio2_vtable.GetPerformanceData(this, pPerfData); }

IXAudio2_SetDebugConfiguration :: inline (this: *IXAudio2, pDebugConfiguration: *XAUDIO2_DEBUG_CONFIGURATION, pReserved: *void = null) { this.ixaudio2_vtable.SetDebugConfiguration(this, pDebugConfiguration, pReserved); }

vtable :: (obj: *IXAudio2) -> *IXAudio2_VTable { return obj.ixaudio2_vtable; }


IXAudio2Extension :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ixaudio2extension_vtable: *IXAudio2Extension_VTable;
}
IXAudio2Extension_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetProcessingQuantum: (this: *IXAudio2Extension, quantumNumerator: *u32, quantumDenominator: *u32) -> void #cpp_method;

    GetProcessor: (this: *IXAudio2Extension, processor: *XAUDIO2_PROCESSOR) -> void #cpp_method;
}

IXAudio2Extension_GetProcessingQuantum :: inline (this: *IXAudio2Extension, quantumNumerator: *u32, quantumDenominator: *u32) { this.ixaudio2extension_vtable.GetProcessingQuantum(this, quantumNumerator, quantumDenominator); }

IXAudio2Extension_GetProcessor :: inline (this: *IXAudio2Extension, processor: *XAUDIO2_PROCESSOR) { this.ixaudio2extension_vtable.GetProcessor(this, processor); }

vtable :: (obj: *IXAudio2Extension) -> *IXAudio2Extension_VTable { return obj.ixaudio2extension_vtable; }


IXAudio2Voice :: struct {
    vtable: *IXAudio2Voice_VTable;
}
IXAudio2Voice_VTable :: struct #type_info_none {
    GetVoiceDetails: (this: *IXAudio2Voice, pVoiceDetails: *XAUDIO2_VOICE_DETAILS) -> void #cpp_method;
    SetOutputVoices: (this: *IXAudio2Voice, pSendList: *XAUDIO2_VOICE_SENDS) -> HRESULT #cpp_method;
    SetEffectChain: (this: *IXAudio2Voice, pEffectChain: *XAUDIO2_EFFECT_CHAIN) -> HRESULT #cpp_method;
    EnableEffect: (this: *IXAudio2Voice, EffectIndex: u32, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    DisableEffect: (this: *IXAudio2Voice, EffectIndex: u32, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetEffectState: (this: *IXAudio2Voice, EffectIndex: u32, pEnabled: *BOOL) -> void #cpp_method;
    SetEffectParameters: (this: *IXAudio2Voice, EffectIndex: u32, pParameters: *void, ParametersByteSize: u32, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetEffectParameters: (this: *IXAudio2Voice, EffectIndex: u32, pParameters: *void, ParametersByteSize: u32) -> HRESULT #cpp_method;
    SetFilterParameters: (this: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetFilterParameters: (this: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS) -> void #cpp_method;
    SetOutputFilterParameters: (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetOutputFilterParameters: (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS) -> void #cpp_method;
    SetVolume: (this: *IXAudio2Voice, Volume: float, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetVolume: (this: *IXAudio2Voice, pVolume: *float) -> void #cpp_method;
    SetChannelVolumes: (this: *IXAudio2Voice, Channels: u32, pVolumes: *float, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetChannelVolumes: (this: *IXAudio2Voice, Channels: u32, pVolumes: *float) -> void #cpp_method;
    SetOutputMatrix: (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, SourceChannels: u32, DestinationChannels: u32, pLevelMatrix: *float, OperationSet: u32 = 0) -> HRESULT #cpp_method;
    GetOutputMatrix: (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, SourceChannels: u32, DestinationChannels: u32, pLevelMatrix: *float) -> void #cpp_method;
    DestroyVoice: (this: *IXAudio2Voice) -> void #cpp_method;
}
IXAudio2Voice_GetVoiceDetails :: inline (this: *IXAudio2Voice, pVoiceDetails: *XAUDIO2_VOICE_DETAILS) { this.vtable.GetVoiceDetails(this, pVoiceDetails); }
IXAudio2Voice_SetOutputVoices :: inline (this: *IXAudio2Voice, pSendList: *XAUDIO2_VOICE_SENDS) -> HRESULT { return this.vtable.SetOutputVoices(this, pSendList); }
IXAudio2Voice_SetEffectChain :: inline (this: *IXAudio2Voice, pEffectChain: *XAUDIO2_EFFECT_CHAIN) -> HRESULT { return this.vtable.SetEffectChain(this, pEffectChain); }
IXAudio2Voice_EnableEffect :: inline (this: *IXAudio2Voice, EffectIndex: u32, OperationSet: u32 = 0) -> HRESULT { return this.vtable.EnableEffect(this, EffectIndex, OperationSet); }
IXAudio2Voice_DisableEffect :: inline (this: *IXAudio2Voice, EffectIndex: u32, OperationSet: u32 = 0) -> HRESULT { return this.vtable.DisableEffect(this, EffectIndex, OperationSet); }
IXAudio2Voice_GetEffectState :: inline (this: *IXAudio2Voice, EffectIndex: u32, pEnabled: *BOOL) { this.vtable.GetEffectState(this, EffectIndex, pEnabled); }
IXAudio2Voice_SetEffectParameters :: inline (this: *IXAudio2Voice, EffectIndex: u32, pParameters: *void, ParametersByteSize: u32, OperationSet: u32 = 0) -> HRESULT { return this.vtable.SetEffectParameters(this, EffectIndex, pParameters, ParametersByteSize, OperationSet); }
IXAudio2Voice_GetEffectParameters :: inline (this: *IXAudio2Voice, EffectIndex: u32, pParameters: *void, ParametersByteSize: u32) -> HRESULT { return this.vtable.GetEffectParameters(this, EffectIndex, pParameters, ParametersByteSize); }
IXAudio2Voice_SetFilterParameters :: inline (this: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS, OperationSet: u32 = 0) -> HRESULT { return this.vtable.SetFilterParameters(this, pParameters, OperationSet); }
IXAudio2Voice_GetFilterParameters :: inline (this: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS) { this.vtable.GetFilterParameters(this, pParameters); }
IXAudio2Voice_SetOutputFilterParameters :: inline (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS, OperationSet: u32 = 0) -> HRESULT { return this.vtable.SetOutputFilterParameters(this, pDestinationVoice, pParameters, OperationSet); }
IXAudio2Voice_GetOutputFilterParameters :: inline (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, pParameters: *XAUDIO2_FILTER_PARAMETERS) { this.vtable.GetOutputFilterParameters(this, pDestinationVoice, pParameters); }
IXAudio2Voice_SetVolume :: inline (this: *IXAudio2Voice, Volume: float, OperationSet: u32 = 0) -> HRESULT { return this.vtable.SetVolume(this, Volume, OperationSet); }
IXAudio2Voice_GetVolume :: inline (this: *IXAudio2Voice, pVolume: *float) { this.vtable.GetVolume(this, pVolume); }
IXAudio2Voice_SetChannelVolumes :: inline (this: *IXAudio2Voice, Channels: u32, pVolumes: *float, OperationSet: u32 = 0) -> HRESULT { return this.vtable.SetChannelVolumes(this, Channels, pVolumes, OperationSet); }
IXAudio2Voice_GetChannelVolumes :: inline (this: *IXAudio2Voice, Channels: u32, pVolumes: *float) { this.vtable.GetChannelVolumes(this, Channels, pVolumes); }
IXAudio2Voice_SetOutputMatrix :: inline (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, SourceChannels: u32, DestinationChannels: u32, pLevelMatrix: *float, OperationSet: u32 = 0) -> HRESULT { return this.vtable.SetOutputMatrix(this, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix, OperationSet); }
IXAudio2Voice_GetOutputMatrix :: inline (this: *IXAudio2Voice, pDestinationVoice: *IXAudio2Voice, SourceChannels: u32, DestinationChannels: u32, pLevelMatrix: *float) { this.vtable.GetOutputMatrix(this, pDestinationVoice, SourceChannels, DestinationChannels, pLevelMatrix); }
IXAudio2Voice_DestroyVoice :: inline (this: *IXAudio2Voice) { this.vtable.DestroyVoice(this); }

vtable :: (obj: *IXAudio2Voice) -> *IXAudio2Voice_VTable { return obj.vtable; }


IXAudio2SourceVoice :: struct {
    #as using ixaudio2voice: IXAudio2Voice;
    #place ixaudio2voice; ixaudio2sourcevoice_vtable: *IXAudio2SourceVoice_VTable;
}
IXAudio2SourceVoice_VTable :: struct #type_info_none {
    using ixaudio2voice: IXAudio2Voice_VTable;
    Start: (this: *IXAudio2SourceVoice, Flags: u32 = 0, OperationSet: u32 = 0) -> HRESULT #cpp_method;

    Stop: (this: *IXAudio2SourceVoice, Flags: u32 = 0, OperationSet: u32 = 0) -> HRESULT #cpp_method;

    SubmitSourceBuffer: (this: *IXAudio2SourceVoice, pBuffer: *XAUDIO2_BUFFER, pBufferWMA: *XAUDIO2_BUFFER_WMA = null) -> HRESULT #cpp_method;

    FlushSourceBuffers: (this: *IXAudio2SourceVoice) -> HRESULT #cpp_method;

    Discontinuity: (this: *IXAudio2SourceVoice) -> HRESULT #cpp_method;

    ExitLoop: (this: *IXAudio2SourceVoice, OperationSet: u32 = 0) -> HRESULT #cpp_method;

    GetState: (this: *IXAudio2SourceVoice, pVoiceState: *XAUDIO2_VOICE_STATE, Flags: u32 = 0) -> void #cpp_method;

    SetFrequencyRatio: (this: *IXAudio2SourceVoice, Ratio: float, OperationSet: u32 = 0) -> HRESULT #cpp_method;

    GetFrequencyRatio: (this: *IXAudio2SourceVoice, pRatio: *float) -> void #cpp_method;

    SetSourceSampleRate: (this: *IXAudio2SourceVoice, NewSourceSampleRate: u32) -> HRESULT #cpp_method;
}

IXAudio2SourceVoice_Start :: inline (this: *IXAudio2SourceVoice, Flags: u32 = 0, OperationSet: u32 = 0) -> HRESULT { return this.ixaudio2sourcevoice_vtable.Start(this, Flags, OperationSet); }

IXAudio2SourceVoice_Stop :: inline (this: *IXAudio2SourceVoice, Flags: u32 = 0, OperationSet: u32 = 0) -> HRESULT { return this.ixaudio2sourcevoice_vtable.Stop(this, Flags, OperationSet); }

IXAudio2SourceVoice_SubmitSourceBuffer :: inline (this: *IXAudio2SourceVoice, pBuffer: *XAUDIO2_BUFFER, pBufferWMA: *XAUDIO2_BUFFER_WMA = null) -> HRESULT { return this.ixaudio2sourcevoice_vtable.SubmitSourceBuffer(this, pBuffer, pBufferWMA); }

IXAudio2SourceVoice_FlushSourceBuffers :: inline (this: *IXAudio2SourceVoice) -> HRESULT { return this.ixaudio2sourcevoice_vtable.FlushSourceBuffers(this); }

IXAudio2SourceVoice_Discontinuity :: inline (this: *IXAudio2SourceVoice) -> HRESULT { return this.ixaudio2sourcevoice_vtable.Discontinuity(this); }

IXAudio2SourceVoice_ExitLoop :: inline (this: *IXAudio2SourceVoice, OperationSet: u32 = 0) -> HRESULT { return this.ixaudio2sourcevoice_vtable.ExitLoop(this, OperationSet); }

IXAudio2SourceVoice_GetState :: inline (this: *IXAudio2SourceVoice, pVoiceState: *XAUDIO2_VOICE_STATE, Flags: u32 = 0) { this.ixaudio2sourcevoice_vtable.GetState(this, pVoiceState, Flags); }

IXAudio2SourceVoice_SetFrequencyRatio :: inline (this: *IXAudio2SourceVoice, Ratio: float, OperationSet: u32 = 0) -> HRESULT { return this.ixaudio2sourcevoice_vtable.SetFrequencyRatio(this, Ratio, OperationSet); }

IXAudio2SourceVoice_GetFrequencyRatio :: inline (this: *IXAudio2SourceVoice, pRatio: *float) { this.ixaudio2sourcevoice_vtable.GetFrequencyRatio(this, pRatio); }

IXAudio2SourceVoice_SetSourceSampleRate :: inline (this: *IXAudio2SourceVoice, NewSourceSampleRate: u32) -> HRESULT { return this.ixaudio2sourcevoice_vtable.SetSourceSampleRate(this, NewSourceSampleRate); }

vtable :: (obj: *IXAudio2SourceVoice) -> *IXAudio2SourceVoice_VTable { return obj.ixaudio2sourcevoice_vtable; }


IXAudio2SubmixVoice :: struct {
    #as using ixaudio2voice: IXAudio2Voice;
}

IXAudio2MasteringVoice :: struct {
    #as using ixaudio2voice: IXAudio2Voice;
    #place ixaudio2voice; ixaudio2masteringvoice_vtable: *IXAudio2MasteringVoice_VTable;
}
IXAudio2MasteringVoice_VTable :: struct #type_info_none {
    using ixaudio2voice: IXAudio2Voice_VTable;
    GetChannelMask: (this: *IXAudio2MasteringVoice, pChannelmask: *u32) -> HRESULT #cpp_method;
}
IXAudio2MasteringVoice_GetChannelMask :: inline (this: *IXAudio2MasteringVoice, pChannelmask: *u32) -> HRESULT { return this.ixaudio2masteringvoice_vtable.GetChannelMask(this, pChannelmask); }

vtable :: (obj: *IXAudio2MasteringVoice) -> *IXAudio2MasteringVoice_VTable { return obj.ixaudio2masteringvoice_vtable; }


IXAudio2EngineCallback :: struct {
    vtable: *IXAudio2EngineCallback_VTable;
}
IXAudio2EngineCallback_VTable :: struct #type_info_none {
    OnProcessingPassStart: (this: *IXAudio2EngineCallback) -> void #cpp_method;

    OnProcessingPassEnd: (this: *IXAudio2EngineCallback) -> void #cpp_method;

    OnCriticalError: (this: *IXAudio2EngineCallback, Error: HRESULT) -> void #cpp_method;
}

IXAudio2EngineCallback_OnProcessingPassStart :: inline (this: *IXAudio2EngineCallback) { this.vtable.OnProcessingPassStart(this); }

IXAudio2EngineCallback_OnProcessingPassEnd :: inline (this: *IXAudio2EngineCallback) { this.vtable.OnProcessingPassEnd(this); }

IXAudio2EngineCallback_OnCriticalError :: inline (this: *IXAudio2EngineCallback, Error: HRESULT) { this.vtable.OnCriticalError(this, Error); }

vtable :: (obj: *IXAudio2EngineCallback) -> *IXAudio2EngineCallback_VTable { return obj.vtable; }


IXAudio2VoiceCallback :: struct {
    vtable: *IXAudio2VoiceCallback_VTable;
}
IXAudio2VoiceCallback_VTable :: struct #type_info_none {
    OnVoiceProcessingPassStart: (this: *IXAudio2VoiceCallback, BytesRequired: u32) -> void #cpp_method;

    OnVoiceProcessingPassEnd: (this: *IXAudio2VoiceCallback) -> void #cpp_method;

    OnStreamEnd: (this: *IXAudio2VoiceCallback) -> void #cpp_method;

    OnBufferStart: (this: *IXAudio2VoiceCallback, pBufferContext: *void) -> void #cpp_method;

    OnBufferEnd: (this: *IXAudio2VoiceCallback, pBufferContext: *void) -> void #cpp_method;

    OnLoopEnd: (this: *IXAudio2VoiceCallback, pBufferContext: *void) -> void #cpp_method;

    OnVoiceError: (this: *IXAudio2VoiceCallback, pBufferContext: *void, Error: HRESULT) -> void #cpp_method;
}

IXAudio2VoiceCallback_OnVoiceProcessingPassStart :: inline (this: *IXAudio2VoiceCallback, BytesRequired: u32) { this.vtable.OnVoiceProcessingPassStart(this, BytesRequired); }

IXAudio2VoiceCallback_OnVoiceProcessingPassEnd :: inline (this: *IXAudio2VoiceCallback) { this.vtable.OnVoiceProcessingPassEnd(this); }

IXAudio2VoiceCallback_OnStreamEnd :: inline (this: *IXAudio2VoiceCallback) { this.vtable.OnStreamEnd(this); }

IXAudio2VoiceCallback_OnBufferStart :: inline (this: *IXAudio2VoiceCallback, pBufferContext: *void) { this.vtable.OnBufferStart(this, pBufferContext); }

IXAudio2VoiceCallback_OnBufferEnd :: inline (this: *IXAudio2VoiceCallback, pBufferContext: *void) { this.vtable.OnBufferEnd(this, pBufferContext); }

IXAudio2VoiceCallback_OnLoopEnd :: inline (this: *IXAudio2VoiceCallback, pBufferContext: *void) { this.vtable.OnLoopEnd(this, pBufferContext); }

IXAudio2VoiceCallback_OnVoiceError :: inline (this: *IXAudio2VoiceCallback, pBufferContext: *void, Error: HRESULT) { this.vtable.OnVoiceError(this, pBufferContext, Error); }

vtable :: (obj: *IXAudio2VoiceCallback) -> *IXAudio2VoiceCallback_VTable { return obj.vtable; }


XAudio2CreateWithVersionInfo :: (ppXAudio2: **IXAudio2, Flags: u32 = 0, XAudio2Processor: XAUDIO2_PROCESSOR = 1, ntddiVersion: u32 = 167772171) -> HRESULT #foreign xaudio2_9;

AUDCLNT_BUFFERFLAGS :: enum s32 {
    DATA_DISCONTINUITY :: 1;
    SILENT             :: 2;
    TIMESTAMP_ERROR    :: 4;

    AUDCLNT_BUFFERFLAGS_DATA_DISCONTINUITY :: DATA_DISCONTINUITY;
    AUDCLNT_BUFFERFLAGS_SILENT             :: SILENT;
    AUDCLNT_BUFFERFLAGS_TIMESTAMP_ERROR    :: TIMESTAMP_ERROR;
}

AUDCLNT_STREAMOPTIONS :: enum s32 {
    NONE         :: 0;
    RAW          :: 1;
    MATCH_FORMAT :: 2;
    AMBISONICS   :: 4;

    AUDCLNT_STREAMOPTIONS_NONE         :: NONE;
    AUDCLNT_STREAMOPTIONS_RAW          :: RAW;
    AUDCLNT_STREAMOPTIONS_MATCH_FORMAT :: MATCH_FORMAT;
    AUDCLNT_STREAMOPTIONS_AMBISONICS   :: AMBISONICS;
}

AudioClientProperties :: struct {
    cbSize:     u32;
    bIsOffload: BOOL;
    eCategory:  AUDIO_STREAM_CATEGORY;
    Options:    AUDCLNT_STREAMOPTIONS;
}


IAudioClient_UUID :: "1CB9AD4C-DBFA-4c32-B178-C2F568A703B2";
IAudioClient :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioclient_vtable: *IAudioClient_VTable;
}
IAudioClient_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    Initialize: (this: *IAudioClient, ShareMode: AUDCLNT_SHAREMODE, StreamFlags: u32, hnsBufferDuration: REFERENCE_TIME, hnsPeriodicity: REFERENCE_TIME, pFormat: *WAVEFORMATEX, AudioSessionGuid: LPCGUID) -> HRESULT #cpp_method;

    GetBufferSize: (this: *IAudioClient, pNumBufferFrames: *u32) -> HRESULT #cpp_method;

    GetStreamLatency: (this: *IAudioClient, phnsLatency: *REFERENCE_TIME) -> HRESULT #cpp_method;

    GetCurrentPadding: (this: *IAudioClient, pNumPaddingFrames: *u32) -> HRESULT #cpp_method;

    IsFormatSupported: (this: *IAudioClient, ShareMode: AUDCLNT_SHAREMODE, pFormat: *WAVEFORMATEX, ppClosestMatch: **WAVEFORMATEX) -> HRESULT #cpp_method;

    GetMixFormat: (this: *IAudioClient, ppDeviceFormat: **WAVEFORMATEX) -> HRESULT #cpp_method;

    GetDevicePeriod: (this: *IAudioClient, phnsDefaultDevicePeriod: *REFERENCE_TIME, phnsMinimumDevicePeriod: *REFERENCE_TIME) -> HRESULT #cpp_method;

    Start: (this: *IAudioClient) -> HRESULT #cpp_method;

    Stop: (this: *IAudioClient) -> HRESULT #cpp_method;

    Reset: (this: *IAudioClient) -> HRESULT #cpp_method;

    SetEventHandle: (this: *IAudioClient, eventHandle: HANDLE) -> HRESULT #cpp_method;

    GetService: (this: *IAudioClient, riid: *IID, ppv: **void) -> HRESULT #cpp_method;
}

IAudioClient_Initialize :: inline (this: *IAudioClient, ShareMode: AUDCLNT_SHAREMODE, StreamFlags: u32, hnsBufferDuration: REFERENCE_TIME, hnsPeriodicity: REFERENCE_TIME, pFormat: *WAVEFORMATEX, AudioSessionGuid: LPCGUID) -> HRESULT { return this.iaudioclient_vtable.Initialize(this, ShareMode, StreamFlags, hnsBufferDuration, hnsPeriodicity, pFormat, AudioSessionGuid); }

IAudioClient_GetBufferSize :: inline (this: *IAudioClient, pNumBufferFrames: *u32) -> HRESULT { return this.iaudioclient_vtable.GetBufferSize(this, pNumBufferFrames); }

IAudioClient_GetStreamLatency :: inline (this: *IAudioClient, phnsLatency: *REFERENCE_TIME) -> HRESULT { return this.iaudioclient_vtable.GetStreamLatency(this, phnsLatency); }

IAudioClient_GetCurrentPadding :: inline (this: *IAudioClient, pNumPaddingFrames: *u32) -> HRESULT { return this.iaudioclient_vtable.GetCurrentPadding(this, pNumPaddingFrames); }

IAudioClient_IsFormatSupported :: inline (this: *IAudioClient, ShareMode: AUDCLNT_SHAREMODE, pFormat: *WAVEFORMATEX, ppClosestMatch: **WAVEFORMATEX) -> HRESULT { return this.iaudioclient_vtable.IsFormatSupported(this, ShareMode, pFormat, ppClosestMatch); }

IAudioClient_GetMixFormat :: inline (this: *IAudioClient, ppDeviceFormat: **WAVEFORMATEX) -> HRESULT { return this.iaudioclient_vtable.GetMixFormat(this, ppDeviceFormat); }

IAudioClient_GetDevicePeriod :: inline (this: *IAudioClient, phnsDefaultDevicePeriod: *REFERENCE_TIME, phnsMinimumDevicePeriod: *REFERENCE_TIME) -> HRESULT { return this.iaudioclient_vtable.GetDevicePeriod(this, phnsDefaultDevicePeriod, phnsMinimumDevicePeriod); }

IAudioClient_Start :: inline (this: *IAudioClient) -> HRESULT { return this.iaudioclient_vtable.Start(this); }

IAudioClient_Stop :: inline (this: *IAudioClient) -> HRESULT { return this.iaudioclient_vtable.Stop(this); }

IAudioClient_Reset :: inline (this: *IAudioClient) -> HRESULT { return this.iaudioclient_vtable.Reset(this); }

IAudioClient_SetEventHandle :: inline (this: *IAudioClient, eventHandle: HANDLE) -> HRESULT { return this.iaudioclient_vtable.SetEventHandle(this, eventHandle); }

IAudioClient_GetService :: inline (this: *IAudioClient, riid: *IID, ppv: **void) -> HRESULT { return this.iaudioclient_vtable.GetService(this, riid, ppv); }

vtable :: (obj: *IAudioClient) -> *IAudioClient_VTable { return obj.iaudioclient_vtable; }



IAudioClient2_UUID :: "726778CD-F60A-4eda-82DE-E47610CD78AA";
IAudioClient2 :: struct {
    #as using iaudioclient: IAudioClient;
    #place iaudioclient; iaudioclient2_vtable: *IAudioClient2_VTable;
}
IAudioClient2_VTable :: struct #type_info_none {
    using iaudioclient: IAudioClient_VTable;
    IsOffloadCapable: (this: *IAudioClient2, Category: AUDIO_STREAM_CATEGORY, pbOffloadCapable: *BOOL) -> HRESULT #cpp_method;

    SetClientProperties: (this: *IAudioClient2, pProperties: *AudioClientProperties) -> HRESULT #cpp_method;

    GetBufferSizeLimits: (this: *IAudioClient2, pFormat: *WAVEFORMATEX, bEventDriven: BOOL, phnsMinBufferDuration: *REFERENCE_TIME, phnsMaxBufferDuration: *REFERENCE_TIME) -> HRESULT #cpp_method;
}

IAudioClient2_IsOffloadCapable :: inline (this: *IAudioClient2, Category: AUDIO_STREAM_CATEGORY, pbOffloadCapable: *BOOL) -> HRESULT { return this.iaudioclient2_vtable.IsOffloadCapable(this, Category, pbOffloadCapable); }

IAudioClient2_SetClientProperties :: inline (this: *IAudioClient2, pProperties: *AudioClientProperties) -> HRESULT { return this.iaudioclient2_vtable.SetClientProperties(this, pProperties); }

IAudioClient2_GetBufferSizeLimits :: inline (this: *IAudioClient2, pFormat: *WAVEFORMATEX, bEventDriven: BOOL, phnsMinBufferDuration: *REFERENCE_TIME, phnsMaxBufferDuration: *REFERENCE_TIME) -> HRESULT { return this.iaudioclient2_vtable.GetBufferSizeLimits(this, pFormat, bEventDriven, phnsMinBufferDuration, phnsMaxBufferDuration); }

vtable :: (obj: *IAudioClient2) -> *IAudioClient2_VTable { return obj.iaudioclient2_vtable; }


AudioClient3ActivationParams :: struct {
    tracingContextId: GUID;
}


IAudioClient3_UUID :: "7ED4EE07-8E67-4CD4-8C1A-2B7A5987AD42";
IAudioClient3 :: struct {
    #as using iaudioclient2: IAudioClient2;
    #place iaudioclient2; iaudioclient3_vtable: *IAudioClient3_VTable;
}
IAudioClient3_VTable :: struct #type_info_none {
    using iaudioclient2: IAudioClient2_VTable;
    GetSharedModeEnginePeriod: (this: *IAudioClient3, pFormat: *WAVEFORMATEX, pDefaultPeriodInFrames: *u32, pFundamentalPeriodInFrames: *u32, pMinPeriodInFrames: *u32, pMaxPeriodInFrames: *u32) -> HRESULT #cpp_method;

    GetCurrentSharedModeEnginePeriod: (this: *IAudioClient3, ppFormat: **WAVEFORMATEX, pCurrentPeriodInFrames: *u32) -> HRESULT #cpp_method;

    InitializeSharedAudioStream: (this: *IAudioClient3, StreamFlags: u32, PeriodInFrames: u32, pFormat: *WAVEFORMATEX, AudioSessionGuid: LPCGUID) -> HRESULT #cpp_method;
}

IAudioClient3_GetSharedModeEnginePeriod :: inline (this: *IAudioClient3, pFormat: *WAVEFORMATEX, pDefaultPeriodInFrames: *u32, pFundamentalPeriodInFrames: *u32, pMinPeriodInFrames: *u32, pMaxPeriodInFrames: *u32) -> HRESULT { return this.iaudioclient3_vtable.GetSharedModeEnginePeriod(this, pFormat, pDefaultPeriodInFrames, pFundamentalPeriodInFrames, pMinPeriodInFrames, pMaxPeriodInFrames); }

IAudioClient3_GetCurrentSharedModeEnginePeriod :: inline (this: *IAudioClient3, ppFormat: **WAVEFORMATEX, pCurrentPeriodInFrames: *u32) -> HRESULT { return this.iaudioclient3_vtable.GetCurrentSharedModeEnginePeriod(this, ppFormat, pCurrentPeriodInFrames); }

IAudioClient3_InitializeSharedAudioStream :: inline (this: *IAudioClient3, StreamFlags: u32, PeriodInFrames: u32, pFormat: *WAVEFORMATEX, AudioSessionGuid: LPCGUID) -> HRESULT { return this.iaudioclient3_vtable.InitializeSharedAudioStream(this, StreamFlags, PeriodInFrames, pFormat, AudioSessionGuid); }

vtable :: (obj: *IAudioClient3) -> *IAudioClient3_VTable { return obj.iaudioclient3_vtable; }



IAudioRenderClient_UUID :: "F294ACFC-3146-4483-A7BF-ADDCA7C260E2";
IAudioRenderClient :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudiorenderclient_vtable: *IAudioRenderClient_VTable;
}
IAudioRenderClient_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetBuffer: (this: *IAudioRenderClient, NumFramesRequested: u32, ppData: **u8) -> HRESULT #cpp_method;

    ReleaseBuffer: (this: *IAudioRenderClient, NumFramesWritten: u32, dwFlags: u32) -> HRESULT #cpp_method;
}

IAudioRenderClient_GetBuffer :: inline (this: *IAudioRenderClient, NumFramesRequested: u32, ppData: **u8) -> HRESULT { return this.iaudiorenderclient_vtable.GetBuffer(this, NumFramesRequested, ppData); }

IAudioRenderClient_ReleaseBuffer :: inline (this: *IAudioRenderClient, NumFramesWritten: u32, dwFlags: u32) -> HRESULT { return this.iaudiorenderclient_vtable.ReleaseBuffer(this, NumFramesWritten, dwFlags); }

vtable :: (obj: *IAudioRenderClient) -> *IAudioRenderClient_VTable { return obj.iaudiorenderclient_vtable; }



IAudioCaptureClient_UUID :: "C8ADBD64-E71E-48a0-A4DE-185C395CD317";
IAudioCaptureClient :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudiocaptureclient_vtable: *IAudioCaptureClient_VTable;
}
IAudioCaptureClient_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetBuffer: (this: *IAudioCaptureClient, ppData: **u8, pNumFramesToRead: *u32, pdwFlags: *u32, pu64DevicePosition: *u64, pu64QPCPosition: *u64) -> HRESULT #cpp_method;

    ReleaseBuffer: (this: *IAudioCaptureClient, NumFramesRead: u32) -> HRESULT #cpp_method;

    GetNextPacketSize: (this: *IAudioCaptureClient, pNumFramesInNextPacket: *u32) -> HRESULT #cpp_method;
}

IAudioCaptureClient_GetBuffer :: inline (this: *IAudioCaptureClient, ppData: **u8, pNumFramesToRead: *u32, pdwFlags: *u32, pu64DevicePosition: *u64, pu64QPCPosition: *u64) -> HRESULT { return this.iaudiocaptureclient_vtable.GetBuffer(this, ppData, pNumFramesToRead, pdwFlags, pu64DevicePosition, pu64QPCPosition); }

IAudioCaptureClient_ReleaseBuffer :: inline (this: *IAudioCaptureClient, NumFramesRead: u32) -> HRESULT { return this.iaudiocaptureclient_vtable.ReleaseBuffer(this, NumFramesRead); }

IAudioCaptureClient_GetNextPacketSize :: inline (this: *IAudioCaptureClient, pNumFramesInNextPacket: *u32) -> HRESULT { return this.iaudiocaptureclient_vtable.GetNextPacketSize(this, pNumFramesInNextPacket); }

vtable :: (obj: *IAudioCaptureClient) -> *IAudioCaptureClient_VTable { return obj.iaudiocaptureclient_vtable; }



IAudioClock_UUID :: "CD63314F-3FBA-4a1b-812C-EF96358728E7";
IAudioClock :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioclock_vtable: *IAudioClock_VTable;
}
IAudioClock_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetFrequency: (this: *IAudioClock, pu64Frequency: *u64) -> HRESULT #cpp_method;

    GetPosition: (this: *IAudioClock, pu64Position: *u64, pu64QPCPosition: *u64) -> HRESULT #cpp_method;

    GetCharacteristics: (this: *IAudioClock, pdwCharacteristics: *u32) -> HRESULT #cpp_method;
}

IAudioClock_GetFrequency :: inline (this: *IAudioClock, pu64Frequency: *u64) -> HRESULT { return this.iaudioclock_vtable.GetFrequency(this, pu64Frequency); }

IAudioClock_GetPosition :: inline (this: *IAudioClock, pu64Position: *u64, pu64QPCPosition: *u64) -> HRESULT { return this.iaudioclock_vtable.GetPosition(this, pu64Position, pu64QPCPosition); }

IAudioClock_GetCharacteristics :: inline (this: *IAudioClock, pdwCharacteristics: *u32) -> HRESULT { return this.iaudioclock_vtable.GetCharacteristics(this, pdwCharacteristics); }

vtable :: (obj: *IAudioClock) -> *IAudioClock_VTable { return obj.iaudioclock_vtable; }



IAudioClock2_UUID :: "6f49ff73-6727-49ac-a008-d98cf5e70048";
IAudioClock2 :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioclock2_vtable: *IAudioClock2_VTable;
}
IAudioClock2_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetDevicePosition: (this: *IAudioClock2, DevicePosition: *u64, QPCPosition: *u64) -> HRESULT #cpp_method;
}
IAudioClock2_GetDevicePosition :: inline (this: *IAudioClock2, DevicePosition: *u64, QPCPosition: *u64) -> HRESULT { return this.iaudioclock2_vtable.GetDevicePosition(this, DevicePosition, QPCPosition); }

vtable :: (obj: *IAudioClock2) -> *IAudioClock2_VTable { return obj.iaudioclock2_vtable; }



IAudioClockAdjustment_UUID :: "f6e4c0a0-46d9-4fb8-be21-57a3ef2b626c";
IAudioClockAdjustment :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioclockadjustment_vtable: *IAudioClockAdjustment_VTable;
}
IAudioClockAdjustment_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetSampleRate: (this: *IAudioClockAdjustment, flSampleRate: float) -> HRESULT #cpp_method;
}
IAudioClockAdjustment_SetSampleRate :: inline (this: *IAudioClockAdjustment, flSampleRate: float) -> HRESULT { return this.iaudioclockadjustment_vtable.SetSampleRate(this, flSampleRate); }

vtable :: (obj: *IAudioClockAdjustment) -> *IAudioClockAdjustment_VTable { return obj.iaudioclockadjustment_vtable; }



ISimpleAudioVolume_UUID :: "87CE5498-68D6-44E5-9215-6DA47EF883D8";
ISimpleAudioVolume :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; isimpleaudiovolume_vtable: *ISimpleAudioVolume_VTable;
}
ISimpleAudioVolume_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetMasterVolume: (this: *ISimpleAudioVolume, fLevel: float, EventContext: LPCGUID) -> HRESULT #cpp_method;

    GetMasterVolume: (this: *ISimpleAudioVolume, pfLevel: *float) -> HRESULT #cpp_method;

    SetMute: (this: *ISimpleAudioVolume, bMute: BOOL, EventContext: LPCGUID) -> HRESULT #cpp_method;

    GetMute: (this: *ISimpleAudioVolume, pbMute: *BOOL) -> HRESULT #cpp_method;
}

ISimpleAudioVolume_SetMasterVolume :: inline (this: *ISimpleAudioVolume, fLevel: float, EventContext: LPCGUID) -> HRESULT { return this.isimpleaudiovolume_vtable.SetMasterVolume(this, fLevel, EventContext); }

ISimpleAudioVolume_GetMasterVolume :: inline (this: *ISimpleAudioVolume, pfLevel: *float) -> HRESULT { return this.isimpleaudiovolume_vtable.GetMasterVolume(this, pfLevel); }

ISimpleAudioVolume_SetMute :: inline (this: *ISimpleAudioVolume, bMute: BOOL, EventContext: LPCGUID) -> HRESULT { return this.isimpleaudiovolume_vtable.SetMute(this, bMute, EventContext); }

ISimpleAudioVolume_GetMute :: inline (this: *ISimpleAudioVolume, pbMute: *BOOL) -> HRESULT { return this.isimpleaudiovolume_vtable.GetMute(this, pbMute); }

vtable :: (obj: *ISimpleAudioVolume) -> *ISimpleAudioVolume_VTable { return obj.isimpleaudiovolume_vtable; }


AUDIO_DUCKING_OPTIONS :: enum s32 {
    DEFAULT                   :: 0;
    DO_NOT_DUCK_OTHER_STREAMS :: 1;

    AUDIO_DUCKING_OPTIONS_DEFAULT                   :: DEFAULT;
    AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS :: DO_NOT_DUCK_OTHER_STREAMS;
}


IAudioClientDuckingControl_UUID :: "C789D381-A28C-4168-B28F-D3A837924DC3";
IAudioClientDuckingControl :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioclientduckingcontrol_vtable: *IAudioClientDuckingControl_VTable;
}
IAudioClientDuckingControl_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetDuckingOptionsForCurrentStream: (this: *IAudioClientDuckingControl, options: AUDIO_DUCKING_OPTIONS) -> HRESULT #cpp_method;
}
IAudioClientDuckingControl_SetDuckingOptionsForCurrentStream :: inline (this: *IAudioClientDuckingControl, options: AUDIO_DUCKING_OPTIONS) -> HRESULT { return this.iaudioclientduckingcontrol_vtable.SetDuckingOptionsForCurrentStream(this, options); }

vtable :: (obj: *IAudioClientDuckingControl) -> *IAudioClientDuckingControl_VTable { return obj.iaudioclientduckingcontrol_vtable; }


AUDIO_EFFECT_STATE :: enum s32 {
    OFF :: 0;
    ON  :: 1;

    AUDIO_EFFECT_STATE_OFF :: OFF;
    AUDIO_EFFECT_STATE_ON  :: ON;
}

AUDIO_EFFECT :: struct {
    id:          GUID;
    canSetState: BOOL;
    state:       AUDIO_EFFECT_STATE;
}


IAudioEffectsChangedNotificationClient_UUID :: "A5DED44F-3C5D-4B2B-BD1E-5DC1EE20BBF6";
IAudioEffectsChangedNotificationClient :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioeffectschangednotificationclient_vtable: *IAudioEffectsChangedNotificationClient_VTable;
}
IAudioEffectsChangedNotificationClient_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    OnAudioEffectsChanged: (this: *IAudioEffectsChangedNotificationClient) -> HRESULT #cpp_method;
}
IAudioEffectsChangedNotificationClient_OnAudioEffectsChanged :: inline (this: *IAudioEffectsChangedNotificationClient) -> HRESULT { return this.iaudioeffectschangednotificationclient_vtable.OnAudioEffectsChanged(this); }

vtable :: (obj: *IAudioEffectsChangedNotificationClient) -> *IAudioEffectsChangedNotificationClient_VTable { return obj.iaudioeffectschangednotificationclient_vtable; }



IAudioEffectsManager_UUID :: "4460B3AE-4B44-4527-8676-7548A8ACD260";
IAudioEffectsManager :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioeffectsmanager_vtable: *IAudioEffectsManager_VTable;
}
IAudioEffectsManager_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    RegisterAudioEffectsChangedNotificationCallback: (this: *IAudioEffectsManager, client: *IAudioEffectsChangedNotificationClient) -> HRESULT #cpp_method;

    UnregisterAudioEffectsChangedNotificationCallback: (this: *IAudioEffectsManager, client: *IAudioEffectsChangedNotificationClient) -> HRESULT #cpp_method;

    GetAudioEffects: (this: *IAudioEffectsManager, effects: **AUDIO_EFFECT, numEffects: *u32) -> HRESULT #cpp_method;

    SetAudioEffectState: (this: *IAudioEffectsManager, effectId: GUID, state: AUDIO_EFFECT_STATE) -> HRESULT #cpp_method;
}

IAudioEffectsManager_RegisterAudioEffectsChangedNotificationCallback :: inline (this: *IAudioEffectsManager, client: *IAudioEffectsChangedNotificationClient) -> HRESULT { return this.iaudioeffectsmanager_vtable.RegisterAudioEffectsChangedNotificationCallback(this, client); }

IAudioEffectsManager_UnregisterAudioEffectsChangedNotificationCallback :: inline (this: *IAudioEffectsManager, client: *IAudioEffectsChangedNotificationClient) -> HRESULT { return this.iaudioeffectsmanager_vtable.UnregisterAudioEffectsChangedNotificationCallback(this, client); }

IAudioEffectsManager_GetAudioEffects :: inline (this: *IAudioEffectsManager, effects: **AUDIO_EFFECT, numEffects: *u32) -> HRESULT { return this.iaudioeffectsmanager_vtable.GetAudioEffects(this, effects, numEffects); }

IAudioEffectsManager_SetAudioEffectState :: inline (this: *IAudioEffectsManager, effectId: GUID, state: AUDIO_EFFECT_STATE) -> HRESULT { return this.iaudioeffectsmanager_vtable.SetAudioEffectState(this, effectId, state); }

vtable :: (obj: *IAudioEffectsManager) -> *IAudioEffectsManager_VTable { return obj.iaudioeffectsmanager_vtable; }



IAudioStreamVolume_UUID :: "93014887-242D-4068-8A15-CF5E93B90FE3";
IAudioStreamVolume :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudiostreamvolume_vtable: *IAudioStreamVolume_VTable;
}
IAudioStreamVolume_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetChannelCount: (this: *IAudioStreamVolume, pdwCount: *u32) -> HRESULT #cpp_method;

    SetChannelVolume: (this: *IAudioStreamVolume, dwIndex: u32, fLevel: float) -> HRESULT #cpp_method;

    GetChannelVolume: (this: *IAudioStreamVolume, dwIndex: u32, pfLevel: *float) -> HRESULT #cpp_method;

    SetAllVolumes: (this: *IAudioStreamVolume, dwCount: u32, pfVolumes: *float) -> HRESULT #cpp_method;

    GetAllVolumes: (this: *IAudioStreamVolume, dwCount: u32, pfVolumes: *float) -> HRESULT #cpp_method;
}

IAudioStreamVolume_GetChannelCount :: inline (this: *IAudioStreamVolume, pdwCount: *u32) -> HRESULT { return this.iaudiostreamvolume_vtable.GetChannelCount(this, pdwCount); }

IAudioStreamVolume_SetChannelVolume :: inline (this: *IAudioStreamVolume, dwIndex: u32, fLevel: float) -> HRESULT { return this.iaudiostreamvolume_vtable.SetChannelVolume(this, dwIndex, fLevel); }

IAudioStreamVolume_GetChannelVolume :: inline (this: *IAudioStreamVolume, dwIndex: u32, pfLevel: *float) -> HRESULT { return this.iaudiostreamvolume_vtable.GetChannelVolume(this, dwIndex, pfLevel); }

IAudioStreamVolume_SetAllVolumes :: inline (this: *IAudioStreamVolume, dwCount: u32, pfVolumes: *float) -> HRESULT { return this.iaudiostreamvolume_vtable.SetAllVolumes(this, dwCount, pfVolumes); }

IAudioStreamVolume_GetAllVolumes :: inline (this: *IAudioStreamVolume, dwCount: u32, pfVolumes: *float) -> HRESULT { return this.iaudiostreamvolume_vtable.GetAllVolumes(this, dwCount, pfVolumes); }

vtable :: (obj: *IAudioStreamVolume) -> *IAudioStreamVolume_VTable { return obj.iaudiostreamvolume_vtable; }


AMBISONICS_TYPE :: enum s32 {
    FULL3D :: 0;
    AMBISONICS_TYPE_FULL3D :: FULL3D;
}

AMBISONICS_CHANNEL_ORDERING :: enum s32 {
    ACN :: 0;
    AMBISONICS_CHANNEL_ORDERING_ACN :: ACN;
}

AMBISONICS_NORMALIZATION :: enum s32 {
    SN3D :: 0;
    N3D  :: 1;

    AMBISONICS_NORMALIZATION_SN3D :: SN3D;
    AMBISONICS_NORMALIZATION_N3D  :: N3D;
}

AMBISONICS_PARAMS :: struct {
    u32Size:            u32;
    u32Version:         u32;
    u32Type:            AMBISONICS_TYPE;
    u32ChannelOrdering: AMBISONICS_CHANNEL_ORDERING;
    u32Normalization:   AMBISONICS_NORMALIZATION;
    u32Order:           u32;
    u32NumChannels:     u32;

    pu32ChannelMap:     *u32;
}


IAudioAmbisonicsControl_UUID :: "28724C91-DF35-4856-9F76-D6A26413F3DF";
IAudioAmbisonicsControl :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; iaudioambisonicscontrol_vtable: *IAudioAmbisonicsControl_VTable;
}
IAudioAmbisonicsControl_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    SetData: (this: *IAudioAmbisonicsControl, pAmbisonicsParams: *AMBISONICS_PARAMS, cbAmbisonicsParams: u32) -> HRESULT #cpp_method;

    SetHeadTracking: (this: *IAudioAmbisonicsControl, bEnableHeadTracking: BOOL) -> HRESULT #cpp_method;

    GetHeadTracking: (this: *IAudioAmbisonicsControl, pbEnableHeadTracking: *BOOL) -> HRESULT #cpp_method;

    SetRotation: (this: *IAudioAmbisonicsControl, X: float, Y: float, Z: float, W: float) -> HRESULT #cpp_method;
}

IAudioAmbisonicsControl_SetData :: inline (this: *IAudioAmbisonicsControl, pAmbisonicsParams: *AMBISONICS_PARAMS, cbAmbisonicsParams: u32) -> HRESULT { return this.iaudioambisonicscontrol_vtable.SetData(this, pAmbisonicsParams, cbAmbisonicsParams); }

IAudioAmbisonicsControl_SetHeadTracking :: inline (this: *IAudioAmbisonicsControl, bEnableHeadTracking: BOOL) -> HRESULT { return this.iaudioambisonicscontrol_vtable.SetHeadTracking(this, bEnableHeadTracking); }

IAudioAmbisonicsControl_GetHeadTracking :: inline (this: *IAudioAmbisonicsControl, pbEnableHeadTracking: *BOOL) -> HRESULT { return this.iaudioambisonicscontrol_vtable.GetHeadTracking(this, pbEnableHeadTracking); }

IAudioAmbisonicsControl_SetRotation :: inline (this: *IAudioAmbisonicsControl, X: float, Y: float, Z: float, W: float) -> HRESULT { return this.iaudioambisonicscontrol_vtable.SetRotation(this, X, Y, Z, W); }

vtable :: (obj: *IAudioAmbisonicsControl) -> *IAudioAmbisonicsControl_VTable { return obj.iaudioambisonicscontrol_vtable; }



IChannelAudioVolume_UUID :: "1C158861-B533-4B30-B1CF-E853E51C59B8";
IChannelAudioVolume :: struct {
    #as using iunknown: IUnknown;
    #place iunknown; ichannelaudiovolume_vtable: *IChannelAudioVolume_VTable;
}
IChannelAudioVolume_VTable :: struct #type_info_none {
    using iunknown: IUnknown_VTable;
    GetChannelCount: (this: *IChannelAudioVolume, pdwCount: *u32) -> HRESULT #cpp_method;

    SetChannelVolume: (this: *IChannelAudioVolume, dwIndex: u32, fLevel: float, EventContext: LPCGUID) -> HRESULT #cpp_method;

    GetChannelVolume: (this: *IChannelAudioVolume, dwIndex: u32, pfLevel: *float) -> HRESULT #cpp_method;

    SetAllVolumes: (this: *IChannelAudioVolume, dwCount: u32, pfVolumes: *float, EventContext: LPCGUID) -> HRESULT #cpp_method;

    GetAllVolumes: (this: *IChannelAudioVolume, dwCount: u32, pfVolumes: *float) -> HRESULT #cpp_method;
}

IChannelAudioVolume_GetChannelCount :: inline (this: *IChannelAudioVolume, pdwCount: *u32) -> HRESULT { return this.ichannelaudiovolume_vtable.GetChannelCount(this, pdwCount); }

IChannelAudioVolume_SetChannelVolume :: inline (this: *IChannelAudioVolume, dwIndex: u32, fLevel: float, EventContext: LPCGUID) -> HRESULT { return this.ichannelaudiovolume_vtable.SetChannelVolume(this, dwIndex, fLevel, EventContext); }

IChannelAudioVolume_GetChannelVolume :: inline (this: *IChannelAudioVolume, dwIndex: u32, pfLevel: *float) -> HRESULT { return this.ichannelaudiovolume_vtable.GetChannelVolume(this, dwIndex, pfLevel); }

IChannelAudioVolume_SetAllVolumes :: inline (this: *IChannelAudioVolume, dwCount: u32, pfVolumes: *float, EventContext: LPCGUID) -> HRESULT { return this.ichannelaudiovolume_vtable.SetAllVolumes(this, dwCount, pfVolumes, EventContext); }

IChannelAudioVolume_GetAllVolumes :: inline (this: *IChannelAudioVolume, dwCount: u32, pfVolumes: *float) -> HRESULT { return this.ichannelaudiovolume_vtable.GetAllVolumes(this, dwCount, pfVolumes); }

vtable :: (obj: *IChannelAudioVolume) -> *IChannelAudioVolume_VTable { return obj.ichannelaudiovolume_vtable; }


#scope_file

xaudio2_9 :: #system_library "xaudio2_9";
