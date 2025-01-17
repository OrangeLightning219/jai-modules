#import,file "module.jai";
#import "Basic";

main :: ()
{
    success_proc :: (rect: Rect_XYWH, user_data: *void) -> Callback_Result #c_call
    {
        push_context,defer_pop;
        rects := cast(*[..]Rect_XYWH)user_data;
        array_add(rects, rect);
        print("rects count: %\n", rects.count);
        return .CONTINUE_PACKING;
    }

    fail_proc :: (rect: Rect_XYWH, user_data: *void) -> Callback_Result #c_call
    {
        return .ABORT_PACKING;
    }

    test_data: [..]Rect_XYWH;
    data := init_rectpack(4096, -4, success_proc, fail_proc, *test_data);
    add_rectangle(data, 20, 40);
	add_rectangle(data, 120, 40);
	add_rectangle(data, 85, 59);
	add_rectangle(data, 199, 380);
	add_rectangle(data, 85, 875);

    result := pack_rectangles(data);
    rectangles: []Rect_XYWH;
    rectangles.data = result.data;
    rectangles.count = result.count;

    print("final result: %, %\n", result.result_size.w, result.result_size.h);
    print("rects: %\n", test_data.count);
    for rectangles
    {
        print("% % % %\n", it.x, it.y, it.w, it.h);
    }
}