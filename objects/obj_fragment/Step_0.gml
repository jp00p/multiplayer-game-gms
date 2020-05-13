// bounce
if(bounce_count != 0){
		
	bounce += (pi * bounce_spd);
		
	if(bounce > pi){
			
		bounce -= pi;
		bounce_h *= 0.6;
		bounce_count--;
			
	}
	z = sin(bounce) * bounce_h;
		
		
} else {
	z = 0;
}
	
	
// decay
decay++;
if(decay > decay_after){
		
	image_alpha -= 1/decay_time;
	if(image_alpha <= 0){
		instance_destroy();
	}
		
}
	
	
// friction
fric = 0.05;
if(z == 0){
	fric = 0.10;
}
	
	
// move
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);
	
//if(tilemap_get_at_pixel(co_map,x,y) > 0){
//	spd = 0;
//}
	
// subtract fric from spd every frame til 0
spd = max(spd-fric, 0);
	
	
	
