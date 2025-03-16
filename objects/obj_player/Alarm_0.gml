damaged = false;
damage_counter ++;
if(damage_counter < damage_flicker) {
	alarm[1] = damage_duration;	
} else {
	damage_counter = 0;	
}