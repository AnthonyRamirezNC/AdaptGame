//Checks where mouse is and if the left or right button are hit
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, all) = id) {
	if (obj_game_manager.energy_used < obj_game_manager.energy_max) {
		if (obj_game_manager.speed_level >= 0 and obj_game_manager.speed_level < 3) {
			obj_game_manager.energy_used += 1;
			obj_game_manager.speed_level += 1;
			scr_character_level_setter();
		}
	}
} else if (mouse_check_button_pressed(mb_right) && instance_position(mouse_x, mouse_y, all) = id) {
	if (obj_game_manager.speed_level > 0 and obj_game_manager.speed_level <= 3) {
		obj_game_manager.energy_used -= 1;
		obj_game_manager.speed_level -= 1;
		scr_character_level_setter();
	}
}