if(transitionRooms == false and global.var_player_dying){
	show_debug_message("player died and not transitioning")
	
}else if(transitionRooms == false){
	transitionRooms = true
	show_debug_message("transitioning room")
}