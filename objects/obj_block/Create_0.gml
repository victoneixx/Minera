//	Variaveis de mineração
target = false;
crack = 0;
//	Sistema de criação dos minerios
ore = random(1);
if (ore < 0.60) {
    image_index = 0; // Pedra (comum)
} else if (ore < 0.75) {
    image_index = 1; // Carvão
} else if (ore < 0.87) {
    image_index = 2; // Ferro
} else if (ore < 0.95) {
    image_index = 3; // Ouro
} else {
    image_index = 4; // Diamante (raro)
}