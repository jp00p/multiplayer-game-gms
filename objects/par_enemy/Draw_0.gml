///@desc draw aggro lines
draw_self();

if(target != noone) { 
	//draw_line_color(x,y,attack_target_x,attack_target_y,c_fuchsia,c_white);	
}

draw_circle_color(x,y,enemy_sight_range,c_red,c_red,1);
draw_circle_color(x,y,enemy_attack_range,c_maroon,c_maroon,1);
draw_circle_color(x,y,enemy_forget_range,c_green,c_green,1);


if(target != noone){
	draw_set_alpha(0.1);
	draw_line_color(x,y,target.x,target.y,c_white,c_red);
	draw_set_alpha(1);
}