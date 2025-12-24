//	Pegando quais teclas devem ser presonadas
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

//	Pegando e aplicando a direção do player
hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

//	Sistema de colisão & movimentação
move_and_collide(hspd, 0, obj_wall);
move_and_collide(0, vspd, obj_wall);


//	Efeito sonoro de passos do player
var _pitch = random_range(0.5, 1.5);
if(_right || _left || _down || _up){
	if(step){
		audio_play_sound(snd_step, 0, 0, 1, 0, _pitch);
		alarm[0] = delay;
		step = false;
	}
}

//	Escolhendo o modo entre mineração ou ataque
if(keyboard_check_pressed(ord("E"))){
	global.mode =! global.mode;
	audio_play_sound(snd_select, 0, 0);
}

if(keyboard_check_pressed(ord("R"))){
	room_restart();
}