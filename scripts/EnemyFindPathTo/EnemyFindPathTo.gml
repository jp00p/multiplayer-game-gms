///@desc EnemyFindPathTo(x, y)
var x_to = argument0;
var y_to = argument1;
var _spd = argument2;



	// end path if we hit a player
	if(place_meeting(x,y,par_player)){
		path_end();	
	}

	if(mp_grid_path(global.grid, path, x, y, x_to, y_to, true)){
		path_start(path, _spd, path_action_stop, false);
	}

