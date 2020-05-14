var _add = testadd;

var curangle = image_angle;

// swing state
if(!swinging){
	curangle = Approach(curangle, start_angle, swing_speed_up);
} else {
	curangle = Approach(curangle, target_angle, swing_speed_down);
}
	
if(curangle == start_angle){
	swinging = true;	
}
	
if(curangle == target_angle){ 
	swinging = false; 
	attacking = false;
	weapon_state = WeaponStateNormal;
	target_angle = -1;
	start_angle = -1;
}

image_angle = curangle;