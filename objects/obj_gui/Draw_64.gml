var _info = font_add_sprite_ext(fnt_info, global.fnt_map, 0, 0);
draw_set_font(_info);
draw_text(6, 6, "stamina:");
#region Desenhado a stamina do player
var _size_bar = 200;
var _amount = (global.sta / global.sta_max)*_size_bar;
var _amount_fixed = (global.sta_max / global.sta_max)*_size_bar;
var _x1 = 6;
var _y1 = 32;

var _x2 = _x1 + _amount;
var _x2_fixed = _x1 + _amount_fixed;
var _y2 = _y1 + 24;

draw_set_color(c_gray);
draw_rectangle(_x1, _y1, _x2_fixed, _y2, 0);
if(global.sta > 0){
	draw_set_color(make_color_rgb(255, 253, 136));
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}
draw_set_color(-1);
draw_set_halign(1);
draw_text(100, 28+8, "(" + string(global.sta) + "/" + string(global.sta_max) + ")");
#endregion
draw_set_font(-1);
draw_set_halign(-1);