// swing state
if(!swinging){
	image_angle = lerp(image_angle, start_angle, 1);
} else {
	image_angle = lerp(image_angle, target_angle, 0.8);
}
	
if(image_angle == start_angle){
	swinging = true;	
}
	
if(image_angle == target_angle){ 
	swinging = false; 
	attacking = false;
	weapon_state = WeaponStateNormal;
}