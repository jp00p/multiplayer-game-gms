
// |---------------------------------|
// |       |
// |-------T-------------------------|
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
	if(throw_distance_remaining >= 0){
		var dr = throw_distance_remaining;
		with(bomb){
			image_blend = c_white;
			throwing = true;
			owner = noone;
			x = Approach(x,x_target,1);
			y = Approach(y,y_target,1);
			z = sin(((dr/bt)*pi))*bh;
		}
		throw_distance_remaining--;
	} else {
		with(bomb){
			lit = true;
		}
		bomb = -1;
		bomb_tick = 0;
		enemy_state = EnemyStateFollow;
		alarm[4] = 120;
	}
	
}