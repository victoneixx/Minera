randomize();
global.points_max = irandom_range(16367, 27360);
audio_play_sound(snd_song, 0, 1);

//	Sistema de seed do jogo
//_seed_info = noone;
//_seed = noone;
//_seed_info = get_string("Set your seed", "");
//if(_seed_info == ""){
//	_seed = irandom(99999999);
//} else{
//	_seed = _seed_info;
//}
random_set_seed(irandom(99999999));

global.t_min = 36;
global.t_sec = 0;
global.t_mil = 0;

//	Sistema de geração do jogo
cell_s = 16;
cell_h = room_width;
cell_v = room_height;

for(var xx = 0; xx < cell_h; xx += cell_s){
	for(var yy = 16; yy < cell_v; yy += cell_s){
		instance_create_layer(xx+8, yy+8, "gen", obj_block);
	}
}