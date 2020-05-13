draw_set_font(fnt_text);
var h = display_get_gui_height();
var w = display_get_gui_width() * 0.5;
draw_line_color(w, 0, w, h, c_lime, c_aqua);

if(instance_exists(obj_player1)){
	
	var c = c_red;
	var c2 = c_dkgray;
	var bar_w = 128;
	var hp_percent = floor((obj_player1.hp / obj_player1.max_hp) * bar_w);
	draw_rectangle_color(16,16, bar_w, 32, c2, c2, c2, c2, false);
	draw_rectangle_color(16,16, hp_percent, 32, c, c, c, c, false);

}