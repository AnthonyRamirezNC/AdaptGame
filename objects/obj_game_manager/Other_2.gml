audio_play_sound(snd_background_music, 0, true)
show_debug_message("at game start")

//spawn initial skill select (im sure we will change when we spawn initial menu later)
if(instance_exists(obj_player)){
	//transitioning rooms, reset stats
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_skillArea)
}