/// @description Inserir descrição aqui
cell_s = 16;
cell_w = room_width div cell_s;
cell_h = room_height div cell_s;

grid = ds_grid_create(cell_w, cell_h);
ds_grid_clear(grid, 0);

for(var xx = 0; xx < cell_w; xx++){
	for(var yy = 0; yy < cell_h; yy++){
		var _random = irandom(1);
		if(_random == 1) grid[# xx, yy] = 1;
		else grid[# xx, yy] = 0;
	}
}

for(var xx = 0; xx < cell_w; xx++){
	for(var yy = 0; yy < cell_h; yy++){
		var vel = grid[# xx, yy];
		if(vel == 1) instance_create_layer(xx*16, yy*16, layer, obj_stone);
		else instance_create_layer(xx*16, yy*16, layer, obj_grass);
	}
}