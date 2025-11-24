/// @description Inserir descrição aqui
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