if(target != noone && threat[0] > threat[1]){
	target = obj_player1;
} else if (target != noone && threat[1] > threat[0]){
	target = obj_player2;
}

if (target == noone){ // no target, is there one closer?
	
	var closest = instance_nearest(x,y,par_player); // find nearest player
	
	if(
		(distance_to_object(closest) < enemy_sight_range) // range 
		and
		(!collision_line(x,y,closest.x,closest.y,obj_solid,false,true)) // line of sight
	){
		target = closest; // set target if in range and visible
		enemy_state = EnemyStateFollow;
		path_end();
	} else {
		enemy_state = EnemyStateIdle;	
	}

}


// threat decay over time
threat[0] = max(threat[0] - 0.025, 0);
threat[1] = max(threat[1] - 0.025, 0);
