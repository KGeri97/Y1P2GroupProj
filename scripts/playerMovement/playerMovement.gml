function playerCollision(){
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + vx, y)){ // cheacks if there is a horizontal collision
		x -= x mod TILE_SIZE; //Snap to the left of the tile
		
		if (sign(vx) == 1){ //Checks whether the player moves right
			x += TILE_SIZE - 1; //Snaps to the right side of the tile
		}
		
		vx = 0;
		_collision = true;
	}
	
	//Horizontal move commit
	x += vx;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vy)){
		y -= y mod TILE_SIZE;
		
		if (sign(vy) == 1){
			y += TILE_SIZE - 1;
		}
		
		vy = 0;
		_collision = true;
	}
	
	//Vertical move commit
	y += vy;
	
	return _collision;
}