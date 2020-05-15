/// @desc take damage
if(hit == 0){
hit = 1;
player_interrupted = true;
var damage = irandom_range(1,3);
hp = max(hp-damage, 0);

//ScreenShake(player_cam, damage, 10);

with(instance_create_layer(x,y,"Instances",obj_damage_text)){
	text = damage;
	owner = other.id;
	y_start = other.y-10;
	y_to = y_start - 32;
}

move_distance_remaining = knockback_distance;
player_state = PlayerKnockback;
}