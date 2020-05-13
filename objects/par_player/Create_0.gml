coMap = layer_tilemap_get_id(layer_get_id("Collisions"));

// these are set in variable defs
// ==============================
// player_num
// weapon
// player_cam

z = 0;

max_hp = 10;
hp = max_hp;
hit = 0;
hit_from = 0;

spd = 2;
run_spd = 3;

facing = 0;
cooldown = 0;
max_cooldown = 15;
player_interrupted = false;

player_state = PlayerStateFree;

roll_speed = 4;
roll_distance = 72;
bounce_distance = 40;
knockback_distance = 24;
bounce_distance_height = 12;
bounce_speed = 1.5;

image_speed = 0;
cast_text = "";

equipped = instance_create_layer(x,y,"Instances",weapon);
with(equipped){
	owner = other.id;
	//sprite_index = other.weapon;
	//depth = owner.depth + 10;
}