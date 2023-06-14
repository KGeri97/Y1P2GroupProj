collisionMap = layer_tilemap_get_id(layer_get_id("boundingBarrier")); //Storing the boundingBarrier tilelayer in a variable

image_speed = 0;	//Animation speed
vx = 0;				//Horizontal velocity
vy = 0;				//Vertical velocity
vPlayer = 2.0;		//Max speed

//Assigning the sprites to variables in case it changes during game
sprIdle = sprPlayer;
sprWalk = sprPlayerWalk;
localFrame = 0;
canInteract = false;
currentRoom = "rCity";

//Variable init
playerState = "free";
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) or keyboard_check(vk_up);
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
keyUse = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_space);
keyJournal = keyboard_check(ord("J"));
keyEsc = keyboard_check(vk_escape);

interactionMarker = "";
journalMark = [];
energy = MAXNRG;
canLecture = true;