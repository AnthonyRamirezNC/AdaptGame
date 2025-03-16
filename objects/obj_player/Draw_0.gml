if (damaged) {
	shader_set(shd_flash);
	draw_self();
	shader_reset();
	if (alarm[0] == -1) {
		alarm[0] = damage_duration;
	}
} else {
 draw_self();	
}

//if room == Incinerator { // Check if in the target room
//    shader_set(shd_incinShade);
//}

//draw_self();

//if room == Incinerator {
//    shader_reset();
//}

