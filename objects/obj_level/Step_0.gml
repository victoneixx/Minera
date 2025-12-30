if(global.start_game){exit}
global.t_mil--;

if(global.t_mil = -1){
	global.t_sec--;
	global.t_mil = 59;
}

if(global.t_sec = -1){
	global.t_sec = 59;
	global.t_min--;
}

if!(global.t_min = 0 && global.t_sec = 0){
	if(global.points >= global.points_max){
		global.game_over = true;
		show_message("VOCÊ CONSIGUI COLETAR TUDO");
		game_end();
	}
}else {
	global.game_over = true;
	show_message("FIM DE JOGO");
	game_end();
}