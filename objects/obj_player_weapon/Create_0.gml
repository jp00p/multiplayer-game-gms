owner = noone;
swinging = false;
thrusting = false;
attacking = false;
start_angle = -1;
target_angle = -1;
float_timer = 0;
particle_timer = 0;
max_weapon_bounce = 25;
weapon_bounce_timer = 25;

testadd = 0;
weapon_state = WeaponStateNormal;

//swing_angle = 45;
//swing_speed = 0.8;
//thrust_length = 8;

swing_timer_up = 10;
swing_timer_down = 5;
swing_tick = 0;

thrust_timer = thrust_length*2;
thrust_tick = thrust_timer;
thrust_complete = false;
target_x = 0;
target_y = 0;