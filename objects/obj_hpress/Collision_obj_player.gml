//check if can damage and if player is under press and press is moving down
if (can_damage and (y < obj_player.y) and (vspeed > 0) and obj_player.vspeed = 0 and abs(x - obj_player.x) <= .5 * sprite_width){
	show_debug_message("Player can be damaged")
	inflict_damage(999);
	can_damage = false;
	alarm[0] = static_kill_speed;
}