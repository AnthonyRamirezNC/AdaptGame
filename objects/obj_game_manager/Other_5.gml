if(!global.var_player_dying){
	global.score += 50 * (energy_max - energy_used)
	show_debug_message("Score: " + string(global.score))
}else show_debug_message("dead")