/// @description Inserir descrição aqui
randomize();
var _seed_info = get_string("Informe a sua seed:", "666");
if(_seed_info == ""){
	var _seed = irandom(999999999);
} else{
	var _seed = _seed_info;
}
random_set_seed(_seed);

cell_s = 16;
cell_w = room_width;
cell_h = room_height;

instance_create_layer(151, 112, layer, obj_player);

for(var xx = 0; xx < cell_w; xx += cell_s){
	for(var yy = cell_s; yy < cell_h; yy += cell_s){
		var _xx = xx+8;
		var _yy = yy+8;
		instance_create_layer(_xx, _yy, layer, obj_ore);
	}
}