if(shoot_attack_tick >= shoot_attack_timer){
	CreateBullet( direction, 5, 15 ); // not a close range attack!
	enemy_state = EnemyStateFollow;
	shoot_attack_tick = 0;
} else {
	shoot_attack_tick++;	
}