// Move text downward
y -= scroll_speed;

// Optional: Stop scrolling after reaching a certain point
if (y > room_height + 100) {
    instance_destroy();
}

if (y < -600){
	room_goto_next();
}