if(!instance_exists(par_player)) exit;
var dir = direction div 90;
if(dir <= 1){ image_xscale = 1 } else { image_xscale = -1; }
if(enemy_state != EnemyKnockback){ h_spd = 0; v_spd = 0; }
EnemyCollide();
EnemyAggro();
//depth = -bbox_bottom;
script_execute(enemy_state);