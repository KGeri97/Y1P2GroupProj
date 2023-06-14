if (instance_exists(objBtnSelected)){
		instance_destroy(objBtnSelected);
	} else if (instance_exists(objBtnBigSelected)){
		instance_destroy(objBtnBigSelected);
	}
	
	objPlayer.journalMark = [];
	objPlayer.playerState = "free";
	
	for (var i = 10; i < 15; i++){// Saving the journal progression
		if (objPlayer.journalInst[i] != ""){
			global.accusations[i - 10][1] = objPlayer.journalInst[i].sprite_index;
		}
	}
	
	//Destroying journal objects
	instance_destroy(objJournalMain);
	for (var i = 0; i < array_length_1d(objPlayer.journalInst); i++){
		instance_destroy(objPlayer.journalInst[i]);
	}	

room_goto(rDorm);
objPlayer.x = 150;
objPlayer.y = 60;