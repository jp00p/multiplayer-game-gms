/// @desc deal damage to player if attacking
if(attacking){
	
	image_blend = c_white;
	
	
	with(other){
		if(hit == 0){
			hit_from = other.direction;
			event_perform(ev_other, ev_user0);
			alarm[1] = 30;
		}
	}
	
	var xx = x+lengthdir_x(20, irandom(359));
	var yy = y+lengthdir_y(20, irandom(359));
	
	EnemyFindPathTo(xx,yy,3);

}