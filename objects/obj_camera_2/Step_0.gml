if(instance_exists(target)){
	// follow target
	global.cam_2x = target.x - (global.cam_w/2);
	global.cam_2y = target.y - (global.cam_h/2);
	
	global.cam_2x = clamp(global.cam_2x, 0, room_width-global.cam_w);
	global.cam_2y = clamp(global.cam_2y, 0, room_height-global.cam_h);

	// screen shake
	global.cam_2x += random_range(-shake_remain, shake_remain);
	global.cam_2y += random_range(-shake_remain, shake_remain);

	// remove a bit of shake every frame, down to 0
	shake_remain = max(0, shake_remain - ((1/shake_duration)*shake_magnitude)); 


	// set pos
	camera_set_view_pos(view_camera[1], global.cam_2x, global.cam_2y);
	
	// parallax
	/*layer_x(layer_get_id("Background"), global.cam_x*.95);
	layer_y(layer_get_id("Background"), global.cam_y*.95);
	
	layer_x(layer_get_id("Parallax_2"), global.cam_x*0.5);
	layer_y(layer_get_id("Parallax_2"), global.cam_y*0.5);
	
	layer_x(layer_get_id("Parallax_1"), global.cam_x*.97);
	layer_y(layer_get_id("Parallax_1"), global.cam_y*.97);*/
	
	
	
}