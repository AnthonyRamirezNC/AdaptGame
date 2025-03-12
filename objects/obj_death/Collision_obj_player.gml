if (can_damage) {
	inflict_damage(1);
	can_damage = false;
	alarm[0] = static_kill_speed;
}