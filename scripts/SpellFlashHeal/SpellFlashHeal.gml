resource_bar_amt = max(resource_bar_amt-100, 0);

if(!instance_exists(obj_player1)) exit;

	with(obj_player1){
		// heal the tank	
		hp = min(hp+10, max_hp);
		var xx = x;
		var yy = y;
		
	}
	
	with(par_enemy){
		// add threat to targets
		if(target != noone){
			threat[1] += 15;
		}
	}
	
	with(obj_particle){
		// create particles
		part_particles_create_color(part_sys, xx, yy, part_type_heal, c_white, 100);
	}


player_state = PlayerStateFree;
