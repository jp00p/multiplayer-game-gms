v_spd = (key_down - key_up) * spd;
h_spd = (key_right - key_left) * spd;
cooldown--;
PlayerCollision();

if(input_magnitude != 0){
	facing = input_direction;
	image_speed = 1;
	if(sign(h_spd != 0)){
		image_xscale = sign(h_spd);
	}
} else {
	image_speed = 0;
	image_index = 1;
}

if(key_action){
	player_state = PlayerStateAttack;
	attack_state = equipped.weapon_attack;
	cooldown = max_cooldown;
}

if(key_action2 && cooldown <= 0){
	player_state = PlayerStateSecondary;
	move_distance_remaining = roll_distance;
	if(player_num == 1){
		secondary_state = PlayerRoll;
	} else {
		alarm[10] = 3 * room_speed;
		if(point_distance(x,y,obj_player1.x,obj_player1.y) > 150){
			cast_text = "Out of range!";
			player_state = PlayerStateFree;
		} else if (collision_line(x,y,obj_player1.x,obj_player1.y,obj_solid,false,true)){
			cast_text = "LOS!";
			player_state = PlayerStateFree;
		} else {
			CastSpell(SpellHeal, 3);
		}
	}
	cooldown = max_cooldown;	
}

