/// @desc
if(global.coins >= price){
	instance_destroy();
	global.coins -= price;
}