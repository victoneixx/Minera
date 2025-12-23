//	Pegando quais teclas devem ser presonadas
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

//	Pegando e aplicando a direção do player
hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

//	Sistema de colisão & movimentação
for(var i = 0; i < array_length(collision_list); i++){
	move_and_collide(hspd, 0, collision_list[i]);
	move_and_collide(0, vspd, collision_list[i]);
}

//	Efeito sonoro de passos do player
if(_right || _left || _down || _up){
	if(step){
		audio_play_sound(snd_step, 0, 0);
		alarm[0] = delay;
		step = false;
	}
}