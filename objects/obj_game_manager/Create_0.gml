// Player levels
vision_level = 1;
speed_level = 1;
strength_level = 1;
durability_level = 1;
jump_level = 1;

energy_used = 0; // imma implement this later
energy_max = 10;

// Player hp
hp = 1;

prev = false
show_debug_message(hp);

global.score = 0

global.room_died = Instruction_screen

// Creating globals
global.var_energy = 5;
global.var_energy_max = 5;
global.var_player_hp = 1;
global.var_player_str = 0;
global.var_player_vis = 0;
global.var_player_spd = 0;
global.var_player_jmp = 0;

global.var_player_dying = false

global.score_can_increment = true

//controller to prevent health from appearing when in main menu
global.game_ongoing = false;