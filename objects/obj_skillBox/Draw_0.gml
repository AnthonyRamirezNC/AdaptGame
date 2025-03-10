var temp_c1, temp_c2;

temp_c1 = make_color_rgb(193,180,112)
temp_c2 = make_color_rgb(193,180,112)

draw_roundrect_color(x-2,y-36,x+160,y+260, temp_c1, temp_c2, false);

temp_c1 = make_color_rgb(53,49,31);
temp_c2 = make_color_rgb(53,49,31);

draw_roundrect_color(x-2,y-36,x+160,y+260, temp_c1, temp_c2, true)

temp_c1 = make_color_rgb(33,30,19);

draw_set_color(temp_c1);
var energy_left = obj_game_manager.energy_max - obj_game_manager.energy_used
draw_text(x+9, y-32, "Energy Levels: " + string(energy_left));
draw_set_color(c_white)