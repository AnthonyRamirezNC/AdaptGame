gravity_direction = 270;
image_speed = 0;
depth = 1;
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


scr_character_level_setter();

