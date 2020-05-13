path_end();

var damage = argument0;
var hit_from = argument1;
var kb_spd = 3;
var kb_dist = 10;
	
//Movement
h_spd = lengthdir_x(kb_spd, hit_from);
v_spd = lengthdir_y(kb_spd, hit_from);

kb_distance_remaining = max(0, kb_distance_remaining-kb_spd);

var _cod = EnemyCollide(); // did we collide?

//sprite_index = sprite_roll;

//var _total_frames = sprite_get_number(sprite_index)/4;  // div by 4 because sprite contains all 4 dirs

//image_index = (CARDINAL_DIR * _total_frames) + min(((1 - (move_distance_remaining / roll_distance)) * (_total_frames)), _total_frames-1); // animate relative to length of roll

// change state
if(kb_distance_remaining <= 0){
	enemy_state = EnemyStateFollow;
}

if(_cod){
	enemy_state = EnemyStateFollow;
	kb_distance_remaining = kb_dist;
}	