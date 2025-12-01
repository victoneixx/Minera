/// @description Inserir descrição aqui
if(keyboard_check_pressed(vk_escape)){game_end()}
if(keyboard_check_pressed(ord("R"))){game_restart()}
show_debug_message(seed);

t_mil--;
if(t_mil = -1){
	t_mil = 60;
	t_sec++;
}

if(t_sec >= 60){
	t_sec = 0;
	t_min++;
}