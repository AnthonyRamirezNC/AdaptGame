function scr_character_level_setter(){
	set_jump(obj_game_manager.jump_level);
	set_speed(obj_game_manager.speed_level);
	set_durability(obj_game_manager.durability_level);
	set_vision(obj_game_manager.vision_level);
	set_strength(obj_game_manager.strength_level);
}

function set_jump(lvl_jump) {
	if (lvl_jump == 1) {
		obj_player.jump_height = -10;
	} else if (lvl_jump == 2) {
		obj_player.jump_height = -14;
	} else if (lvl_jump == 3) {
		obj_player.jump_height = -18;
	} else {
		obj_player.jump_height = 0;
	}
}

function set_speed(lvl_speed) {
	if (lvl_speed == 1) {
		obj_player.move_speed = 4;
	} else if (lvl_speed == 2) {
		obj_player.move_speed = 6;
	} else if (lvl_speed == 3) {
		obj_player.move_speed = 8;
	} else {
		obj_player.move_speed = 0;
	}
}

function set_durability(lvl_durability) {
	if (lvl_durability == 1) {
		obj_game_manager.hp = 2;
	} else if (lvl_durability == 2) {
		obj_game_manager.hp = 3;
	} else if (lvl_durability == 3) {
		obj_game_manager.hp = 4;
	} else {
		obj_game_manager.hp = 2000;
	}
	show_debug_message(obj_game_manager.hp);
}

function set_vision(lvl_vision) {
	if (lvl_vision == 1) {
		camera_set_view_size(view_camera[0], 384, 216);
	} else if (lvl_vision == 2) {
		camera_set_view_size(view_camera[0], 576, 324);
	} else if (lvl_vision == 3) {
		camera_set_view_size(view_camera[0], 768, 432);
	} else {
		camera_set_view_size(view_camera[0], 192, 108);
	}
}

function set_strength(lvl_strength) {
	// lol wtf?
}


