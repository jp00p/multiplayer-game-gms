/// @desc
draw_set_font(fnt_dmg);
draw_set_color(shadow);
draw_text(x+1,y+1,string(text));
draw_set_color(color);
draw_text(x,y,string(text));
draw_set_font(fnt_text);
draw_set_color(c_white);