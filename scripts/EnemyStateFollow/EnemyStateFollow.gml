//var new_angle = point_direction(x, y, target.x, target.y);
//new_angle = image_angle - angle_difference(image_angle, new_angle);
//image_angle = lerp(image_angle, new_angle, 0.1);
h_spd = 0;
v_spd = 0;

if(target != noone) direction = -target.direction;
var dir = direction div 90;
if(dir <= 1){ image_xscale = 1 } else { image_xscale = -1; }

// how fast do they follow?
if(step_timer >= enemy_follow_frequency){
	// move along path towards target
	alarm[1] = 20;
	step_timer = 0;
} else {
	step_timer++;
}


// perform attack on target if in range
if(target != noone && point_distance(x,y,target.x,target.y) < enemy_attack_range){
	attack_target_x = target.x;
	attack_target_y = target.y;
	enemy_state = EnemyStateAttack;
	
		// choose attack here
	
		enemy_attack_state = EnemyAttackCharge;	
	
}

if(point_distance(x,y,target.x,target.y) > enemy_forget_range){ // out of range
	// check threat here too
	// if lots of threat, don't stop following
	target = noone;
	alarm[3] = 60;
}