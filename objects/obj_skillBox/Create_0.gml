x= obj_player.x + 55
y= obj_player.y - 140
var x_buffer = 4
var y_buffer = 2

instance_create_depth(x + x_buffer,y,depth,obj_healthButton);
instance_create_depth(x + x_buffer,y+64+y_buffer, depth, obj_strButton);
instance_create_depth(x+40+x_buffer,y+128+y_buffer, depth, obj_visButton);
instance_create_depth(x+64+x_buffer,y, depth, obj_jmpButton);
instance_create_depth(x+64+x_buffer,y+64+y_buffer, depth, obj_spdButton);

depth++;