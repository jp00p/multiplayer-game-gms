if(!instance_exists(par_player)) exit;



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


script_execute(weapon_state);
