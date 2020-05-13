target = obj_player2;

view_visible[1] = true;

//camera_set_view_size(view_camera[1], global.cam_w, global.cam_h);

if(instance_exists(target)){
	// follow target
	global.cam_2x = target.x - (global.cam_w/2);
	global.cam_2y = target.y - (global.cam_h/2);
	
	global.cam_2x = clamp(global.cam_2x, 0, room_width-global.cam_w);
	global.cam_2y = clamp(global.cam_2y, 0, room_height-global.cam_h);

	camera_set_view_pos(view_camera[1], global.cam_2x, global.cam_2y);
}

//window_set_size(display_w*2, display_h);

//surface_resize(application_surface, display_w*2, display_h);

//display_set_gui_size(global.cam_w, global.cam_h);

alarm[0] = 1;