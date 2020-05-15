///@desc GetInput()
///@arg player

player = argument0;

if(player == 1){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_action = keyboard_check_pressed(ord("E"));
	key_action2 = keyboard_check_pressed(ord("Q"));
	key_skill_up = keyboard_check_pressed(ord("2"));
	key_skill_down = keyboard_check_pressed(ord("1"));
} else {
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_up = keyboard_check(vk_up);
	key_down = keyboard_check(vk_down);	
	key_action = keyboard_check_pressed(vk_space);
	key_action2 = keyboard_check_pressed(vk_enter);
	key_skill_up = keyboard_check_pressed(vk_pageup);
	key_skill_down = keyboard_check_pressed(vk_pagedown);
}

input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);
input_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
