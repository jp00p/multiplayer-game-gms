if(enemy_attack_tick >= enemy_attack_timer){
	script_execute(enemy_attack_state);
} else {
	enemy_attack_tick++
}