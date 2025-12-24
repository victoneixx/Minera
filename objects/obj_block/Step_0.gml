var _enter = position_meeting(mouse_x, mouse_y, self);
if(global.mode){
	// Verificando se o mouse esta em cima do bloco
	if(_enter){
		target = true
	} else{
		target = false;
	}

	//	Sistema para quebrando o bloco
	crack = min(crack, 11);
	var _pitch = random_range(0.5, 1.5);
	if(target){
		if(mouse_check_button_pressed(mb_left)){
			if ( image_index = 0) {
				crack += 0.8
			} else if (image_index = 1) {
				crack += 0.6;
			} else if (image_index = 2) {
				crack += 0.4;
			} else if (image_index = 3) {
				crack += 0.2;
			} else if(image_index = 4){
				crack += 0.1;
			}
			audio_play_sound(snd_miner, 0, 0, 1, 0, _pitch);	
		}
	}

	//	Destroir o bloco quando for maior ou igual ao valor maximo
	if(crack >= 11){
		instance_destroy();
	}
}