if(cooldown <= 0){
	with(other){ // with player
		EquipWeapon(other.weapon);	 // equip weapon
	}
	instance_destroy();
} 