var c = c_white;

//draw_self();

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

if(show_radius_timer > 0){
	draw_circle_color(x,y,player_skill_range[selected_skill],c_lime,c_lime,true);
}


var c = c_red;
if(cast_timer > 0){
draw_rectangle_color(x-8,y-24, x+abs(cast_timer/spell_bar_timer)*8-8, y-20, c, c, c, c, false);
}