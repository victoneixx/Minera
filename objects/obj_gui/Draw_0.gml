var _amount = (global.stamina / global.stamina_max)*50;
var _amount_fixed = (global.stamina_max / global.stamina_max)*50;
var _x1 = 1;
var _y1 = 1;

var _x2 = _x1 + _amount;
var _x2_fixed = _x1 + _amount_fixed;
var _y2 = _y1 + 4;

var _text = font_add_sprite_ext(fnt_text, global.fnt_map, 0, 0);
draw_set_font(_text);
draw_set_color(c_gray);
draw_rectangle(_x1, _y1, _x2_fixed, _y2, 0);

if(global.stamina > 0){
	draw_set_color(c_yellow);
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}
draw_set_color(c_white);
draw_text(1*54, 0.5, "stamina");
draw_set_font(-1);