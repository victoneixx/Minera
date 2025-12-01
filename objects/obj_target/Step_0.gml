/// @description Inserir descrição aqui
if(durability <= 0){
	instance_destroy(self);
}

if (pro < 0.60) {
    sprite_index = spr_stone;
}
else if (pro < 0.80) {
    sprite_index = spr_ore_coal;
}
else if (pro < 0.92) {
    sprite_index = spr_ore_iron;
}
else if (pro < 0.98) {
   sprite_index = spr_ore_gold;
}
else {
   sprite_index = spr_ore_diamond;
}