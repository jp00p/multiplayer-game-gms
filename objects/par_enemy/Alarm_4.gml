/// @desc respawn bomb
bomb = instance_create_layer(x,y,"Instances",obj_bomb);
with(bomb){ owner = other.id; }
