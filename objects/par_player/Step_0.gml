GetInput(player_num); // handle each players input

cooldown = max(cooldown - 1, 0); // global CD

direction = facing;
//depth = -bbox_bottom;

for(var j=1; j<=4; j++){
	// reset cooldowns
	player_skill_cooldown_tick[j] = max(player_skill_cooldown_tick[j] - 1, 0);
}

if(input_magnitude != 0){
	// if moving
	facing = input_direction;
	image_speed = 1;
	if(sign(h_spd != 0)){
		image_xscale = sign(h_spd);
	}
} else {
	// not moving
	image_speed = 0;
	image_index = 1;
}


// cycle through skills
if(key_skill_up){
	selected_skill = Wrap(selected_skill+1, 1, 4);
	if(player_skill_range[selected_skill] != -1){
		show_radius_timer = 60;
	} else {
		show_radius_timer = 0;	
	}
}
if(key_skill_down){
	selected_skill = Wrap(selected_skill-1, 1, 4);	
	if(player_skill_range[selected_skill] != -1){
		show_radius_timer = 60;
	} else {
		show_radius_timer = 0;	
	}
}
show_radius_timer = max(show_radius_timer-1, 0);

ResourceBar();

script_execute(status);
script_execute(player_state);