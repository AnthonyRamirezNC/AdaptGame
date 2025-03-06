//cheat codes
//restart the room(Press ALT + R)
if(keyboard_check_pressed(ord("R"))){
	room_restart()
}

//restart the game(Press ALT + G)
if(keyboard_check_pressed(ord("G"))){
	game_restart()
}

// Go to next room if it exists
if (keyboard_check_pressed(ord("N"))) {
	if room_next(room) != -1
	{
	    room_goto_next();
	}
}

// Go to the previous room if it exists
if (keyboard_check_pressed(ord("P"))) {
    var prev_room = room_previous(room);
    if (prev_room != -1) {
        room_goto(prev_room);
    }
}


// Change viewport prototype of vision
if (keyboard_check_pressed(ord("V"))) {
	show_debug_message(view_camera[0]);
	if (vision_level == Vision.Level_1) {
		vision_level = Vision.Level_2;
		camera_set_view_size(view_camera[0], 777, 444);
	} else if (vision_level == Vision.Level_2) {
		vision_level = Vision.Level_3;
		camera_set_view_size(view_camera[0], 1029, 588);
	} else {
		vision_level = Vision.Level_1;
		camera_set_view_size(view_camera[0], 518, 296);
	}
}