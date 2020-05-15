if(flash != 0) {
	shader_set(shd_flash);
	shader_set_uniform_f(u_flash, flash);
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

if(shader_current() != -1){
	shader_reset();
}

if(target != noone) { 
	//draw_line_color(x,y,attack_target_x,attack_target_y,c_fuchsia,c_white);	
}

//draw_circle_color(x,y,enemy_sight_range,c_red,c_red,1);
//draw_circle_color(x,y,enemy_attack_range,c_maroon,c_maroon,1);
//draw_circle_color(x,y,enemy_forget_range,c_green,c_green,1);


if(target != noone){
	draw_set_alpha(random_range(0.2,0.4));
	draw_line_color(x,y,target.x,target.y,c_white,c_red);
	draw_set_alpha(1);
}