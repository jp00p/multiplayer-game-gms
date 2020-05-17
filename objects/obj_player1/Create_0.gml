/// @desc

// Inherit the parent event
event_inherited();

player_skill[1] = PlayerRoll;
player_skill[2] = PlayerShout;
player_skill[3] = -1;
player_skill[4] = -1;

player_skill_icon[1] = 0;
player_skill_icon[2] = 1;
player_skill_icon[3] = -1;
player_skill_icon[4] = -1;

player_skill_name[1] = "Charge";
player_skill_name[2] = "Intimidating Shout";
player_skill_name[3] = -1;
player_skill_name[4] = -1;

// cooldown * room_speed
player_skill_cooldown[1] = 5 * room_speed;
player_skill_cooldown[2] = 15 * room_speed;
player_skill_cooldown[3] = 0;
player_skill_cooldown[4] = 0;

player_skill_cooldown_tick[1] = 0;
player_skill_cooldown_tick[2] = 0;
player_skill_cooldown_tick[3] = 0;
player_skill_cooldown_tick[4] = 0;

player_skill_cost[1] = 0;
player_skill_cost[2] = 10;
player_skill_cost[3] = 0;
player_skill_cost[4] = 0;

player_skill_range[1] = -1;
player_skill_range[2] = 128;
player_skill_range[3] = -1;
player_skill_range[4] = -1;

resource_bar_name = "Rage";
resource_bar_max = 100;
resource_bar_amt = 0;
resource_bar_tick = 0.1; // how much is gained/lost per frame
resource_bar_color = c_red;