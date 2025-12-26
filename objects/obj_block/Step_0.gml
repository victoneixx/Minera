if(global.hp <= 0){exit}
var _pos_block = position_meeting(mouse_x, mouse_y, self);
if(global.mode){
	// Verificando se o mouse esta em cima do bloco
	if(_pos_block){
		target = true
	} else{
		target = false;
	}

	//	Sistema para quebrando o bloco
	crack = min(crack, 11);

	//	Destroir o bloco quando for maior ou igual ao valor maximo
	if(crack >= 11){
		instance_destroy();
	}
}