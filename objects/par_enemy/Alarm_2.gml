///@desc enemy meandering

if(!wander_from_start){
	xx = xstart;
	yy = ystart;
} else {
	xx = x;
	yy = x;
}

var x_to = xx + irandom_range(-enemy_wander_distance,enemy_wander_distance);
var y_to = yy + irandom_range(-enemy_wander_distance,enemy_wander_distance);

if(!collision_line(x,y,x_to,y_to,obj_solid,false,true)){
	
	EnemyFindPathTo(x_to, y_to, enemy_meander_speed);
	
} else {
	
	enemy_wander_tick = enemy_wander_timer;
	
}