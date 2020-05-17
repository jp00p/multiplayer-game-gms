/// @desc deal damage to player if attacking
if(attacking){
	
	image_blend = c_white;
	
	
	with(other){
			hit_from = other.direction;
			event_perform(ev_other, ev_user0);
			if(other.poisoner){
				if(status != StatusPoison){
					status = StatusPoison;
					poison_damage = 1;
					poison_duration = room_speed * 10;
					poison_freq = 60;
					alarm[2] = room_speed * 10;
				}
			}
		
	}
	
	var xx = x+lengthdir_x(20, irandom(359));
	var yy = y+lengthdir_y(20, irandom(359));
	
	// todo: clean this up
	EnemyFindPathTo(xx,yy,3);

}