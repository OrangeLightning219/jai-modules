#import "Basic";

HB_FEATURE_GLOBAL_END :: 0xFFFFFFFF;


KERNING_TAG :: #run hb_tag_from_string( "kern", -1 );
LIGATURE_TAG :: #run hb_tag_from_string( "liga", -1 );
CONTEXT_LIGATURE_TAG :: #run hb_tag_from_string( "clig", -1 );

KERNING_FEATURE :: hb_feature_t.{tag = KERNING_TAG, value = 1, start = HB_FEATURE_GLOBAL_START, end = HB_FEATURE_GLOBAL_END};
LIGATURE_FEATURE :: hb_feature_t.{tag = LIGATURE_TAG, value = 1, start = HB_FEATURE_GLOBAL_START, end = HB_FEATURE_GLOBAL_END};
CONTEXT_LIGATURE_FEATURE :: hb_feature_t.{tag = CONTEXT_LIGATURE_TAG, value = 1, start = HB_FEATURE_GLOBAL_START, end = HB_FEATURE_GLOBAL_END};

HB_DEFAULT_FEATURES :: hb_feature_t.[KERNING_FEATURE, LIGATURE_FEATURE, CONTEXT_LIGATURE_FEATURE];

#scope_module

#if OS == .WINDOWS
{
    #load "windows.jai";
}
else 
{
    #load "unix.jai";
}