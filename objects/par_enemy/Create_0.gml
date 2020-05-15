target = noone;

z = 0;
flash = 0;
u_flash = shader_get_uniform(shd_flash, "flash");

h_spd = 0;
v_spd = 0;

//spd = 3;

tank_threat = 0;
heal_threat = 0;
threat[0] = 0; // player 1 (tank)
threat[1] = 0; // player 2 (heal)

//hp = 10;
hit = 0;

hit_from = -1;
kb_distance_remaining = 0;

step_timer = 0;
enemy_state = EnemyStateIdle;

//enemy_sight_range = 150;
//enemy_attack_range = 32;
//enemy_forget_range = 250;  // make this bigger than sight range

//enemy_follow_frequency = 30;  // less = more chase
//enemy_follow_speed = 2;
//enemy_follow_distance = 32;

//enemy_wander_timer = room_speed * 2;
enemy_wander_tick = 0;
//enemy_wander_distance = 16;
//enemy_meander_speed = 1;

//enemy_attack_timer = room_speed * 1;
enemy_attack_tick = enemy_attack_timer;
attack_target_x = 0;
attack_target_y = 0;
//attacking = false;

charge_attack_timer = 0.5 * room_speed;
charge_atk_tick = 0;
charge_state = 0; // 0 = wind_up, 1 = charge, 2 = back off
wind_up_distance = 8;
wind_up_timer = 0.25 * room_speed;
wind_up_tick = 0;
charge_timer = 0.2 * room_speed;
charge_tick = 0;

shoot_attack_timer = 0.5 * room_speed;
shoot_attack_tick = 0;

//enemy_attack_routine = EnemyBaseAttacks;

// create path for pathfinding
path = path_add();
bomb = -1;

if(bomber){
	throw_distance_remaining = 0;
	bomb = instance_create_layer(x,y,"Instances",obj_bomb);
	with(bomb){ owner = other.id; }
	bomb_tick = 0;
	bomb_windup_timer = 30;
}


