///@desc enemy meandering

var x_to = x + irandom_range(-enemy_wander_distance,enemy_wander_distance);
var y_to = y + irandom_range(-enemy_wander_distance,enemy_wander_distance);

if(!collision_line(x,y,x_to,y_to,obj_solid,false,true)){
	
	EnemyFindPathTo(x_to, y_to, enemy_meander_speed);
	
} else {
	enemy_wander_tick = enemy_wander_timer;
}