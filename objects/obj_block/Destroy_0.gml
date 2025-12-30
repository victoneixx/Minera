//	Tocar um efeito sonoro quando for destroido
var _pitch = random_range(0.5, 1.5);
audio_play_sound(snd_destroyed, 0, 0, 1, 0, _pitch);
if(image_index = 0){
	global.xp += 4;
	instance_create_layer(x, y, "ore", obj_rock);
} else if(image_index = 1){
	global.xp += 10;
	instance_create_layer(x, y, "ore", obj_coal);
} else if(image_index = 2){
	global.xp += 18;
	instance_create_layer(x, y, "ore", obj_iron);
} else if(image_index = 3){
	global.xp += 30;
	instance_create_layer(x, y, "ore", obj_gold);
} else if(image_index = 4){
	global.xp += 60;
	instance_create_layer(x, y, "ore", obj_diamond);
}