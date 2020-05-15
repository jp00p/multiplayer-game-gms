if(thrust_tick >= thrust_timer){
	
	for(var i=0; i<=thrust_length; i++){
		var target_x = x + lengthdir_x(thrust_length, owner.facing);
		var target_y = y + lengthdir_y(thrust_length, owner.facing);
	
		x = Approach(x, target_x, 0.5);
		y = Approach(y, target_y, 0.5);
	
		if(i == thrust_length){
			thrust_tick = 0;
			thrust_complete = true;
		}
	}
	
} else {
	thrust_tick++;	
}
		
if(thrust_complete){
	weapon_state = WeaponStateNormal;
	thrusting = false;	
	thrust_complete = false;
	attacking = false;
}
		
