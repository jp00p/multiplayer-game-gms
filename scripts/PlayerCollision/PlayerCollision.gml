var _co = false; // collision

// hoz
if(place_meeting(x+h_spd, y, obj_solid)){
	while(!place_meeting(x + sign(h_spd), y, obj_solid)){
		x += sign(h_spd);
	}
	h_spd = 0;
	_co = true;
}

// vert 
if(place_meeting(x, y+v_spd, obj_solid)){
	while(!place_meeting(x, y+sign(v_spd), obj_solid)){
		y += sign(v_spd);
	}
	v_spd = 0;
	_co = true;
}


if(player_state != PlayerRoll){
	if(place_meeting(x,y+v_spd, par_enemy)){
		v_spd = v_spd*0.75;
	
	}
	if(place_meeting(x+h_spd,y, par_enemy)){
		h_spd = h_spd*0.75;
	}
}

x += h_spd;
y += v_spd;

return _co;