var _target_dir = point_direction(x,y,attack_target_x,attack_target_y);

if(charge_atk_tick >= charge_attack_timer){
	
	if(charge_state == 0){ // first wind up
		image_blend = c_orange;
		if(wind_up_tick <= wind_up_timer){
			// wind up	
			EnemyFindPathTo(x-lengthdir_x(wind_up_distance,_target_dir), y-lengthdir_y(wind_up_distance,_target_dir), 0.5);
			wind_up_tick++;
		} else {
			charge_atk_tick = 0; // reset tick when complete
			wind_up_tick = 0; // reset wind up
			charge_state = 1; // go forward next
		}
		
	} else if (charge_state == 1) { // charge!
		// only these frames will do damage
		if(charge_tick <= charge_timer){
			image_blend = c_purple;
			attacking = true;
			charge_tick++;
			EnemyFindPathTo(attack_target_x, attack_target_y, 8);
		} else {
			// turn off attacking, reset
			attacking = false;
			image_blend = c_white;
			charge_tick = 0;
			charge_state = 0;
			charge_atk_tick = 0;
			wind_up_tick = 0;
			enemy_state = EnemyStateFollow;
			enemy_attack_tick = 0;
			enemy_attack_state = -1;
		}	
	} else {
		image_blend = c_white;	
	}
	
} else {
	charge_atk_tick++;	
}
