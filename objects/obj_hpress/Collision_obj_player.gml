if (can_damage) {
	inflict_damage(4);
	can_damage = false;
	alarm[0] = static_kill_speed;
}