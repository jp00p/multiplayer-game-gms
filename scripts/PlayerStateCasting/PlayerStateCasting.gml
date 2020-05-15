if(!instance_exists(obj_player1)) exit;

if(cast_timer <= 0){
	
	if(point_distance(x,y,obj_player1.x,obj_player1.y) > 150){
		
		// out of range
		player_interrupted = true;
		
	} else if (collision_line(x,y,obj_player1.x,obj_player1.y,obj_solid,false,true)){
		
		// no los
		player_interrupted = true;
		
	} else {
		
		// cast spell
		player_interrupted = false;
		script_execute(spell);
		
	}
	
} else {
	
	// player casting spell
	
	with(obj_particle){
		part_particles_create(part_sys, other.x, other.y, pcast, 1);	
	}
	cast_timer -= 1;
	
}

if(player_interrupted or input_magnitude != 0){
	
	// getting hit or moving will interrupt
	player_state = PlayerStateFree;
	player_interrupted = false;
	
}