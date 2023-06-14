function arrayIncludes(array, value){
	var _ind = -1;
	if (array_length_1d(array) != 0){
		var i = 0
		while (i < array_length_1d(array) && _ind == -1){
			if (array[i] == value){
				_ind = i;	
			}
			i++;
		}
	}
	return _ind;
};

function arrayPush(array, value){
	var _length	= array_length_1d(array);
	array[_length] = value;
	return array;
}