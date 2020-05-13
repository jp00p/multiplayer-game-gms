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

var inst = -1;

if(place_meeting(x,y+v_spd, par_enemy)){
	//inst = instance_place(x,y+v_spd, par_enemy);
	v_spd *= 0.3;
	
}
if(place_meeting(x+h_spd,y, par_enemy)){
	//inst = instance_place(x+h_spd,y, par_enemy);
	h_spd *= 0.3;
}

x += h_spd;
y += v_spd;

return _co;