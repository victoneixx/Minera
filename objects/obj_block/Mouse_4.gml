if(global.hp <= 0){exit}
var _pitch = random_range(0.5, 1.5);
if(global.mode){
	if(target && global.sta >= global.str){
		if ( image_index = 0) {
			crack += 0.8*global.str;
		} else if (image_index = 1) {
			crack += 0.6*global.str;
		} else if (image_index = 2) {
			crack += 0.4*global.str;
		} else if (image_index = 3) {
			crack += 0.2*global.str;
		} else if(image_index = 4){
			crack += 0.1*global.str;
		}
		audio_play_sound(snd_miner, 0, 0, 1, 0, _pitch);	
	}
}