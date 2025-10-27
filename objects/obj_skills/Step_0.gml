/// @description Inserir descrição aqui


if(lev_min >= lev_max){
	lev_min = 0;
	lev_max += 2*1;
}

if(keyboard_check_pressed(ord("M"))){
	lev_min += 0.4;
}