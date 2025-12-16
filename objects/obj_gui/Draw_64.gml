/// @description Inserir descrição aqui
var _wds_x = display_get_gui_width();
draw_set_font(fnt_money);
draw_set_halign(2);
draw_text(_wds_x, 0, "$0");
draw_text(_wds_x, 32, "Level0");
draw_set_halign(-1);
draw_set_font(-1);

for(var i = 0; i < global.ray_max; i++){
	var _pos_x = 0;
	var _offset = 32;
	var _x1 = _pos_x + (_offset * i);
	draw_sprite_ext(spr_ray, 1, _x1, 0, 4, 4, 0, c_white, 1);
}

for(var i = 0; i < global.ray; i++){
	var _pos_x = 0;
	var _offset = 32;
	var _x1 = _pos_x + (_offset * i);
	draw_sprite_ext(spr_ray, 0, _x1, 0, 4, 4, 0, c_white, 1);
}