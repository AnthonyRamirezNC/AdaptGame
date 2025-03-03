if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
	x -= move_speed
	if (image_xscale < 0){
		image_xscale *= -1	
	}
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
	x += move_speed
	if (image_xscale > 0){
		image_xscale *= -1	
	}
}

if (keyboard_check(vk_up)){
	if(instance_place(x, y+1, obj_block)){
		vspeed = jump_height
	}
}

//gravity logic
if(instance_place(x, y+1, obj_block)){
	gravity = 0
}else {
	gravity = .25
}

if vspeed > 12 then vspeed = 12	

