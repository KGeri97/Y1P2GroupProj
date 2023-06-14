function animatePlayer(){
	var cardinalDirection = round(direction/90); //Translates direction to a number: 0 right, 1 up, 2 left, 3 down
	var totalFrames = sprite_get_number(sprite_index) / 4; // Get the total frames of an animation. Gets all the frames of the current sprite and divides it by the number of directions
	image_index = localFrame + (cardinalDirection * totalFrames); //Sets the frame to the first of the proper direction
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE; // Animates according to the frame rate
	
	if (localFrame >= totalFrames){
		animationEnd = true;
		localFrame -= totalFrames;
	} else {
		animationEnd = false;
	}
}