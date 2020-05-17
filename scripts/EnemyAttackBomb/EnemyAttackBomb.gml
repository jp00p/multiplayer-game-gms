path_end();
speed = 0;
var _target_dir = point_direction(x,y,attack_target_x,attack_target_y);
_windup_dir = -_target_dir;

var w_dir = _windup_dir;
var t_dir = _target_dir;

if(bomb_tick <= bomb_windup_timer){
	// telegraph
	
	with(bomb){
		image_blend = c_red;	
	}
	bomb_tick++;
	
} else {
	
	// throw bomb
	var bt = bomb_throw_distance;
	var bh = 16; // bounce height
	var xx = throw_orig_x;
	var yy = throw_orig_y;
	var x_target = xx + lengthdir_x(bt, t_dir);
	var y_target = yy + lengthdir_y(bt, t_dir);
	
		with(bomb){
			image_blend = c_white;
			throwing = true;
			length = room_speed/2;
			height = bh;
			owner = noone;
			start_x = xx;
			start_y = yy;
			target_x = x_target;
			target_y = y_target;
		}
	
		
	bomb = -1;
	bomb_tick = 0;
	enemy_state = EnemyStateFollow;
	alarm[4] = 120;
	
	
}