coMap = layer_tilemap_get_id(layer_get_id("Collisions"));

// these are set in variable defs
// ==============================
// player_num
// weapon
// player_cam

z = 0;

v_spd = 0;
h_spd = 0;

max_hp = 10;
hp = max_hp;
hit = 0;
hit_from = 0;

show_radius_timer = 0;

status = StatusNormal;
selected_skill = 1;

poison_duration = 0; // how long poison lasts
poison_freq = 0; // how often poison ticks
poison_damage = 0;
poison_remain = 0;
poison_tick = 0;

facing = 0;
cooldown = 0;
max_cooldown = 1;
player_interrupted = false;

player_state = PlayerStateFree;

roll_speed = 4.25;
roll_distance = 96;
bounce_distance = 40;
knockback_distance = 24;
bounce_distance_height = 12;
bounce_speed = 1.5;

image_speed = 0;
cast_timer = 0;
spell_bar_timer = 0;

equipped = instance_create_layer(x,y,"Instances",weapon);
with(equipped){
	owner = other.id;
}

