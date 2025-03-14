if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < sight_range){
		in_range = true;
		path_end();
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = fly_speed;
	} else {
		in_range = false;
	}
}


if (speed > 0) {
	// 180 degrees is going left and give a range of 60 for area of tilt
	// 0 degrees is going right and give a range of 60 for area of tilt
	if (direction >= 120 and direction <= 240) {
		image_angle = 30;
	} else if (direction >= 300 or direction <= 60) {
		image_angle = -30;
	} else {
		image_angle = 0;
	}
}

if (in_range and can_shoot) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	can_shoot = false;
	alarm[0] = fire_rate;
}

