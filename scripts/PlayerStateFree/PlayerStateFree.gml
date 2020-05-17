// move
v_spd = Approach(v_spd, (key_down - key_up) * spd, slippiness);
h_spd = Approach(h_spd, (key_right - key_left) * spd, slippiness);
z = 0;

var _s = selected_skill;
move_distance_remaining = roll_distance; // reset roll distance


PlayerCollision();


if(key_action && cooldown <= 0){
	// basic attack action (skill depends on weapon)
	player_state = PlayerStateAttack;
	attack_state = equipped.weapon_attack;
	cooldown = max_cooldown;
}


if(
	key_action2 && // pressing key
	cooldown <= 0 &&  // gcd is ready
	player_skill_cooldown_tick[_s] <= 0 && // skill is ready
	resource_bar_amt >= player_skill_cost[_s] // player has enough rage/mana
){
	
	
	
	if(player_num == 1){
		player_state = PlayerStateSecondary;	
		cooldown = max_cooldown; // global cooldown
		player_skill_cooldown_tick[_s] = player_skill_cooldown[_s]; // set cooldown for skill
		secondary_state = player_skill[_s];
	} else {
		if(!player_skill_self[_s]){
			if(point_distance(x,y,obj_player1.x,obj_player1.y) <= player_skill_range[_s] && input_magnitude == 0){
				cooldown = max_cooldown; // global cooldown
				player_skill_cooldown_tick[_s] = player_skill_cooldown[_s]; // set cooldown for skill
				CastSpell(
					player_skill[_s], 
					player_skill_cast_time[_s], 
					player_skill_range[_s], 
					player_skill_self[_s]
				);
			}
		} else {
			cooldown = max_cooldown; // global cooldown
			player_skill_cooldown_tick[_s] = player_skill_cooldown[_s]; // set cooldown for skill
			CastSpell(
				player_skill[_s], 
				player_skill_cast_time[_s], 
				player_skill_range[_s], 
				player_skill_self[_s]
			);
		}

	}	
}