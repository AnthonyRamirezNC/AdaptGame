draw_set_font(fnt_menu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
var _c = c_white;

option[0] = "Final Score: " + string(global.score)
for (var i = 0; i < op_length; i++) {
	draw_text_color(x+op_border + op_buffer*i, y+op_border + op_space* i , option[i], _c, _c, _c,_c, 1);
}