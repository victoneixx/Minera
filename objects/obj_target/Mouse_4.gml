/// @description Inserir descrição aqui
if(target && alarm[0] <= 0){
	audio_play_sound(snd_mining, 0, 0);
	durability -= strength;
	image_alpha -= 0.1;
	alarm[0] = time;
}