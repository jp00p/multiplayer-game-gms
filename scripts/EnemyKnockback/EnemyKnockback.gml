//path_end();

var damage = argument0;
var hit_from = argument1;

var kb_spd = 5;
//var kb_dist = kb_spd;
	
//Movement
h_spd = lengthdir_x(kb_spd, hit_from);
v_spd = lengthdir_y(kb_spd, hit_from);
kb_distance_remaining = max(0, kb_distance_remaining-kb_spd);

var _cod = EnemyCollide(); // did we collide?

// change state
if(_cod || kb_distance_remaining <= 0){
	h_spd = 0;
	v_spd = 0;
	kb_distance_remaining = 0;
	enemy_state = EnemyStateFollow;
}