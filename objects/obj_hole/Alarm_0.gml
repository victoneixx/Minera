if(global.hp <= 0){exit}
alarm[0] = time;
if(instance_number(obj_slime) <= 1){
	var _pitch = random_range(0.5, 1.5);
	audio_play_sound(snd_enemy, 0, 0, 1, 0, _pitch);
	instance_create_layer(x, y+4, "player", obj_slime);
}