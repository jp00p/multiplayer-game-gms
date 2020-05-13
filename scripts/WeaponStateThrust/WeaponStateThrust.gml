if(thrust_tick >= thrust_timer){
	x = lerp(x, target_x, 0.2);
	y = lerp(y, target_y, 0.2);
	thrust_tick = 0;
	thrust_complete = true;
} else {
	thrust_tick++;	
}
		
if(thrust_complete){
	weapon_state = WeaponStateNormal;
	thrusting = false;	
	thrust_complete = false;
	attacking = false;
}
		
