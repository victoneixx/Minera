// Verificando se o mouse esta em cima do bloco
var _enter = position_meeting(mouse_x, mouse_y, self);
if(global.mode){
	if(_enter){
		target = true
	} else{
		target = false;
	}
}

//	Sistema para quebrando o bloco
crack = min(crack, 11);
if(target){
	if(mouse_check_button_pressed(mb_left)){
		crack += 1;
		audio_play_sound(snd_miner, 0, 0);	
	}
}

//	Destroir o bloco quando for maior ou igual ao valor maximo
if(crack >= 11){
	instance_destroy();
}
