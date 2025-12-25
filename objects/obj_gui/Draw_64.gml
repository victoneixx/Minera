var _amount = (global.stamina / global.stamina_max)*200;
var _amount_fixed = (global.stamina_max / global.stamina_max)*200;
var _x1 = 4;
var _y1 = 4;

var _x2 = _x1 + _amount;
var _x2_fixed = _x1 + _amount_fixed;
var _y2 = _y1 + 24;

var _txt = font_add_sprite_ext(fnt_text, global.fnt_map, 0, 0);
draw_set_font(_txt);
draw_set_color(c_gray);
draw_rectangle(_x1, _y1, _x2_fixed, _y2, 0);

draw_set_color(c_yellow);
if(global.stamina > 0){
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}
draw_set_color(c_white);

draw_set_halign(1);
draw_text(100, 4*2, "(" + string(global.stamina) + "/" + string(global.stamina_max) + ")");
draw_set_halign(-1);

draw_rectangle(_x1, _y1, _x2_fixed, _y2, 1);
draw_set_font(-1);
