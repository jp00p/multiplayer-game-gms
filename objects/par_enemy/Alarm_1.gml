///@desc pathfinding to target
if(target == noone) exit;

// create path and move to target (add random so enemies don't clump)
var target_x = target.x;
var target_y = target.y;

EnemyFindPathTo(target_x, target_y, enemy_follow_speed);