/// @desc take damage
if(hit == 0){
	ScreenShake(hit_by.player_cam, 5, 5);
	hit = 1;
	hp--;
	alarm[0] = 15;
	if(hp <= 0){
		instance_destroy();	
	}
}