// Inherit the parent event
event_inherited();

if place_meeting(x,y-1, other) {
		if (image_xscale < 0) {
			other.hspeed += 1;
		} else {
			other.hspeed += -1;
		}
	}