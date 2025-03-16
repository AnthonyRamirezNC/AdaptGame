if (keyboard_check_pressed(vk_escape)) {
game_restart();	
}
if (keyboard_check_pressed(vk_enter)) {
room_goto(global.room_died);
}
