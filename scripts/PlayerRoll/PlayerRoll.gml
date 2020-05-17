//Movement
h_spd = lengthdir_x(roll_speed, direction);
v_spd = lengthdir_y(roll_speed, direction);

move_distance_remaining = max(0, move_distance_remaining-roll_speed);
resource_bar_amt = min(resource_bar_amt+1, resource_bar_max);

var _cod = PlayerCollision(); // did we collide?

//sprite_index = sprite_roll;

//var _total_frames = sprite_get_number(sprite_index)/4;  // div by 4 because sprite contains all 4 dirs

//image_index = (CARDINAL_DIR * _total_frames) + min(((1 - (move_distance_remaining / roll_distance)) * (_total_frames)), _total_frames-1); // animate relative to length of roll

// change state
if(move_distance_remaining <= 0){
	
	player_state = PlayerStateFree;
}

if(_cod){
	player_state = PlayerStateBounce;
	move_distance_remaining = bounce_distance;
	ScreenShake(player_cam, 4,30);
}