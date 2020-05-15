/// @desc
ScreenShake(global.cam_1, 20, 15);
ScreenShake(global.cam_2, 20, 15);
var _list = ds_list_create();
var _num = collision_circle_list(x, y, 100, par_player, false, true, _list, false);
if _num > 0
    {
    for (var i = 0; i < _num; ++i;)
        {
			with(_list[| i]){
				event_perform(ev_other, ev_user0);	
			}
        }
    }
ds_list_destroy(_list);