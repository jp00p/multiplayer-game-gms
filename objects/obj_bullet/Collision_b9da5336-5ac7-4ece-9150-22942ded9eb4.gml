if(owner.id == obj_player1.id){
	other.threat[0] += 10;	
} else if (owner.id == obj_player2.id){
	other.threat[1] += 10;
} else {
	exit;	
}

var owner_id = owner.id;

with(other) {
	hit_by = other.owner;
	event_perform(ev_other, ev_user0);
}

instance_destroy();