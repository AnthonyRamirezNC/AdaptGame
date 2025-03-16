if room == Incinerator { // Check if in the target room
    shader_set(shd_incinShade);
}

draw_self();

if room == Incinerator {
    shader_reset();
}