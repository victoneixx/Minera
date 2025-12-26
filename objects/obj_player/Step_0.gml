if(global.hp <= 0){exit}

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

//	Escolhendo o modo entre mineração ou ataque
if(keyboard_check_pressed(ord("E"))){
	global.mode =! global.mode;
	audio_play_sound(snd_select, 0, 0);
}

if(keyboard_check_pressed(vk_f1)){
	global.info =! global.info;
	audio_play_sound(snd_select, 0, 0);
}

if(keyboard_check_pressed(ord("R"))){
	room_restart();
}

#region Sistema de stamina
var _pos_block = position_meeting(mouse_x, mouse_y, obj_block);
var _pos_enemy = position_meeting(mouse_x, mouse_y, obj_slime);
if(global.sta < global.sta_max && alarm[0] < 0){
	alarm[0] = loading;
} else if(global.sta >= global.sta_max){
	alarm[0] = loading;
}

if(global.mode && _pos_block){
	if(global.sta >= global.str){
		if(mouse_check_button_pressed(mb_left)){
			global.sta -= global.str;
		}
	}
} else if(global.mode == false && _pos_enemy){
	if(global.sta >= global.atk){
		if(mouse_check_button_pressed(mb_left)){
			global.sta -= global.atk;
		}
	}
}
#endregion
