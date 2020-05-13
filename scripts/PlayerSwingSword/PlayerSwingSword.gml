with(equipped){
	attacking = true;
	var _add = -45;
	if(owner.image_xscale == -1) _add = 45;
	target_angle = owner.facing - angle_difference(owner.facing, owner.facing+_add);
	weapon_state = WeaponStateSlash;
}

player_state = PlayerStateFree;