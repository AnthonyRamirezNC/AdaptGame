
// pushing checks
if (keyboard_check(vk_left) and instance_place(x+obj_player.move_speed, y, obj_player)) {
	hspeed = -obj_player.move_speed;
	being_pushed = true;
} else if (keyboard_check(vk_right) and instance_place(x-obj_player.move_speed, y, obj_player)) {
	hspeed = obj_player.move_speed;
	being_pushed = true;
} else {
	hspeed = 0;
	being_pushed = false;
}

// Stop pushing if a block is in the way
if (being_pushed) {
	
	// Check for block
	if (instance_place(x+hspeed, y, obj_block)) {
		hspeed = 0;
	}
}



//gravity logic

if(instance_place(x, y+1, obj_block)){
	gravity = 0
}else {
	gravity = .25
}

if vspeed > 12 then vspeed = 12	
