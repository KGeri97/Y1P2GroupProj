//Player input
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) or keyboard_check(vk_up);
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
keyUse = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_space);
keyJournal = keyboard_check(ord("J"));
keyEsc = keyboard_check(vk_escape);

//Calculating direction
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) or (keyDown - keyUp != 0);

//Calculating the speed on the corresponding axis
vx = lengthdir_x(inputMagnitude * vPlayer, inputDirection);
vy = lengthdir_y(inputMagnitude * vPlayer, inputDirection);

//MOVEMENT
//Moving the player

if (playerState == "free"){
	playerCollision(); //Checks for collision and moves accordingly
}

//ANIMATION
//Update sprite index
var oldSprite = sprite_index;
if (inputMagnitude != 0 && playerState == "free"){
	direction = inputDirection;
	sprite_index = sprWalk;
} else {
	sprite_index = sprIdle;
}
if (oldSprite != sprite_index) {
	localFrame = 0;	
}

animatePlayer();

//INTERACTION
if (energy == 0){
	canInteract = false;	
} else if ((distance_to_object(objDMRV) <= INTERACTION_RANGE ||
			distance_to_object(objJaanJuhan) <= INTERACTION_RANGE ||
			distance_to_object(objMadeKosasi) <= INTERACTION_RANGE ||
			distance_to_object(objNagyVivien) <= INTERACTION_RANGE ||
			distance_to_object(objOliverMurphy) <= INTERACTION_RANGE) && playerState == "free"){
	canInteract = true;
} else {
	canInteract = false;
}

//JOURNAL
if (playerState == "free" && keyJournal){//Opening up the journal
	playerState = "journal";
	
	journalInst = []; //Keeping track of all the instances that was created fo the journal
	
	var cam = view_get_camera(0);
	var cx = camera_get_view_x(cam);
	var cy = camera_get_view_y(cam) + 10;
	
	var d = (RESOLUTION_W - 5 * 16) / 6;
	//Placing the characters on the journal screen
	journalInst[0] = instance_create_layer(cx + d + 0 * 16, cy + RESOLUTION_H / 3, "UI", objDMRV);
	journalInst[1] = instance_create_layer(cx + d * 2 + 1 * 16, cy + RESOLUTION_H / 3, "UI", objJaanJuhan);
	journalInst[2] = instance_create_layer(cx + d * 3 + 2 * 16, cy + RESOLUTION_H / 3, "UI", objMadeKosasi);
	journalInst[3] = instance_create_layer(cx + d * 4 + 3 * 16, cy + RESOLUTION_H / 3, "UI", objNagyVivien);
	journalInst[4] = instance_create_layer(cx + d * 5 + 4 * 16, cy + RESOLUTION_H / 3, "UI", objOliverMurphy);
	//Placing the name tags over the characters
	journalInst[5] = instance_create_layer(cx + d + 0 * 16, cy + RESOLUTION_H / 3 - 30, "UI", objNameDavid);
	journalInst[6] = instance_create_layer(cx + d * 2 + 1 * 16, cy + RESOLUTION_H / 3 - 30, "UI", objNameJaan);
	journalInst[7] = instance_create_layer(cx + d * 3 + 2 * 16, cy + RESOLUTION_H / 3 - 30, "UI", objNameMade);
	journalInst[8] = instance_create_layer(cx + d * 4 + 3 * 16, cy + RESOLUTION_H / 3 - 30, "UI", objNameVivien);
	journalInst[9] = instance_create_layer(cx + d * 5 + 4 * 16, cy + RESOLUTION_H / 3 - 30, "UI", objNameOliver);
	//// Placing the country markers
	journalInst[10] = instance_create_layer(cx + d + 0 * 16, cy + RESOLUTION_H / 3 + 30, "UI", objBtnEmpty);
	journalInst[11] = instance_create_layer(cx + d * 2 + 1 * 16, cy + RESOLUTION_H / 3 + 30, "UI", objBtnEmpty);
	journalInst[12] = instance_create_layer(cx + d * 3 + 2 * 16, cy + RESOLUTION_H / 3 + 30, "UI", objBtnEmpty);
	journalInst[13] = instance_create_layer(cx + d * 4 + 3 * 16, cy + RESOLUTION_H / 3 + 30, "UI", objBtnEmpty);
	journalInst[14] = instance_create_layer(cx + d * 5 + 4 * 16, cy + RESOLUTION_H / 3 + 30, "UI", objBtnEmpty);
	//// Placing the country selectors
	journalInst[15] = instance_create_layer(cx + d + 0 * 16, cy + RESOLUTION_H / 3 + 70, "UI", objBtnCst);
	journalInst[16] = instance_create_layer(cx + d * 2 + 1 * 16, cy + RESOLUTION_H / 3 + 70, "UI", objBtnEst);
	journalInst[17] = instance_create_layer(cx + d * 3 + 2 * 16, cy + RESOLUTION_H / 3 + 70, "UI", objBtnInd);
	journalInst[18] = instance_create_layer(cx + d * 4 + 3 * 16, cy + RESOLUTION_H / 3 + 70, "UI", objBtnHun);
	journalInst[19] = instance_create_layer(cx + d * 5 + 4 * 16, cy + RESOLUTION_H / 3 + 70, "UI", objBtnFaker);
	journalInst[20] = instance_create_layer(cx + d * 3 + 2 * 16, cy + RESOLUTION_H / 3 + 100, "UI", objCountryBtn);
	////Placing the dorm button
	journalInst[21] = instance_create_layer(cx + d - 24, cy + RESOLUTION_H / 3 + 86, "UI", objBtnDorm);
	//Placing the end button
	
	//Loading the marks
	for (var i = 0; i < 5; i++){
		if (global.accusations[i][1] != ""){
			journalInst[i + 10].sprite_index = global.accusations[i][1];
			journalInst[i + 10].country = global.accusations[i][0];
		}
	}
	
} else if(playerState == "journal" && keyEsc){//Closing the journal
	if (instance_exists(objBtnSelected)){
		instance_destroy(objBtnSelected);
	} else if (instance_exists(objBtnBigSelected)){
		instance_destroy(objBtnBigSelected);
	}
	
	journalMark = [];
	playerState = "free";
	
	for (var i = 10; i < 15; i++){// Saving the journal progression
		if (journalInst[i] != ""){
			global.accusations[i - 10][1] = journalInst[i].sprite_index;
			global.accusations[i - 10][0] = journalInst[i].country;
		}
	}
	
	//Destroying journal objects
	instance_destroy(objJournalMain);
	for (var i = 0; i < array_length_1d(journalInst); i++){
		instance_destroy(journalInst[i]);
	}	
	if (instance_exists(objEndGame)){
		instance_destroy(objEndGame);
	}
}

