if(attacking){
	with(other){
			if(hit == 0){
				
				with(other.owner){
					resource_bar_amt = min(resource_bar_amt+20, resource_bar_max);
				}
				
				flash = 0.5;
				hit_by = other.owner.id; 
				event_perform(ev_other, ev_user0); // enemy damage routine
				threat[0] += 10; // add threat
				
			}					
		}
}