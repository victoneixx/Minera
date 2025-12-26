if(global.hp < global.hp_max){
	instance_destroy(self);
	global.hp += irandom_range(1, 2);
} else{
	instance_destroy(self);
}