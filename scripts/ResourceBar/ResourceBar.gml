// handle resource bar decay/gain over time
switch(player_num){
	
	case 1:
		resource_bar_amt = max(resource_bar_amt-resource_bar_tick, 0);
	break;
	
	case 2:
		var tick = resource_bar_tick;
		if(player_state == PlayerStateCasting or input_magnitude != 0){
			tick = resource_bar_tick_casting;
		}
		resource_bar_amt = min(resource_bar_amt+tick, resource_bar_max);
	break;
	
}