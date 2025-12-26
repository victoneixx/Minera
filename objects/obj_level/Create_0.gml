randomize();
//	Sistema de seed do jogo
_seed_info = noone;
_seed = noone;
_seed_info = get_string("Set your seed", "");
if(_seed_info == ""){
	_seed = irandom(99999999);
} else{
	_seed = _seed_info;
}
random_set_seed(_seed);

//	Sistema de geração do jogo
cell_s = 16;
cell_h = room_width;
cell_v = room_height;

for(var xx = 0; xx < cell_h; xx += cell_s){
	for(var yy = 16; yy < cell_v; yy += cell_s){
		instance_create_layer(xx+8, yy+8, "level_gen", obj_block); 
	}
}

var b = instance_position(160, 96, obj_block);
if (b != noone) instance_destroy(b);
instance_create_layer(160+8, 96+8, "level_gen", obj_hole);
