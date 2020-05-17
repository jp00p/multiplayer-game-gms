/// @desc
if(equipped != -1){
	instance_destroy(equipped);	
}
if(bomb != -1){
	with(bomb){
		owner = noone;	
	}
}
repeat(10){
	if(Chance(0.5)){
		CreateCoin();
	}
}