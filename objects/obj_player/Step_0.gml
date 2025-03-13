if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block) and !instance_place(x-move_speed, y, obj_hpress_col)) {
	x -= move_speed
	if (image_xscale > 0){
		image_xscale *= -1	
	}
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block) and !instance_place(x+move_speed, y, obj_hpress_col)) {
	x += move_speed
	if (image_xscale < 0){
		image_xscale *= -1	
	}
}
//code to check if player is within the bounds of skill area
if place_meeting(x,y, obj_skillArea) && menu_allowed_spawn{
	if !instance_exists(obj_skillBox) {
		instance_create_layer(x,y, "Instances", obj_skillBox)
		player_in_menu = true
	}
} else {
	instance_destroy(obj_skillBox)
	instance_destroy(obj_spdButton)
	instance_destroy(obj_healthButton)
	instance_destroy(obj_jmpButton)
	instance_destroy(obj_strButton)
	instance_destroy(obj_visButton)
	player_in_menu = false
	menu_allowed_spawn = false
}

if (!player_in_menu) {
	if (keyboard_check(vk_up)){
		if(instance_place(x, y+1, obj_block)){
			vspeed = jump_height
		}
	}
} //close bracket for if player is in menu

//gravity logic
if(instance_place(x, y+1, obj_block)){
	gravity = 0
}else {
	gravity = .25
}

if vspeed > 12 then vspeed = 12	


// Animation stuff
// Will take state off jumping if character is on ground
if (state == States.Jumping) {
	// If character is moving down and will encounter a block, stop jumping
	if (instance_place(x, y+1+vspeed, obj_block) and vspeed >= 0) {
		state = States.Still;
		image_index -= 8;
	}
}
// Set state if not already jumping
if (state != States.Jumping) {
		if (keyboard_check(vk_up)) {
		state = States.Jumping;
		image_index += image_index % 8 + 56; // Get the correct index
	} else if ((keyboard_check(vk_right) or keyboard_check(vk_left))) {
		state = States.Moving;
	} else {
		state = States.Still;
	}
}

// Switch case depending on state
switch (state) {
	case States.Still:
	break;
	case States.Moving:
		image_index += animation_move_speed;
		// Animation range of 0-55
		if (image_index > 55 or image_index < 0) {
			image_index = 0;
		}
	break;
	case States.Jumping:
		image_index += animation_move_speed;
		// Animation range of 56-63
		if (image_index > 63 or image_index < 56) {
			image_index = 56;
		}
	break;
}