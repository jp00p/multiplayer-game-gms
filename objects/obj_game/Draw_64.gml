draw_set_font(fnt_text);
var h = display_get_gui_height();
var w = display_get_gui_width() * 0.5;
draw_line_color(w, 0, w, h, c_lime, c_aqua);

draw_sprite(spr_frame_chain, 0, 32, 0);
draw_sprite_ext(spr_frame_chain, 0, (w*2)-32, 0, -1, 1, 0, c_white, 1);

var padx = 16;
var pady = 4;
var c = c_white;
draw_sprite(spr_health, 0, padx, pady);
draw_sprite_stretched(spr_healthbar, 0, 27+padx, 6+pady, 100, 12);

//draw_sprite_ext(spr_health, 0, (w*2)-padx, pady, -1, 1, 0, c_white, 1);
//draw_sprite_general(spr_healthbar, 0, 0, 0, 100, 12, (w*2)-padx-32, 6+pady, -2, 1, 0, c, c, c, c, 1);


draw_sprite(spr_coin_frame, 0, w, 18+coin_bounce);
draw_set_halign(fa_right);
draw_text(w+30, 16+coin_bounce, string(global.coins));
draw_set_halign(fa_left);