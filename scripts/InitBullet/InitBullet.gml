///@desc init_bullet
///@arg direction
///@arg speed
///@arg bullet_instance

var _dir = argument[0];
var _spd = argument[1];
var inst = argument[2];
var _creator = id;


with(inst){
	direction = _dir;
	if(object_index == obj_bullet){
		speed = _spd;
	}
	//faction = _fac;
	owner = _creator;
}