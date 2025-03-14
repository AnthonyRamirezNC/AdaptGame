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
		prev = true
        room_goto(prev_room);
    }
}


// Change viewport prototype of vision
if (keyboard_check_pressed(ord("V"))) {
	if (vision_level == 1) {
		vision_level = 2;
		energy_used += 1
	} else if (vision_level == 2) {
		vision_level = 3;
		energy_used += 1
	} else {
		vision_level = 1;
		energy_used -= 2
	}
	set_vision(vision_level);
}