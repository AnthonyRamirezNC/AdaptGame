var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));



if (left and !instance_place(x-move_speed, y, obj_block) and !instance_place(x-move_speed, y, obj_hpress_col)) {
	x -= move_speed
	if (image_xscale > 0){
		image_xscale *= -1	
	}
}

if (right and !instance_place(x+move_speed, y, obj_block) and !instance_place(x+move_speed, y, obj_hpress_col)) {
	x += move_speed
	if (image_xscale < 0){
		image_xscale *= -1	
	}
}

if (up){
	if(instance_place(x, y+1, obj_block)){
		vspeed = jump_height
		audio_play_sound(snd_jump, 10, false);
	}
}

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
		if (up) {
		state = States.Jumping;
		image_index += image_index % 8 + 56; // Get the correct index
	} else if ((right or left)) {
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

