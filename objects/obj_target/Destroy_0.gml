/// @description Inserir descrição aqui
if (random_ore < 0.60) {
	instance_create_layer(x, y, layer, obj_stone);
} else if (random_ore < 0.82) {
	instance_create_layer(x, y, layer, obj_coal);
} else if (random_ore < 0.92) {
	instance_create_layer(x, y, layer, obj_iron);
} else if (random_ore < 0.97) {
	instance_create_layer(x, y, layer, obj_gold);
} else {
	instance_create_layer(x, y, layer, obj_diamond);
}