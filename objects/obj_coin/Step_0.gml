/// @desc

// Inherit the parent event
event_inherited();

if(!instance_exists(par_player)) exit;

var closest = instance_nearest(x,y,par_player);

if(distance_to_object(closest) <= 16){
	x = lerp(x, closest.x, 0.03);
	y = lerp(y, closest.y, 0.03);
}