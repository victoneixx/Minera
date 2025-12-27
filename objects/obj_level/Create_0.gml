randomize();
//	Sistema de seed do jogo
_seed_info = noone;
_seed = noone;
_seed_info = get_string("Set you'r seed", "");
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
		instance_create_layer(xx+8, yy+8, "gen", obj_block);
	}
}