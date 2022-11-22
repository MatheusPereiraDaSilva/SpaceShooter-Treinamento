/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

var multiplicador1 = 0;
var multiplicador2 = 0;
var espaco = 40;

repeat(vida){
draw_sprite_ext(spr_player, 0, 25 + espaco * multiplicador1, altura_gui - 1000, 0.3, 0.3, 20, c_white, 1);

multiplicador1++;
}

repeat(escudos){
draw_sprite_ext(spr_escudo, 0, 25 + espaco * multiplicador2, altura_gui - 955, 0.3, 0.3, 20, c_white, 1);

multiplicador2++;
}
