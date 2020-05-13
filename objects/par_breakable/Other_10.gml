/// @desc take damage
if(hit == 0){
	hit = 1;
	hp--;
	alarm[0] = 15;
	if(hp <= 0){
		instance_destroy();	
	}
}