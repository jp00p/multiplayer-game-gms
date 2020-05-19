var curangle = image_angle;

// swing state
if(!swinging){
	if(swing_tick <= swing_timer_up){
		swinging = false;
		curangle = Approach(curangle, start_angle, swing_speed_up);
		swing_tick++;
	} else { 
		swing_tick = 0; 
		swinging = true;
		
	}
	
} else {
	if(swing_tick <= swing_timer_down){
		attacking = true;
		curangle = Approach(curangle, target_angle, swing_speed_down);
		
		with(obj_particle){
			part_type_direction(psword, -other.image_angle, -other.image_angle+90, 0, 0);
			part_particles_create(part_sys, other.x+lengthdir_x(other.sprite_width, other.image_angle), other.y+lengthdir_y(other.sprite_height, other.image_angle), psword, 3);	
		}
		
		

		swing_tick++;
	} else { 
		swing_tick = 0; 
		swinging = false; 
		attacking = false;
		weapon_state = WeaponStateNormal;
		target_angle = -1;
		start_angle = -1;
	}
}

image_angle = curangle;