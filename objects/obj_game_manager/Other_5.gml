if(!global.var_player_dying and global.score_can_increment and !prev){
	show_debug_message("Current Score: " + string(global.score))
	show_debug_message("num not used: " + string(energy_max - energy_used))
	show_debug_message("num not used score: " + string(50 * (energy_max - energy_used)))
	global.score = global.score + 50 * (energy_max - energy_used)
	show_debug_message("new Score: " + string(global.score))
}
else if(!global.score_can_increment or prev){
	show_debug_message("transition did not increment score")
}
else if(global.var_player_dying){
	show_debug_message("dead")
}
else{
	show_debug_message("leaving/restarting intro or credit")
}