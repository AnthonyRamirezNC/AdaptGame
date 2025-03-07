if instance_exists(obj_player) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
} else {
	instance_destroy();
}
speed = bullet_speed;