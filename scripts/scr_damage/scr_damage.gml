function scr_damage(){

}
function inflict_damage(damage) {
	obj_game_manager.hp -= damage;
	if (obj_game_manager.hp <= 0) {
		room_restart();
	}
}