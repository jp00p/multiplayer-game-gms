/// @desc draw skills
var w = display_get_gui_width()*0.5*(player_num-1);
var h = display_get_gui_height();
var cs = 32;
var pad = 32;
var cp = 12;
var bar_start_x = w + 164;
var bar_start_y = h-80;
var icon_x = bar_start_x + 14;
var icon_x2;
var icon_y = bar_start_y+14;
var bar_w = bar_start_x+(cs*4)+(pad*2);
var bar_h = bar_start_y+cs+pad-4;
var c1 = c_black;
var c2 = c_white;

draw_set_alpha(0.5);
draw_rectangle_color(bar_start_x, bar_start_y, bar_w, bar_h, c1, c1, c1, c1, false);
draw_set_alpha(1);

draw_set_halign(fa_left);
draw_text_color(bar_start_x+2, bar_start_y-16+2, player_skill_name[selected_skill], c1,c1,c1,c1,0.8);
draw_text(bar_start_x, bar_start_y-16, player_skill_name[selected_skill]);


for(var i=1; i<=4; i++;){
	
	if(i == selected_skill){ 
		c2 = c_yellow;
	} else {
		c2 = c_white;
	}
		
	icon_x2 = icon_x + cs;
	
	draw_rectangle_color(
		(icon_x), icon_y, 
		(icon_x2), icon_y+cs,
		c1, c1, c1, c1, false
	);
	
	if(player_skill_icon[i] != -1){
		draw_sprite_stretched(spr_skills,player_skill_icon[i],icon_x,icon_y,34,34);
	}
	
	draw_rectangle_color(
		(icon_x), icon_y, 
		(icon_x2), icon_y+cs,
		c2, c2, c2, c2, true
	);
	
	icon_x = icon_x + (cs+cp);
	
	//icon 1 x = icon_x
	//icon 1 x2 = icon_x + 32
	
	//icon 2 x = 36 (icon1_x + cs + cp) * i
	//icon 2 x2 = 68 (icon2_x + cs) 
}
