/// @description Inserir descrição aqui
var _pos_h = window_get_width()/2;
draw_set_font(fnt_timer);
draw_set_halign(1);
draw_set_valign(1);

var _t = "";
if(t_min > 9){_t += "" + string(t_min)}
if(t_min < 10){_t += "0" + string(t_min)}
_t += ":"
if(t_sec > 9){_t += "" + string(t_sec)}
if(t_sec < 10){_t += "0" + string(t_sec)}

draw_text(_pos_h, 16, _t);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);