if(!instance_exists(obj_player1)) exit;
if(cast_timer == 0){
	alarm[10] = 3*room_speed;
	if(point_distance(x,y,obj_player1.x,obj_player1.y) > 150){
		cast_text = "Out of range!";
		player_interrupted = true;
	} else if (collision_line(x,y,obj_player1.x,obj_player1.y,obj_solid,false,true)){
		cast_text = "LOS!";
		player_interrupted = true;
	} else {
		cast_text = "";
		player_interrupted = false;
		script_execute(spell);
	}
} else {
	with(equipped){
		//image_angle = 90;
		//float_timer = other.cast_timer;
	}
	cast_text = "Casting...";
	cast_timer -= 1;
}

if(player_interrupted or input_magnitude != 0){
	// getting hit or moving will interrupt
	if(cast_text == "Casting..." or cast_text == "") cast_text = "Interrupted!";
	alarm[10] = 3*room_speed;
	player_state = PlayerStateFree;
	player_interrupted = false;
}