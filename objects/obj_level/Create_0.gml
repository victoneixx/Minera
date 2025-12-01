/// @description Inserir descrição aqui
randomize();
seed = 0;
var _seed_info = get_string("SUA SEED AQUI", "");
if(_seed_info == ""){
	seed = irandom(999);
} else {
	seed = _seed_info;
}
random_set_seed(seed);

cell = 16;
cell_w = room_width;
cell_h = room_height;

instance_create_layer(151, 112, layer, obj_player);

for(var xx = 0; xx < cell_w; xx += cell){
	for(var yy = 0; yy < cell_h; yy += cell){
		var _xx = xx+8;
		var _yy = yy+8;
		instance_create_layer(_xx, _yy, layer, obj_stone);
	}
}

t_min = 0;
t_sec = 0;
t_mil = 0;
