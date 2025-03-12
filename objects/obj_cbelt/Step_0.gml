if instance_exists(obj_player) {
	if place_meeting(x,y-1, obj_player) {
		if (image_xscale < 0) {
			obj_player.x += 1;
		} else {
			obj_player.x += -1;
		}
	}
}