gravity_direction = 270;
image_speed = 0;
enum States {
	//	TODO: Add necessary values to this enum in order to define player states
	// (refer to GrabAxis regarding formatting & syntax for enumerators)
	Still,
	Moving,
	Jumping,
}

state = States.Still;
image_index = 0;

//this boolean makes it so that once the player leaves the menu area the skill menu cannot respawn
menu_allowed_spawn = true;

global.var_player_dying = false

//hit effect
damaged = false;
damage_flicker = 3;
damage_counter = 0;
damage_duration = 3;

scr_character_level_setter();