if (playerState == "journal"){
	if (global.day == 3 &&
		(journalInst[10].country == "faker" ||
		journalInst[11].country == "faker" ||
		journalInst[12].country == "faker" ||
		journalInst[13].country == "faker" ||
		journalInst[14].country == "faker")){
			var cam = view_get_camera(0);
			var cx = camera_get_view_x(cam);
			var cy = camera_get_view_y(cam) + 10;
			journalInst[22] = instance_create_layer(cx + RESOLUTION_W - 33, cy + RESOLUTION_H - 15, "UI", objEndGame);
		} else if (instance_exists(objEndGame)){
			instance_destroy(objEndGame);
		}
}

if (array_length_1d(journalMark) == 2){
	journalMark[0].sprite_index = journalMark[1].sprite_index; //Changing the sprite of a button
	journalMark[0].country = journalMark[1].country
	journalMark = [];
} else if (array_length_1d(journalMark) == 1){
	if (journalMark[0].sprite_index == sprBtnEmpty){
		instance_create_layer(journalMark[0].x, journalMark[0].y, "UI", objBtnSelected);
	} else {
		instance_create_layer(journalMark[0].x, journalMark[0].y, "UI", objBtnBigSelected);
	}
}

//Popup when near transition or bed
if ((distance_to_object(objTransition) < INTERACTION_RANGE || distance_to_object(objBed) < INTERACTION_RANGE) && playerState == "free"){
	if (!instance_exists(objInteract)){
		interactionMarker = instance_create_layer(x + 5, y - 17,"UI",objInteract);
	} else {
		instance_destroy(interactionMarker);
		interactionMarker = instance_create_layer(x + 5, y - 17,"UI",objInteract);
	}
} else {
	if (instance_exists(objInteract) && interactionMarker != ""){
		instance_destroy(interactionMarker);
		interactionMarker = "";
	}
}

	