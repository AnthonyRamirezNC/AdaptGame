if (instance_exists(obj_player)) {
	if (place_meeting(x, y, obj_player)) {
		alter_stats = true;
	} else {
		alter_stats = false;
	}
} else {
	alter_stats = false;
}

if (!alter_stats) {
	exit;
}

/* 
	Menu visible, calculate the axis stats, this really only 
	matters if we add the functionality for user to resize 
	their screen:
*/
// Alignment varaibles:
screen_w = display_get_width();
// Aligning rectangle to top_right
x1 = screen_w - rect_w - outer_margin; // Right-aligned
y1 = outer_margin;                     // Top-aligned
x2 = screen_w - outer_margin;
y2 = outer_margin + rect_h;
// Column and row axis Calculation:
col1 = x1 + inner_margin;
middle_col = x1 + (rect_w / 2) - (0.5 * actual_btn_size)
col2 = x2 - inner_margin - actual_btn_size;
row1 = y1 + inner_margin + space_for_text;
row2 = row1 + actual_btn_size + inner_margin;
row3 = row2 + actual_btn_size + inner_margin;



// Menu is visible, do button checks
// current mouse position in the gui screen area
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// areas of different buttons named for dynamic loop
var buttons = [
	[col1, row1, "durability_level"],
	[col2, row1, "jump_level"],
	[col1, row2, "speed_level"],
	[col2, row2, "strength_level"],
	[middle_col, row3, "vision_level"]
]
var num_of_buttons = array_length(buttons);

// if statements to check if it is in the rectangle and clicking
// Increase stats
if (mouse_check_button_pressed(mb_left) and
	obj_game_manager.energy_used < obj_game_manager.energy_max) {
		
	// Check if click in area of any of the buttons, made dynamic
	for (var i = 0; i < num_of_buttons; i++) {
		var btn = buttons[i];
		if (mx >= btn[0] and mx <= btn[0] + actual_btn_size and
			my >= btn[1] and my <= btn[1] + actual_btn_size) {
				
			if (dyn_get_level(btn[2]) >= 0 and dyn_get_level(btn[2]) < 3) {
				obj_game_manager.energy_used += 1;
				dyn_add_level(btn[2], 1); // add 1 to the buttons level
				scr_character_level_setter();
			}
			break;
		}
	}
}

// Decrease stats
if (mouse_check_button_pressed(mb_right)) {
	for (var i = 0; i < num_of_buttons; i++) {
		var btn = buttons[i];
		if (mx >= btn[0] and mx <= btn[0] + actual_btn_size and
			my >= btn[1] and my <= btn[1] + actual_btn_size) {
				
			if (dyn_get_level(btn[2]) > 0 and dyn_get_level(btn[2]) <= 3) {
				obj_game_manager.energy_used -= 1;
				dyn_add_level(btn[2], -1); // add 1 to the buttons level
				scr_character_level_setter();
			}
			break;
		}
	}
}