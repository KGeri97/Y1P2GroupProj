lerpProgress += (1 - lerpProgress) / 50;
textProgress += TEXT_SPEED;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))){
	var _msgLen = string_length(msg);
	
	if (textProgress >= _msgLen && objTeacher.marked != ""){
		//50% not to consume energy on good answer
		if (objTeacher.marked == objTeacher.lecture[objTeacher.lectureProgress][4] && floor(random(2)) == 1){
		} else {
			objPlayer.energy--;
		}
		
		for (var i = 0; i < 3; i++){//Removing the answer bubbles
			instance_destroy(objTeacher.answers[i]);
		}
		instance_destroy(objBtnEmptyBigHlgt);
		objTeacher.marked = "";
		
		instance_destroy();
		if (room_get_name(room) == "rLecture"){
			objTeacher.lectureProgress++;
			objTeacher.next = true;
		}
	} else if(textProgress > 2) {
		textProgress = _msgLen;
	}
}