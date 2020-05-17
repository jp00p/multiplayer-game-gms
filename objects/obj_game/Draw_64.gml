draw_set_font(fnt_text);
var h = display_get_gui_height();
var w = display_get_gui_width() * 0.5;
draw_line_color(w, 0, w, h, c_black, c_black);

draw_sprite(spr_coin_frame, 0, w, 18+coin_bounce);
draw_set_halign(fa_right);
draw_text(w+30, 16+coin_bounce, string(global.coins));
draw_set_halign(fa_left);