if(global.hp <= 0){exit}
if(atk_pl){
	var _pitch = random_range(0.5, 1.5);
	global.hp -= irandom_range(1, 2);
	atk_pl = false;
	alarm = 60;
	audio_play_sound(snd_hit, 0, 0, 1, 0, _pitch);
}