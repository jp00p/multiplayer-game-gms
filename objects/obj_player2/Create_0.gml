event_inherited();

// skill script
player_skill[1] = SpellFlashHeal;
player_skill[2] = SpellGreaterHeal;
player_skill[3] = SpellFade;
player_skill[4] = -1;

player_skill_icon[1] = 2;
player_skill_icon[2] = 3;
player_skill_icon[3] = 4;
player_skill_icon[4] = -1;

player_skill_name[1] = "Flash Heal";
player_skill_name[2] = "Greater Heal";
player_skill_name[3] = "Fade";
player_skill_name[4] = "Buttnugget Power";

player_skill_cost[1] = 20;
player_skill_cost[2] = 30;
player_skill_cost[3] = 50;
player_skill_cost[4] = 0;

// cooldown * room_speed
player_skill_cooldown[1] = 3 * room_speed;
player_skill_cooldown[2] = 10 * room_speed;
player_skill_cooldown[3] = 5 * room_speed;
player_skill_cooldown[4] = 1 * room_speed;

player_skill_cooldown_tick[1] = 0;
player_skill_cooldown_tick[2] = 0;
player_skill_cooldown_tick[3] = 0;
player_skill_cooldown_tick[4] = 0;

// cast time * room_speed
player_skill_cast_time[1] = 1;
player_skill_cast_time[2] = 1;
player_skill_cast_time[3] = 1;
player_skill_cast_time[4] = 1;

player_skill_range[1] = 128;
player_skill_range[2] = 128;
player_skill_range[3] = -1;
player_skill_range[4] = -1;

player_skill_self[1] = false;
player_skill_self[2] = false;
player_skill_self[3] = true;
player_skill_self[4] = true;

resource_bar_name = "Mana";
resource_bar_max = 1000;
resource_bar_amt = resource_bar_max;
resource_bar_tick = 0.3; // how much is gained/lost per frame
resource_bar_tick_casting = 0.05; // how much is gained while casting
resource_bar_color = c_blue;