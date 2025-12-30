//	Desenhando a se memso
draw_self();
if(global.start_game){exit}
if(global.pause){exit}
if(global.game_over){exit}

//	Desenhando a rachadura no bloco
draw_sprite(spr_crack, crack, x, y);

//	Desenhdo um alvo branco no bloco
if(target){
	draw_set_alpha(1);
	draw_sprite(spr_target, 0, x, y);
	draw_set_alpha(1);
}