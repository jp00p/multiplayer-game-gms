if(lit && !throwing){
	
	draw_circle_color(
		x, y, explosion_radius, c_red, c_maroon, true
	);

	draw_circle_color(
		x, y, ((fuse/fuse_timer)*explosion_radius), c_maroon, c_black, false
	);
	
}


draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y-z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);
