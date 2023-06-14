var _color;
if (energy > MAXNRG * 0.75){
	_color = c_green;
} else if (energy > MAXNRG * 0.3){
	_color = c_yellow;
} else {
	_color = c_red;
}

draw_rectangle_color(7, 7, 32 * (energy / MAXNRG) + 7, 16, _color, _color, _color, _color, false);
draw_sprite(sprEnergy,1,5,5);