target = obj_player1;

view_enabled = true;
view_visible[0] = true;
//camera_set_view_size(view_camera[0], global.cam_w, global.cam_h);

if(instance_exists(target)){
	// follow target
	global.cam_1x = target.x - (global.cam_w/2);
	global.cam_1y = target.y - (global.cam_h/2);
	
	global.cam_1x = clamp(global.cam_1x, 0, room_width-global.cam_w);
	global.cam_1y = clamp(global.cam_1y, 0, room_height-global.cam_h);

	//camera_set_view_pos(view_camera[0], global.cam_1x, global.cam_1y);
	
}



alarm[0] = 1;