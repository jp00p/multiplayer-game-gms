part_sys = part_system_create();

part_type_bullet = part_type_create();
part_type_shape(part_type_bullet, pt_shape_pixel);
part_type_size(part_type_bullet, 1, 2, 0, true);
part_type_color3(part_type_bullet, c_yellow, c_orange, c_red);
part_type_life(part_type_bullet, 1, 10);
part_type_alpha3(part_type_bullet, .3, .5, 0);
part_type_direction(part_type_bullet, 180, 340, 0, false);
part_type_orientation(part_type_bullet, 0, 359, 0, false, false);
part_type_speed(part_type_bullet, 1, 3, -0.05, false);

pb = part_type_create(); // blood
part_type_shape(pb, pt_shape_disk);
part_type_size(pb, .03, .04, 0, 0);
part_type_color2(pb, c_red, c_maroon);
part_type_speed(pb, 2, 5, -.1, 0);
part_type_direction(pb, 0, 359, 0, 0);
part_type_gravity(pb, .2, 270);
part_type_life(pb, 15, 25);

psword = part_type_create();
part_type_shape(psword, pt_shape_pixel)
part_type_size(psword, 0, 1, 0, 0)
part_type_scale(psword, 1, 1)
part_type_color3(psword, 16711812, 65400, 16711704)
part_type_alpha3(psword, 0, 0.92, 0)
part_type_speed(psword, 0, 1, 0, 0)
part_type_blend(psword, 1)
part_type_life(psword, 25, 35)

part_type_heal = part_type_create();
part_type_shape(part_type_heal, pt_shape_star);
part_type_scale(part_type_heal, 0.25, 0.25);
part_type_size(part_type_heal, 0.01, 0.05, 0, true);
part_type_color3(part_type_heal, c_lime, c_white, c_aqua);
part_type_life(part_type_heal, 10, 20);
part_type_alpha3(part_type_heal, .5, .8, 0);
part_type_direction(part_type_heal, 0, 359, 0, false);
part_type_orientation(part_type_heal, 0, 359, 0, false, false);
part_type_speed(part_type_heal, 1, 5, -0.05, false);

pcast = part_type_create();
part_type_shape(pcast, pt_shape_circle);
part_type_scale(pcast, 0.5, 0.25);
part_type_size(pcast, 0, 1, 0.015, false);
part_type_color3(pcast, c_blue, c_aqua, c_white);
part_type_life(pcast, 10, 40);
part_type_alpha3(pcast, 0.05, .5, .25);



