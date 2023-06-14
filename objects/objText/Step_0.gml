lerpProgress += (1 - lerpProgress) / 50;
textProgress += TEXT_SPEED;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))){
	var _msgLen = string_length(msg);
	
	if (textProgress >= _msgLen && msgArrayCounter + 1 == array_length_1d(msgArray)){
		objPlayer.playerState = "free";
		msgArrayCounter = 0;
		instance_destroy();
		global.interactionCooldown = 10;
		if (room_get_name(room) == "rLecture"){
			objTeacher.lectureProgress++;
			objTeacher.next = true;
		}
	} else if(textProgress >= _msgLen && msgArrayCounter + 1 < array_length_1d(msgArray)){
		msgArrayCounter++;
		msg = msgArray[msgArrayCounter]
		textProgress = 0;
	} else if(textProgress > 2) {
		textProgress = _msgLen;
	}
}