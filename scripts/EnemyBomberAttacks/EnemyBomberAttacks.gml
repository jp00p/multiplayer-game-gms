// add conditions for attacks here
if(bomb != -1){
	throw_distance_remaining = bomb_throw_distance;
	throw_orig_x = x;
	throw_orig_y = y;
	enemy_attack_state = EnemyAttackBomb;	
} else {
	enemy_attack_state = EnemyAttackCharge;		
}