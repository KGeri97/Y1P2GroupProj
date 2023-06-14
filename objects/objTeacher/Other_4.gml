var _num = -1;
do {
	_num = floor(random(array_length_1d(global.npcData.teacher.lectures)));
} until(arrayIncludes(global.npcData.teacher.lecturesU, _num) == -1);

lecture = global.npcData.teacher.lectures[_num];
global.npcData.teacher.lecturesU = arrayPush(global.npcData.teacher.lecturesU, _num);
lectureProgress = 0;
next = true;