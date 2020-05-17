if(attacking){
	with(other){
		hit_by = other.owner.id;
		event_perform(ev_other, ev_user0); // damage routine
	}
}