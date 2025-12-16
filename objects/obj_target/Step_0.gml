/// @description Inserir descrição aqui
if(crack >= 11){
	instance_destroy(self);
}

if(keyboard_check_pressed(ord("X"))){
	x_ray =! x_ray;
}

show_debug_message(global.strength);

if(x_ray){
	if (random_ore < 0.60) {
	    image_index = 0; // Pedra (60%)
	} else if (random_ore < 0.82) {
	    image_index = 1; // Carvão (22%)
	} else if (random_ore < 0.92) {
	    image_index = 2; // Ferro (10%)
	} else if (random_ore < 0.97) {
	    image_index = 3; // Ouro (5%)
	} else {
	    image_index = 4; // Diamante (3%)
	}
} else{
	image_index = 0;
}
