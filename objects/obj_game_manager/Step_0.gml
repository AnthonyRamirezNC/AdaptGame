if(instance_exists(obj_hpress) and instance_exists(obj_player)){
//	show_debug_message("player h speed: " + obj_player.hspeed)
	if (instance_place(obj_player.x+obj_player.move_speed, obj_player.y, obj_hpress)) {
		show_debug_message("HPress to side of player")
		obj_player.hspeed = 0
		
	}
	if (instance_place(obj_player.x-obj_player.move_speed, obj_player.y, obj_hpress)) {
		obj_player.hspeed = 0	
		show_debug_message("HPress to side of player")
	}
}