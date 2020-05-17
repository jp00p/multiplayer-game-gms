if(cast_on_self){
	if(cast_timer <= 0){
		script_execute(spell);
		player_state = PlayerStateFree;
	} else {
		// while casting...
		with(obj_particle){
			// casting aura
			part_particles_create(part_sys, other.x, other.y, pcast, 1);	
		}
	
		cast_timer = max(cast_timer-1, 0);
		
		if(player_interrupted or input_magnitude != 0){
			// getting hit or moving will interrupt
			player_state = PlayerStateFree;
			player_interrupted = false; // reset check for next time
			cast_timer = 0;
		}
	}
} else {

	if(!instance_exists(obj_player1)) exit;

	if(cast_timer <= 0){
	
		// when cast time is complete
		// check that we still have los and range
	
		if(point_distance(x,y,obj_player1.x,obj_player1.y) > spell_range){
		
			// out of range
			player_interrupted = true;
		
		} else if (collision_line(x,y,obj_player1.x,obj_player1.y,obj_solid,false,true)){
		
			// no los
			player_interrupted = true;
		
		} else {
		
			// cast the spell!
			script_execute(spell);
			player_state = PlayerStateFree;
		
		}
	
	} else {
	
		// while casting...
		with(obj_particle){
			// casting aura
			part_particles_create(part_sys, other.x, other.y, pcast, 1);	
		}
	
		cast_timer = max(cast_timer-1, 0);
	
	}

	if(player_interrupted or input_magnitude != 0){
		// getting hit or moving will interrupt
		player_state = PlayerStateFree;
		player_interrupted = false; // reset check for next time
		cast_timer = 0;
	}
}