//check if transitioning rooms
show_debug_message("Room Start Event Triggered");
if(global.var_player_dying){
	transitionRooms = false	
}
if(instance_exists(obj_player) and transitionRooms == true){
	//transitioning rooms, reset stats
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_skillArea)
	global.var_energy = 5;
	global.var_energy_max = 5;
	global.var_player_hp = 1;
	global.var_player_str = 0;
	global.var_player_vis = 0;
	global.var_player_spd = 0;
	global.var_player_jmp = 0;
	transitionRooms = false
	show_debug_message("transitioned room, reset stats, transition rooms set to false")
}else if(transitionRooms == false){
	show_debug_message("not transitioning room")
	
}else {
	show_debug_message("player didnt exist in time")	
}