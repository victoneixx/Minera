var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();
var _info = font_add_sprite_ext(fnt_info, global.fnt_map, 0, 0);
draw_set_font(_info);
draw_set_halign(1);
draw_set_valign(1);
if(global.start_game){
	draw_text(_gui_w/2, _gui_h/2, "minera - the ore quets!");
	draw_text(_gui_w/2, _gui_h/2+24, "press space to start the game");
}

if(global.pause){
	draw_text(_gui_w/2, _gui_h/2, "pause!");
	draw_text(_gui_w/2, _gui_h/2+24, "press esc to unpause the game");
}

if!(global.t_min = 0 && global.t_sec = 0){
	if(global.points >= global.points_max){
		draw_text(_gui_w/2, _gui_h/2, "you win =)");
	}
}else {
	draw_text(_gui_w/2, _gui_h/2, "you loos =(");
}

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);