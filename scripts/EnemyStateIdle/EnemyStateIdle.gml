var dir = direction div 90;
if(dir <= 1){ image_xscale = 1 } else { image_xscale = -1; }
if(enemy_wander_tick >= enemy_wander_timer){
	alarm[2] = 30;
	enemy_wander_tick = 0;
} else {
	enemy_wander_tick++;	
}