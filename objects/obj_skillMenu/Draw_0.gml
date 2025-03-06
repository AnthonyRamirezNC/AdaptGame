//get width and heigh of menu
var _new_w = 0;
for (var i = 0; i < op_length; i++) {
	var _op_w = string_width(option[i]);
	_new_w = max(_op_w, _new_w)
}
width = _new_w + op_border*2;
height = op_border *2 + string_height(option[0]) + (op_length-1)*op_space
//center menu

x = obj_player.x + 85
y = obj_player.y - 125
// draw menu background
draw_sprite_ext(sprite_index, image_index, x,y, 
				width/sprite_width, height/sprite_height, 0 , c_white,
				1);
// draw the options
draw_set_font(fnt_menu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++) {
	var _c = c_white
	if (pos ==i) { _c = c_yellow}
	draw_text_color(x + op_border, y + op_length + op_space*i, option[i], _c, _c, _c, _c, 1);	
}




