///@desc CastSpell(spellname, cast_time, range, onself);
///@arg spellname
///@arg cast_time
///@arg range
///@arg onself

var spellname = argument0;
var cast_time = argument1;
var range = argument2;
var onself = argument3;

if(onself){
	// cast on self
	spell = spellname;
	cast_timer = cast_time*room_speed;		
	spell_bar_timer = cast_timer; // for cast bar maybe
	spell_range = range;
	cast_on_self = onself;
	player_state = PlayerStateCasting;
} else {
	// cast on tank
	
	if(point_distance(x,y,obj_player1.x,obj_player1.y) > range){
		// out of range
		player_state = PlayerStateFree;
	} else if (collision_line(x,y,obj_player1.x,obj_player1.y,obj_solid,false,true)){
		// no los
		player_state = PlayerStateFree;
	} else {
		// start the spell casting
		spell = spellname;
		cast_timer = cast_time*room_speed;		
		spell_bar_timer = cast_timer; // for cast bar maybe
		spell_range = range;
		cast_on_self = onself;
		player_state = PlayerStateCasting;
	}

}