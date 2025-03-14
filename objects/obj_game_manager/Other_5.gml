if(transitionRooms == false and global.var_player_dying){
	show_debug_message("player died and not transitioning")
	
}else if(transitionRooms == false){
	transitionRooms = true
	show_debug_message("transitioning room")
	//generate score for room and add it to global score
	
	global.score += 50 * (energy_max - energy_used)
	show_debug_message("Score: " + string(global.score))
}