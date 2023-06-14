if (distance_to_object(objPlayer) <= INTERACTION_RANGE && objPlayer.keyUse && global.day < 3 && objPlayer.playerState == "free"){
	global.day++;
	objPlayer.energy = MAXNRG;
	objPlayer.canLecture = true;
	objDMRV.interactedToday = [];
	objJaanJuhan.interactedToday = [];
	objMadeKosasi.interactedToday = [];
	objNagyVivien.interactedToday = [];
	objOliverMurphy.interactedToday = [];
	
	var cam = view_get_camera(0);
	var cx = camera_get_view_x(cam);
	var cy = camera_get_view_y(cam);
	
	instance_create_layer(cx, cy, "UI", objDayTransition);
	dayTimeout = 100;
	objPlayer.playerState = "bound";
}

if (dayTimeout != 0){
	dayTimeout--;
} else if (dayTimeout == 0 && instance_exists(objDayTransition)){
	instance_destroy(objDayTransition);
	objPlayer.playerState = "free";
}