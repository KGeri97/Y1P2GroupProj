draw_sprite(sprUITextBox,0,0,y1)
draw_set_font(fntText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(msg,1,textProgress);
draw_text((x1 + x2) / 2, y1 + 6, _print);
draw_set_color(c_white);
draw_text((x1 + x2) / 2, y1 + 5, _print);