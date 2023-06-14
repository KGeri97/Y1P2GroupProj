x = xstart;
y = ystart;

if (room_get_name(room) != "rLecture"){
	data = global.npcData.dmrv;

	for (var i = 0; i < array_length_1d(global.schedule); i++){
		if (global.schedule[i][0] == object_index && global.schedule[i][global.day] != room_get_name(room)){
			x = - 200;
		}
	}
}