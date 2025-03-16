if (can_damage) {
	inflict_damage(1);
	can_damage = false;
	audio_play_sound(snd_bark, 10, false);
	alarm[0] = static_kill_speed;
}