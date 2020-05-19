/// @desc
if(attacking && other.attacking){
	// this owner
	attacking = false;
	owner.enemy_state = EnemyStateFollow;
}