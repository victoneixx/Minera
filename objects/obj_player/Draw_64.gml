/// @description Inserir descrição aqui
for(var i = 0; i < energy_max; i++){
	var _xx = 0;
	var _yy = 0;
	var _offset = 32;
	var _x1 = _xx + (_offset * i);
	draw_sprite_ext(spr_energy, 1, _x1, _yy, 4, 4, 0, c_white, 1);
}

for(var i = 0; i < energy; i++){
	var _xx = 0;
	var _yy = 0;
	var _offset = 32;
	var _x1 = _xx + (_offset * i);
	draw_sprite_ext(spr_energy, 0, _x1, _yy, 4, 4, 0, c_white, 1);
}


				//Life//
for(var i = 0; i < life; i++){
	var _xx = 0;
	var _yy = 32;
	var _offset = 32;
	var _x1 = _xx + (_offset * i);
	draw_sprite_ext(spr_life, 1, _x1, _yy, 4, 4, 0, c_white, 1);
}

for(var i = 0; i < life; i++){
	var _xx = 0;
	var _yy = 32;
	var _offset = 32;
	var _x1 = _xx + (_offset * i);
	draw_sprite_ext(spr_life, 0, _x1, _yy, 4, 4, 0, c_white, 1);
}