with(equipped){
	attacking = true;
	target_x = x + lengthdir_x(10, owner.facing);
	target_y = y + lengthdir_y(10, owner.facing);
	weapon_state = WeaponStateThrust;
}
player_state = PlayerStateFree;