///@desc create_bullet
///@arg direction
///@arg speed
///@arg offsets

var _dir = argument[0];
var _spd = argument[1];
var _offset = argument[2];

var inst = instance_create_layer(x+lengthdir_x(_offset,_dir),y+lengthdir_y(_offset,_dir),"Instances", obj_bullet);
InitBullet(_dir, _spd, inst);