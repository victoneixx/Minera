//	Tocar um efeito sonoro quando for destroido
var _pitch = random_range(0.5, 1.5);
audio_play_sound(snd_destroyed, 0, 0, 1, 0, _pitch);