////Description: Meant for debugging the dialogue options' look.
////Change the dialogueOption variables value to "you" or "others" depeding on what you want to test.
////Each room has every npc in it, just out of sight if its not their day there so it can be tested even if they are seemingly not there.

//dialogueOption = "you";
//if (dialogueOption != ""){

//	instance_destroy(objDialogueButtonOthers);
//	instance_destroy(objDialogueButtonYou);

//	if (dialogueOption == "you"){
//		interactedToday = arrayPush(interactedToday, "you");
//		dialogueOption = "";
//		instance_create_layer(x,y,"Instances", objText); //Create the message popup

//		var _msgArray = [];
//		var _num = -1;
//		var _currentRoom = room_get_name(room);
//		//Get data according to the room
//		switch (_currentRoom){
//			case "rShop":
//				_msgArray = data.textOptions.shop;
//				do {
//					_num = floor(random(array_length_1d(_msgArray)));
//				} until(arrayIncludes(data.textOptions.shopU, _num) == -1);
//				data.textOptions.shopU = arrayPush(data.textOptions.shopU, _num);
//				objText.msgArray = _msgArray[_num];
//				objText.msg = _msgArray[_num][0];
//			break;
//			case "rRestaurant":
//				_msgArray = data.textOptions.restaurant;
//				do {
//					_num = floor(random(array_length_1d(_msgArray)));
//				} until(arrayIncludes(data.textOptions.restaurantU, _num) == -1);
//				data.textOptions.restaurantU = arrayPush(data.textOptions.restaurantU, _num);
//				objText.msgArray = _msgArray[_num];
//				objText.msg = _msgArray[_num][0];
//			break;
//			case "rClothing":
//				_msgArray = data.textOptions.clothing;
//				do {
//					_num = floor(random(array_length_1d(_msgArray)));
//				} until(arrayIncludes(data.textOptions.clothingU, _num) == -1);
//				data.textOptions.clothingU = arrayPush(data.textOptions.clothingU, _num);
//				objText.msgArray = _msgArray[_num];
//				objText.msg = _msgArray[_num][0];
//			break;
//			case "rClassroom":
//				_msgArray = data.textOptions.classroom;
//				do {
//					_num = floor(random(array_length_1d(_msgArray)));
//				} until(arrayIncludes(data.textOptions.classroomU, _num) == -1);
//				data.textOptions.classroomU = arrayPush(data.textOptions.classroomU, _num);
//				objText.msgArray = _msgArray[_num];
//				objText.msg = _msgArray[_num][0];
//			break;
//			case "rCity":
//				_msgArray = data.textOptions.city;
//				do {
//					_num = floor(random(array_length_1d(_msgArray)));
//				} until(arrayIncludes(data.textOptions.cityU, _num) == -1);
//				data.textOptions.cityU = arrayPush(data.textOptions.cityU, _num);
//				objText.msgArray = _msgArray[_num];
//				objText.msg = _msgArray[_num][0];
//			break;
//		}
//	} else if (dialogueOption == "others"){
//		interactedToday = arrayPush(interactedToday, "other");
//		dialogueOption = "";
//		instance_create_layer(x,y,"Instances", objText); //Create the message popup

//		var _msgArray = [];
//		var _num = -1;
//		var _currentRoom = room_get_name(room);
//		_msgArray = data.textOptions.others;
//				do {
//					_num = floor(random(array_length_1d(_msgArray)));
//				} until(arrayIncludes(data.textOptions.othersU, _num) == -1);
//				data.textOptions.othersU = arrayPush(data.textOptions.othersU, _num);
//		objText.msgArray = _msgArray[_num];
//		objText.msg = _msgArray[_num][0];
//	} else if (dialogueOption != ""){
//		objPlayer.energy--;
//		var _msgArray = interacted;
//		_num = floor(random(array_length_1d(_msgArray)));
//		instance_create_layer(x,y,"Instances", objText);
//		objText.msgArray = _msgArray[_num];
//		objText.msg = _msgArray[_num][0];
//	}
	
//	dialogueOption = "";
//}