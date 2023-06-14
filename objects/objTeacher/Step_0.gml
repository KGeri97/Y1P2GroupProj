
if (next){
	if (lectureProgress >= array_length_1d(lecture)){
		room_goto(rClassroom);
		objPlayer.state = "free";
	} else if (lectureProgress % 2 == 0){
		instance_create_layer(x,y,"UI", objText); //Create the message popup
		objText.msgArray = lecture[lectureProgress];
		objText.msg = lecture[lectureProgress][0];
	} else {
		var cam = view_get_camera(0);
		var cx = camera_get_view_x(cam);
		var cy = camera_get_view_y(cam);
		
		answers[0] = instance_create_layer(cx + RESOLUTION_W / 2, cy + 20, "UI", objBtnLecture);
		answers[0].value = 1;
		answers[1] = instance_create_layer(cx + RESOLUTION_W / 2, cy + 52, "UI", objBtnLecture);
		answers[1].value = 2;
		answers[2] = instance_create_layer(cx + RESOLUTION_W / 2, cy + 84, "UI", objBtnLecture);
		answers[2].value = 3;
		
		instance_create_layer(x,y,"UI", objTextInteractive); //Create the message popup
		objTextInteractive.msgArray = lecture[lectureProgress];
		objTextInteractive.msg = lecture[lectureProgress][0];
	}
}

next = false;