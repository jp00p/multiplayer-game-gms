/// @desc
if(instance_exists(owner)){
	x = owner.x;
	y = owner.y-4;
	depth = owner.depth-1;
	if(!owner.attacking && !swinging && !attacking){
		image_angle = lerp(image_angle, owner.facing, 0.5);
	}
}