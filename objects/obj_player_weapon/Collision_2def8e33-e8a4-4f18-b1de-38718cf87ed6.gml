if(attacking){
	with(other){
			if(hit == 0){
				hit_by = other.owner.id; 
				event_perform(ev_other, ev_user0); // enemy damage routine
				tank_threat += 10; // add threat
			}					
		}
}