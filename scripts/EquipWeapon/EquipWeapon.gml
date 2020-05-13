///@desc EquipWeapon(weapon)
///@arg weapon

with(equipped){
	var weapon_type = object_index;
	var spr = sprite_index;
	with(instance_create_layer(x+42,y+42,"Instances", obj_weapon_pickup)){
		weapon = weapon_type;
		sprite_index = spr;
	}
	instance_destroy();
}

equipped = instance_create_layer(x,y,"Instances",argument0);

with(equipped){
	owner = other.id;
}