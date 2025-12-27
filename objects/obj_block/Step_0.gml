// Verificando se o mouse esta em cima do bloco
var _pos_block = position_meeting(mouse_x, mouse_y, self);
if(_pos_block){
	target = true
} else{
	target = false;
}

//	Sistema para quebrando o bloco
var _pitch = random_range(0.5, 1.5);
if(target){
	if(mouse_check_button_pressed(mb_left)){
		if(image_index = 0){
			crack += 0.8*global.str;
		} else if(image_index = 1){
			crack += 0.6*global.str;
		} else if(image_index = 2){
			crack += 0.4*global.str;
		} else if(image_index = 3){
			crack += 0.2*global.str;
		} else if(image_index = 4){
			crack += 0.1*global.str;
		}
		audio_play_sound(snd_miner, 0, 0, 1, 0, _pitch);	
	}
}

//	Destroir o bloco quando for maior ou igual ao valor maximo
crack = min(crack, 11);
if(crack >= 11){
	instance_destroy();
}
