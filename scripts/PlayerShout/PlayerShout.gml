resource_bar_amt = max(resource_bar_amt-20, 0);
ScreenShake(player_cam, 15, 25);

var _list = ds_list_create();
var _num = collision_circle_list(x, y, player_skill_range[selected_skill], par_enemy, false, true, _list, false);
if _num > 0
    {
    for (var i = 0; i < _num; ++i;)
        {
	        with(_list[| i]){
				threat[0] += 50;
				threat[1] = max(threat[1] - 25, 0);
			}
        }
    }
ds_list_destroy(_list);

var _list = ds_list_create();
var _num = collision_circle_list(x, y, player_skill_range[selected_skill], par_breakable, false, true, _list, false);
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

player_state = PlayerStateFree;