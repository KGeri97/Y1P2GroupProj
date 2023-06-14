function box9slice(sprite, x1, y1, x2, y2, index){
	//@arg sprite
	//@arg x1 left
	//@arg y1 top
	//@arg x2 right
	//@arg y2 bottom
	//@arg index image index
	
	var _size = sprite_get_width(sprite) / 3;
	var _w = x2 - x1;
	var _h = y2 - y1;

	// Middle
	draw_sprite_part_ext(sprite, index, _size, _size, 1, 1, x1 + _size, y1 + _size, _w - (_size * 2), _h - (_size * 2), c_white, 1);

	//Corners
	//Top left
	draw_sprite_part(sprite, index, 0, 0, _size, _size, x1, y1);
	//Top Right
	draw_sprite_part(sprite, index, _size * 2, 0, _size, _size, x1 + _w - _size, y1);
	//Bottom left
	draw_sprite_part(sprite, index, 0, _size * 2, _size, _size, x1, y1 + _h - _size);
	//Bottom right
	draw_sprite_part(sprite, index, _size * 2, _size * 2, _size, _size, x1 + _w - _size, y1 + _h - _size);

	//Edges
	//Left
	draw_sprite_part_ext(sprite, index, 0, _size, _size, 1, x1, y1 + _size, 1, _h - (_size * 2), c_white, 1);
	//Right
	draw_sprite_part_ext(sprite, index, _size * 2, _size, _size, 1, x1 + _w - _size, y1 + _size, 1, _h - (_size * 2), c_white, 1);
	//Top
	draw_sprite_part_ext(sprite, index, _size, 0, 1, _size, x1 + _size, y1, _w - (_size * 2), 1, c_white, 1);
	//Bottom
	draw_sprite_part_ext(sprite, index, _size, _size * 2, 1, _size, x1 + _size, y1 + _h - (_size), _w - (_size * 2), 1, c_white, 1);
}