global.coins = min(global.coins+1, 999); // add one coin

with(other){
	instance_destroy();	
}
with(obj_game){
	coin_bounce = 8;
}