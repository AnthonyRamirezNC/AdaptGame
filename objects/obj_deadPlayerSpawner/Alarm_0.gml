//spawn falling block instance
instance_create_layer(x, y, "objLayer", obj_deadPlayer, {image_xscale: 0.08132917, image_yscale: 0.08132917, image_angle: random(360) });

alarm[0] = 60