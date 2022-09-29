/// @description Insert description here
// You can write your code in this editor

//Desenhar o objeto tiro automaticamente -- Se você criar o evento draw, pra fazer aparecer o tiro 
// vc precisa usar esse comando
draw_self();

//Desenhando o brilho

/*
Meu tiro = 16x24 = 16x24
Meu brilho 59x109 = 
*/

//Alterando como o vídeo trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_tiro1, image_index, x, y, image_xscale * 0.7, image_yscale * .7, image_angle, cores, 0.5);

//Voltando ao normal
gpu_set_blendmode(bm_normal);