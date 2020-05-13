///@desc pathfinding to target
if(target == noone) exit;

// create path and move to target (add random so enemies don't clump)
var target_x = target.x + irandom_range(-enemy_follow_distance, enemy_follow_distance);
var target_y = target.y + irandom_range(-enemy_follow_distance, enemy_follow_distance);

EnemyFindPathTo(target_x, target_y, enemy_follow_speed);