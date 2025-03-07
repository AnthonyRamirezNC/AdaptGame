//Checks where mouse is and if the left or right button are hit
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, all) = id) {
	if(global.var_energy > 0 && global.var_player_vis != 3){
		global.var_player_vis++;
		global.var_energy--;
	}
} else if (mouse_check_button_pressed(mb_right) && instance_position(mouse_x, mouse_y, all) = id) {
	if(global.var_energy < global.var_energy_max && global.var_player_vis != 0){
		global.var_player_vis--;
		global.var_energy++;
	}
}