if!(global.t_min = 0 && global.t_sec = 0){
	if(global.points >= global.points_max){
		global.game_over = true;
	}
}else {
	global.game_over = true;
}

if(global.start_game){exit}
if(global.pause){exit}
if(global.game_over){exit}
global.t_mil--;

if(global.t_mil = -1){
	global.t_sec--;
	global.t_mil = 59;
}

if(global.t_sec = -1){
	global.t_sec = 59;
	global.t_min--;
}