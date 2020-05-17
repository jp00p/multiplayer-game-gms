//var dest = image_angle - angle_difference(image_angle, owner.facing);
//image_angle = lerp(image_angle, dest, 0.4);
image_angle = owner.facing;

var _add;
if(owner.image_xscale == -1){
	_add = -swing_angle;
} else {
	_add = swing_angle;	
}

start_angle = owner.facing - angle_difference(owner.facing, owner.facing+_add);
target_angle = owner.facing - angle_difference(owner.facing, owner.facing-_add);