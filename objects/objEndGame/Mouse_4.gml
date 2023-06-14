list = objPlayer.journalInst;

var p = 10;

if (list[p].country == "costa rica"){
		instance_create_layer(list[p].x, list[p].y, "UI", objBC);
} else {
	if (list[p].country != ""){
		instance_create_layer(list[p].x, list[p].y, "UI", objBW);
	} else {
		instance_create_layer(list[p].x, list[p].y, "UI", objSW);
	}
}

p = 11;

if (list[p].country == "estonia"){
		instance_create_layer(list[p].x, list[p].y, "UI", objBC);
} else {
	if (list[p].country != ""){
		instance_create_layer(list[p].x, list[p].y, "UI", objBW);
	} else {
		instance_create_layer(list[p].x, list[p].y, "UI", objSW);
	}
}

p = 12;

if (list[p].country == "indonesia"){
		instance_create_layer(list[p].x, list[p].y, "UI", objBC);
} else {
	if (list[p].country != ""){
		instance_create_layer(list[p].x, list[p].y, "UI", objBW);
	} else {
		instance_create_layer(list[p].x, list[p].y, "UI", objSW);
	}
}

p = 13;

if (list[p].country == "hungary"){
		instance_create_layer(list[p].x, list[p].y, "UI", objBC);
} else {
	if (list[p].country != ""){
		instance_create_layer(list[p].x, list[p].y, "UI", objBW);
	} else {
		instance_create_layer(list[p].x, list[p].y, "UI", objSW);
	}
}

p = 14;

if (list[p].country == "faker"){
		instance_create_layer(list[p].x, list[p].y, "UI", objBC);
} else {
	if (list[p].country != ""){
		instance_create_layer(list[p].x, list[p].y, "UI", objBW);
	} else {
		instance_create_layer(list[p].x, list[p].y, "UI", objSW);
	}
}
