//Movement
h_spd = lengthdir_x(bounce_speed, direction-180);
v_spd = lengthdir_y(bounce_speed, direction-180);

move_distance_remaining = max(0, move_distance_remaining-bounce_speed);
var _cod = PlayerCollision(); // did we collide?

// change height
//z = sin(((move_distance_remaining/bounce_distance)*pi))*bounce_distance_height;

// change state
if(move_distance_remaining <= 0){
	player_state = PlayerStateFree;
}