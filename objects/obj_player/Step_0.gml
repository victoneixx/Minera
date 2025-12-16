/// @description Inserir descrição aqui
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
global.ray = clamp(global.ray, 0, global.ray_max);

hspd = (_right - _left)*vel;
vspd = (_down - _up)*vel;

move_and_collide(hspd, vspd, obj_wall);

var _moving = _right || _left || _up || _down;

if(_moving){
	if(play_snd){
		audio_play_sound(snd_step, 0, 0)
		play_snd = false;
		alarm[0] = 20;
	}
}

if(mouse_check_button_pressed(mb_left)){
	alarm[1] = 60;
	global.ray -= global.strength*2;
}