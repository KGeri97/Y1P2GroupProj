if (playerState == "journal"){
	if (instance_exists(objBtnSelected)){
		instance_destroy(objBtnSelected);
	} else if (instance_exists(objBtnBigSelected)){
		instance_destroy(objBtnBigSelected);
	}
}