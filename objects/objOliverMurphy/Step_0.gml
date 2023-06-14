//Interaction
//Interact bubble
if (distance_to_object(objPlayer) <= INTERACTION_RANGE && objPlayer.playerState == "free" && objPlayer.canInteract){
	if (!instance_exists(objInteract)){
		textBox = instance_create_layer(x + 5, y - 17,"Instances",objInteract);
	}
} else {
	if (instance_exists(objInteract) && textBox != ""){
		instance_destroy(textBox);
	}
}

// Set message
if (objPlayer.keyUse && objPlayer.canInteract && objPlayer.playerState == "free" && !instance_exists(objText) && global.interactionCooldown = 0 && distance_to_object(objPlayer) < INTERACTION_RANGE){
	objPlayer.playerState = "interaction";
	//write text on bubble
	
	var cam = view_get_camera(0);
	var cx = camera_get_view_x(cam);
	var cy = camera_get_view_y(cam);
	
	instance_create_layer(cx + RESOLUTION_W / 2 - 120, cy + RESOLUTION_H / 2, "UI", objDialogueButtonYou);
	instance_create_layer(cx + RESOLUTION_W / 2 + 5, cy + RESOLUTION_H / 2, "UI", objDialogueButtonOthers);	
	objDialogueButtonYou.caller = object_index;
	objDialogueButtonOthers.caller = object_index;
} else if (objPlayer.keyEsc && objPlayer.playerState == "interaction" && instance_exists(objDialogueButtonYou)){
	instance_destroy(objDialogueButtonOthers);
	instance_destroy(objDialogueButtonYou);
	objPlayer.playerState = "free";
};

if (dialogueOption != ""){

	instance_destroy(objDialogueButtonOthers);
	instance_destroy(objDialogueButtonYou);

	if (dialogueOption == "you" && arrayIncludes(interactedToday, "you") == -1){
		interactedToday = arrayPush(interactedToday, "you");
		dialogueOption = "";
		instance_create_layer(x,y,"Instances", objText); //Create the message popup

		var _msgArray = [];
		var _num = -1;
		var _currentRoom = room_get_name(room);
		//Get data according to the room
		switch (_currentRoom){
			case "rShop":
				_msgArray = data.textOptions.shop;
				do {
					_num = floor(random(array_length_1d(_msgArray)));
				} until(arrayIncludes(data.textOptions.shopU, _num) == -1);
				data.textOptions.shopU = arrayPush(data.textOptions.shopU, _num);
				objText.msgArray = _msgArray[_num];
				objText.msg = _msgArray[_num][0];
			break;
			case "rRestaurant":
				_msgArray = data.textOptions.restaurant;
				do {
					_num = floor(random(array_length_1d(_msgArray)));
				} until(arrayIncludes(data.textOptions.restaurantU, _num) == -1);
				data.textOptions.restaurantU = arrayPush(data.textOptions.restaurantU, _num);
				objText.msgArray = _msgArray[_num];
				objText.msg = _msgArray[_num][0];
			break;
			case "rClothing":
				_msgArray = data.textOptions.clothing;
				do {
					_num = floor(random(array_length_1d(_msgArray)));
				} until(arrayIncludes(data.textOptions.clothingU, _num) == -1);
				data.textOptions.clothingU = arrayPush(data.textOptions.clothingU, _num);
				objText.msgArray = _msgArray[_num];
				objText.msg = _msgArray[_num][0];
			break;
			case "rClassroom":
				_msgArray = data.textOptions.classroom;
				do {
					_num = floor(random(array_length_1d(_msgArray)));
				} until(arrayIncludes(data.textOptions.classroomU, _num) == -1);
				data.textOptions.classroomU = arrayPush(data.textOptions.classroomU, _num);
				objText.msgArray = _msgArray[_num];
				objText.msg = _msgArray[_num][0];
			break;
			case "rCity":
				_msgArray = data.textOptions.city;
				do {
					_num = floor(random(array_length_1d(_msgArray)));
				} until(arrayIncludes(data.textOptions.cityU, _num) == -1);
				data.textOptions.cityU = arrayPush(data.textOptions.cityU, _num);
				objText.msgArray = _msgArray[_num];
				objText.msg = _msgArray[_num][0];
			break;
		}
	} else if (dialogueOption == "others" && arrayIncludes(interactedToday, "other") == -1){
		interactedToday = arrayPush(interactedToday, "other");
		dialogueOption = "";
		instance_create_layer(x,y,"Instances", objText); //Create the message popup

		var _msgArray = [];
		var _num = -1;
		var _currentRoom = room_get_name(room);
		_msgArray = data.textOptions.others;
				do {
					_num = floor(random(array_length_1d(_msgArray)));
				} until(arrayIncludes(data.textOptions.othersU, _num) == -1);
				data.textOptions.othersU = arrayPush(data.textOptions.othersU, _num);
		objText.msgArray = _msgArray[_num];
		objText.msg = _msgArray[_num][0];
	} else if (dialogueOption != ""){
		objPlayer.energy--;
		var _msgArray = interacted;
		_num = floor(random(array_length_1d(_msgArray)));
		instance_create_layer(x,y,"Instances", objText);
		objText.msgArray = _msgArray[_num];
		objText.msg = _msgArray[_num][0];
	}
	
	dialogueOption = "";
}