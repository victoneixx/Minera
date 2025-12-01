/// @description Inserir descrição aqui
if(target){
	draw_sprite_ext(spr_bar, durability, 4, 4, 3, 3, 0, c_white, 1);
	if(alarm[0] > 0){
		draw_text(4, 24, "NO");
	} else{
		draw_text(4, 24, "YES");
	}
}

