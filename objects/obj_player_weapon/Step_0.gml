if(!instance_exists(par_player)) exit;



if(!attacking){
	
	var dest = image_angle - angle_difference(image_angle, owner.facing);
	image_angle = lerp(image_angle, dest, 0.5);
}

if(float_timer > 0){
//	y += irandom_range(-5, 5);	
}

if(owner.input_magnitude != 0){
	weapon_bounce_timer--;
	if(weapon_bounce_timer <= 0){
		y = lerp(y + irandom_range(-2, 4), y, 0.5);
		weapon_bounce_timer = max_weapon_bounce;
	}
}

depth = owner.depth-1;
var _add = 45;
if(owner.image_xscale == -1) _add = -45;
start_angle = owner.facing - angle_difference(owner.facing, owner.facing+_add);
script_execute(weapon_state);
