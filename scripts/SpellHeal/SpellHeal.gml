if(!instance_exists(obj_player1)) exit;

	with(obj_player1){
		hp = min(hp+1, max_hp);
		var xx = x;
		var yy = y;
	}
	with(par_enemy){
		if(target != noone){
			threat[1] += 15;	
		}
	}
	with(obj_particle){
		part_particles_create_color(part_sys, xx, yy, part_type_heal, c_white, 100);
	}

player_state = PlayerStateFree;
