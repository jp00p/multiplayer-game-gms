///@desc take damage

hit = 1; // debounce for multiple attacks
var damage = irandom_range(1,3);
hp = max(hp-damage, 0);

CreateBlood(x, y, 10);
ScreenShake(hit_by.player_cam, 5, 15);



with(instance_create_layer(x,y,"Instances",obj_damage_text)){
	text = damage;
	owner = other.id;
	y_start = other.y-10;
	y_to = y_start - 32;
}


var hit_from = hit_by.facing;
var aggro_from;

if(hit_by.id == obj_player1.id){
	aggro_from = 0;
} else {
	aggro_from = 1;	
}

threat[aggro_from] += 10;


// knockback
if(hit_from != -1){
	path_end();
	EnemyKnockback(damage, hit_from);
}

// die
if(hp <= 0){
	CreateBlood(x, y, 100);
	instance_destroy();
}

// set hit debounce
alarm[0] = 15; // hit = 0