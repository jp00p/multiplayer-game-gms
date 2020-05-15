image_blend = c_lime;
if(poison_remain <= poison_duration){

	if(poison_tick >= poison_freq){
		// deal poison damage every freq frames	
		hit_from = irandom(359);
		event_perform(ev_other, ev_user1);
		poison_tick = 0;
	} 
	
}
		
poison_tick++;	
poison_remain++;