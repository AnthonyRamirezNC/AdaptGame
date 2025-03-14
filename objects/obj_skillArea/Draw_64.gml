if (!alter_stats) {
	exit;
}



// Draw rounded rectangle
draw_roundrect_color(x1, y1, x2, y2, gui_bg_color, gui_bg_color, false);
draw_roundrect_color(x1, y1, x2, y2, border_color, border_color, true);



// Draw the buttons:
// btn 1
draw_sprite_ext(spr_health, 0, col1, row1, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_battery, obj_game_manager.durability_level, col1 + 32, row1 + 58, 2, 2, 0, c_white, 1)
// btn 2
draw_sprite_ext(spr_jump, 0, col2, row1, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_battery, obj_game_manager.jump_level, col2 + 32, row1 + 58, 2, 2, 0, c_white, 1)
// btn 3
draw_sprite_ext(spr_speed, 0, col1, row2, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_battery, obj_game_manager.speed_level, col1 + 32, row2 + 58, 2, 2, 0, c_white, 1)
// btn 4
draw_sprite_ext(spr_strength, 0, col2, row2, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_battery, obj_game_manager.strength_level, col2 + 32, row2 + 58, 2, 2, 0, c_white, 1)
// btn 5
draw_sprite_ext(spr_vision, 0, middle_col, row3, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_battery, obj_game_manager.vision_level, middle_col + 32, row3 + 58, 2, 2, 0, c_white, 1)

var energy_left = obj_game_manager.energy_max - obj_game_manager.energy_used
draw_set_halign(fa_center);
var middle = x1 + (rect_w / 2)
draw_text(middle, y1 + inner_margin, "Energy Levels: " + string(energy_left));
draw_set_halign(fa_left);