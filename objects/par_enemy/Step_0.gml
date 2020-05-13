if(!instance_exists(par_player)) exit;
facing = direction;

EnemyAggro();
EnemyCollide();

depth = -bbox_bottom;

script_execute(enemy_state);