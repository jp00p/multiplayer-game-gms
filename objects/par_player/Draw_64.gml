/// @desc draw skills and hp/resource

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


var meter_x = w + 16;
var meter_y = bar_start_y;
var meter_w = meter_x + 128;
var meter_h = meter_y + 12;

var c1 = c_black;
var c2 = c_white;
var c3 = c_red;
var c4 = resource_bar_color;
var hp_percent = (hp/max_hp)*128;
var resource_percent = (resource_bar_amt/resource_bar_max)*128;
var meter_subimg;
if(player_num == 1){ 
	meter_subimg = 1;
} else {
	meter_subimg = 2;
}

draw_set_alpha(0.5);
draw_rectangle_color(bar_start_x, bar_start_y, bar_w, bar_h, c1, c1, c1, c1, false);
draw_set_alpha(1);

draw_set_halign(fa_left);
draw_text_color(bar_start_x+2, bar_start_y-16+2, player_skill_name[selected_skill], c1,c1,c1,c1,0.8);
draw_text(bar_start_x, bar_start_y-16, player_skill_name[selected_skill]);

// draw health and resource meters
for(var j=1; j<=2; j++){
	
	// health
	draw_rectangle_color(meter_x, meter_y, meter_w, meter_h, c1, c1, c1, c1, true);
	draw_sprite_stretched(spr_meters, 0, meter_x, meter_y, hp_percent, 13);
	//draw_rectangle_color(meter_x, meter_y, meter_x+hp_percent, meter_h, c3, c3, c3, c3, false);
	
	// mana/rage
	draw_rectangle_color(meter_x, meter_y+24, meter_w, meter_h+24, c4, c4, c4, c4, true);
	draw_sprite_stretched(spr_meters, meter_subimg, meter_x, meter_y+24, resource_percent, 13);
	//draw_rectangle_color(meter_x, meter_y+24, meter_x+resource_percent, meter_h+24, c4, c4, c4, c4, false);
	
}

// draw skill boxes (4 of em)(
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
	
	if(player_skill_cooldown_tick[i] > 0){
		draw_set_alpha(0.5);
		draw_rectangle_color(
			(icon_x), icon_y + abs((((player_skill_cooldown_tick[i]/player_skill_cooldown[i])*32)-32)),
			(icon_x2), icon_y+cs,
			c1, c1, c1, c1, false
		)	
		draw_set_alpha(1);
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
