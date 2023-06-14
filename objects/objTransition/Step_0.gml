if (distance_to_object(objPlayer) <= INTERACTION_RANGE && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E")))){
	if (room_get_name(room) == "rDorm"){
		
		if (objPlayer.canLecture){
		
		var cam = view_get_camera(0);
		var cx = camera_get_view_x(cam);
		var cy = camera_get_view_y(cam);
		
		instance_create_layer(cx + RESOLUTION_W / 2 - 34, cy + RESOLUTION_H / 2, "UI", objBtnClass);
		instance_create_layer(cx + RESOLUTION_W / 2 + 34, cy + RESOLUTION_H / 2, "UI", objBtnCity);	
		objPlayer.playerState = "bound";
		} else {
			destination = "rCity";
		}
	}
	
	switch (destination){
		case "rShop": 
			room_goto(rShop); 
			objPlayer.x = transX;
			objPlayer.y = transY;
		break;
		case "rCity": 
			room_goto(rCity); 
			objPlayer.x = transX;
			objPlayer.y = transY;
		break;
		case "rRestaurant": 
			room_goto(rRestaurant); 
			objPlayer.x = transX;
			objPlayer.y = transY;
		break;
		case "rClassroom": 
			room_goto(rClassroom); 
			objPlayer.x = transX;
			objPlayer.y = transY;
		break;
		case "rClothing": 
			room_goto(rClothing); 
			objPlayer.x = transX;
			objPlayer.y = transY;
		break;
	}
}