/// @desc
if(life_tick <= time_to_live){
	
	if(spray_tick >= spray_freq){
		repeat(num_coins){
			CreateCoin();
		}
		spray_tick = 0;	
	} 
	spray_tick++;
	life_tick++;	
} else {
	instance_destroy();
}