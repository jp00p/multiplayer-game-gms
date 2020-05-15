if(owner != noone && !throwing){
	x = owner.x;
	y = owner.y;
}

if(lit){
	throwing = false;
	fuse++;
	image_xscale = Wave(0.5, 1.05, -0.5, -1.05);
    image_yscale = Wave(0.5, 1, -0.5, -1);
}

if(fuse >= fuse_timer){
	instance_destroy();	
}

if(owner == noone){
	lit = true;	
	depth = y + 1;
} else {
	depth = owner.depth - 2;	
}
