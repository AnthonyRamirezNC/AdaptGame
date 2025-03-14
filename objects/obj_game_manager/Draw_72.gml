if room == Tutorial {
	var lay_id = layer_get_id("Background");

	var height = camera_get_view_height(view_camera[0])
	var bg_w = sprite_get_width(spr_background_tutorial);
	var bg_h = sprite_get_height(spr_background_tutorial);
	var scale = height / bg_h

	var b_lay_id = layer_background_get_id(lay_id);
	layer_background_xscale(b_lay_id, scale)
	layer_background_yscale(b_lay_id, scale)
	var cam_y = camera_get_view_y(view_camera[0]);
	
	layer_y(lay_id, cam_y);


	var sc_speed = .7;
	layer_x(lay_id, camera_get_view_x(view_camera[0]) * sc_speed);
} else if room == Incinerator {
	var lay_id = layer_get_id("Background");

	var height = camera_get_view_height(view_camera[0])
	var bg_w = sprite_get_width(spr_background_incinerator);
	var bg_h = sprite_get_height(spr_background_incinerator);
	var scale = height / bg_h

	var b_lay_id = layer_background_get_id(lay_id);
	layer_background_xscale(b_lay_id, scale)
	layer_background_yscale(b_lay_id, scale)
	var cam_y = camera_get_view_y(view_camera[0]);
	
	layer_y(lay_id, cam_y);


	var sc_speed = .7;
	layer_x(lay_id, camera_get_view_x(view_camera[0]) * sc_speed);
}