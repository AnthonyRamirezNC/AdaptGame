function scr_damage(){

}
function inflict_damage(damage) {
	obj_game_manager.hp -= damage;
	show_debug_message(obj_game_manager.hp);
	if (obj_game_manager.hp <= 0) {
		room_restart();
	}
}