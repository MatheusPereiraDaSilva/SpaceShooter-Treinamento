/// @description Insert description here
// You can write your code in this editor

//Fazendo o tiro aparecer
draw_self();


//Alterando como o vídeo trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_inimigo1, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, cores, 0.5);

//Voltando ao normal
gpu_set_blendmode(bm_normal);

