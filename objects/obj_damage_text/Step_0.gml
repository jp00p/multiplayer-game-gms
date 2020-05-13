/// @desc
if(!instance_exists(owner)) {
	instance_destroy(); 
	exit;
}

x_start = owner.x;
y_start = owner.y - 16; 
depth = owner.depth - 1;

if(display_tick >= display_timer){
	display_tick = 0;
	instance_destroy();	
} else {
	y = y_start - ((display_tick/display_timer)*25);
	x = x_start;
	display_tick++;
}