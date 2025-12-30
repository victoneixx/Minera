if(global.start_game){exit}
if(global.pause){exit}
if(global.game_over){exit}
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
	sprite_index = spr_player_moving;
	image_speed = 0.6;
	if(step){
		audio_play_sound(snd_step, 0, 0, 1, 0, _pitch);
		alarm[0] = delay;
		step = false;
	}
} else{
	sprite_index = spr_player_idle;
	image_speed = 0;
}

if(keyboard_check_pressed(vk_f1)){global.info =! global.info;}

var _pos_block = position_meeting(mouse_x, mouse_y, obj_block);
if(global.sta < global.sta_max && alarm[1] < 0){
	alarm[1] = loading / global.skl_str;
} else if(global.sta >= global.sta_max){
	alarm[1] = 0;
}

if(_pos_block){
	if(global.sta >= global.skl_str){
		if(mouse_check_button_pressed(mb_left)){
			global.sta -= global.skl_str;
			alarm[1] = loading / global.skl_str;
		}
	}
}

if(global.skl_str < 9){
	if(global.xp >= global.xp_list[global.skl_str - 1]){
		global.xp = 0;
		global.sta_max += 3;
		global.skl_str++;
		audio_play_sound(snd_up, 0, 0);
	}
}