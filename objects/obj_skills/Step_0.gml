/// @description Inserir descrição aqui
global.ray = clamp(global.ray, 0, global.ray_max);
global.skill_str = min(global.skill_str, 9);

if(global.ray > global.skill_str-1){
	if(mouse_check_button_pressed(mb_left)){
		alarm[0] = 120 div global.skill_str;
		global.ray -= global.skill_str;
	}
}

if(global.skill_str >= 9){exit}
if(global.xp_str >= global.list_points[global.skill_str-1]){
	global.skill_str++;
	global.xp_str = 0;
	audio_play_sound(snd_level_up, 0, 0);
}