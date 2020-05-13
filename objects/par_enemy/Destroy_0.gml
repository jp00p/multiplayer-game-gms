/// @desc
repeat(5){
	xx = x + lengthdir_x(irandom_range(16,32), irandom(359));
	yy = y + lengthdir_y(irandom_range(16,32), irandom(359));
	instance_create_layer(xx, yy, "Instances", obj_coin);	
}