if (lectureProgress <= array_length_1d(lecture) && lectureProgress % 2 == 1){
	var cam = view_get_camera(0);
	var cx = camera_get_view_x(cam);
	var cy = camera_get_view_y(cam);
	
	draw_set_font(fntText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	
	var _print = lecture[lectureProgress][1];
	draw_text(cx + RESOLUTION_W / 2, cy + 14, _print);
	draw_set_color(c_white);
	draw_text(cx + RESOLUTION_W / 2, cy + 13, _print);
	
	draw_set_color(c_black);
	var _print = lecture[lectureProgress][2];
	draw_text(cx + RESOLUTION_W / 2, cy + 47, _print);
	draw_set_color(c_white);
	draw_text(cx + RESOLUTION_W / 2, cy + 46, _print);

	draw_set_color(c_black);
	var _print = lecture[lectureProgress][3];
	draw_text(cx + RESOLUTION_W / 2, cy + 78, _print);
	draw_set_color(c_white);
	draw_text(cx + RESOLUTION_W / 2, cy + 77, _print);
}