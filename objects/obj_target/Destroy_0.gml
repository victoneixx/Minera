/// @description Inserir descrição aqui
if (pro < 0.60) {
    instance_create_layer(x, y, layer, obj_rock);       // 60%
}
else if (pro < 0.80) {
    instance_create_layer(x, y, layer, obj_coal);       // 20%
}
else if (pro < 0.92) {
    instance_create_layer(x, y, layer, obj_iron);       // 12%
}
else if (pro < 0.98) {
    instance_create_layer(x, y, layer, obj_gold);       // 6%
}
else {
    instance_create_layer(x, y, layer, obj_diamond);    // 2%
}
