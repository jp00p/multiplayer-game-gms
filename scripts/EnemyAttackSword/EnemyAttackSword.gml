var _target_dir = point_direction(x,y,target.x,target.y);

facing = _target_dir;

var _add;
if(image_xscale == -1){
	_add = -90;
} else {
	_add = 90;	
}

if(sword_attack_tick >= sword_attack_timer){
	
	if(sword_state == 0){ // first wind up
		image_blend = c_orange;
		if(sword_windup_tick <= sword_windup_timer){
			// wind up	
			with(equipped){
				start_angle = owner.facing - angle_difference(_target_dir, _target_dir+_add);
				swinging = true;
				image_blend = c_fuchsia;
				image_angle = Approach(image_angle, start_angle, 15);
			}
			sword_windup_tick++;
		} else {
			sword_attack_tick = 0; // reset tick when complete
			sword_windup_tick = 0; // reset wind up
			sword_state = 1; // go forward next
		}
		
	} else if (sword_state == 1) { // charge!
		
		if(sword_swing_tick <= sword_swing_timer){
			// only these frames will do damage
			image_blend = c_purple;
			//attacking = true;
			sword_swing_tick++;
			path_end();
			
			xx = lerp(x, target.x, 0.05);
			yy = lerp(y, target.y, 0.05);
			EnemyFindPathTo(xx, yy, 8);
			with(equipped){
				attacking = true;
				target_angle = owner.facing - angle_difference(_target_dir, _target_dir-_add);
				image_blend = c_orange;
				image_angle = Approach(image_angle, target_angle, 15);
			}
		} else {
			// turn off attacking, reset
			attacking = false;
			equipped.swinging = false;
			equipped.attacking = false;
			equipped.image_blend = c_white;
			sword_swing_tick = 0;
			sword_state = 0;
			sword_attack_tick = 0;
			sword_windup_tick = 0;
			enemy_state = EnemyStateFollow;
			enemy_attack_tick = 0;
			enemy_attack_state = -1;
		}
		
	} else {
		image_blend = c_white;	
	}
	
} else {
	sword_attack_tick++;	
}
