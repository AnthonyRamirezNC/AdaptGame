draw_set_font(fnt_menu)
if (global.game_ongoing) {
draw_set_halign(fa_left);
draw_text(55, 55, "Health: " + string(hp));
};