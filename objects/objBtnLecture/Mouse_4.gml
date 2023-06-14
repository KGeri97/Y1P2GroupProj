objTeacher.marked = value;
if (!instance_exists(objBtnEmptyBigHlgt)){
	instance_create_layer(x, y, "UI", objBtnEmptyBigHlgt);
} else if (instance_exists(objBtnEmptyBigHlgt)){
	instance_destroy(objBtnEmptyBigHlgt);
	instance_create_layer(x, y, "UI", objBtnEmptyBigHlgt);
}