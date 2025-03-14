draw_set_font(fnt_menu);
draw_set_halign(fa_center) // Center text
draw_set_valign(fa_middle)
//draw_text(room_width / 2, y, "A long time ago in a galaxy far, far away...");

// Split the intro text along the new line characters
var lines = string_split(intro_text, "\n")

//for reference 55 is equivalent to 
//This line spacing
var line_height = 90


// Loop through each line and draw it with extra spacing
for (var i = 0; i < array_length(lines); i++) {
    draw_text(room_width / 2, y + (i * line_height), lines[i])
}

if (y < 250){
	global.can_skip = true
	show_debug_message("y < 350 so letting skip")
	//draw options
	draw_set_font(fnt_menu);
	draw_text(1700, 850 , "Press Enter to Skip");

}