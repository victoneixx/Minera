//	Desenhando a se memso
draw_self();

//	Desenhando a rachadura no bloco
draw_sprite(spr_crack, crack, x, y);

//	Desenhdo um alvo branco no bloco
if(global.mode){
	if(target){
		draw_set_alpha(0.5);
		draw_sprite(spr_target, 0, x, y);
		draw_set_alpha(1);
	}
}