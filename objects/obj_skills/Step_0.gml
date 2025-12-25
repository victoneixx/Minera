if(global.stamina <= 0 && alarm[0] < 0){
	alarm[0] = 60;
} else if(global.stamina >= 8){
	alarm[0] = 0;
}

show_debug_message(global.stamina);
show_debug_message(alarm[0]);