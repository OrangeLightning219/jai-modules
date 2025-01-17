Rect_WH :: struct 
{
    w: s32;
    h: s32;
}

Rect_XYWH :: struct 
{
    x: s32;
    y: s32;
    w: s32;
    h: s32;
}

Rect_XYWHF :: struct 
{
    x:       s32;
    y:       s32;
    w:       s32;
    h:       s32;
    flipped: bool;
}

Callback_Result :: enum 
{
    ABORT_PACKING;
    CONTINUE_PACKING;
}

Successful_Insertion_Callback :: #type (rect: Rect_XYWH, user_data: *void) -> Callback_Result #c_call;
Failed_Insertion_Callback :: #type (rect: Rect_XYWH, user_data: *void) -> Callback_Result #c_call;

Rectpack_Data :: struct {
    max_side:                  s32;
    discard_step:              s32;
    rectangles:                *void;
    successful_insertion_proc: Successful_Insertion_Callback;
    failed_insertion_proc:     Failed_Insertion_Callback;
    user_data:                 *void;
}

init_rectpack :: (max_side: s32, discard_step: s32, successful_insertion_proc: Successful_Insertion_Callback, failed_insertion_proc: Failed_Insertion_Callback, user_data: *void) -> *Rectpack_Data #foreign rectpack2d "init_rectpack";

add_rectangle :: (data: *Rectpack_Data, width: s32, height: s32) -> void #foreign rectpack2d "add_rectangle";

Rectpack_Result :: struct {
    result_size: Rect_WH;
    data:        *Rect_XYWH;
    count:       s32;
}

pack_rectangles :: (data: *Rectpack_Data) -> Rectpack_Result #foreign rectpack2d "pack_rectangles";

deinit_rectpack :: (data: *Rectpack_Data) -> void #foreign rectpack2d "deinit_rectpack";

#scope_file

#import "Basic"; // For assert

rectpack2d :: #library,no_dll "windows/rectpack2d";