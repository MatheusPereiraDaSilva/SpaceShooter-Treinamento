/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

var multiplicador = 0;
var espaco = 40;
repeat(vida){
draw_sprite_ext(spr_player, 0, 25 + espaco * multiplicador, altura_gui - 1000, 0.3, 0.3, 20, c_white, 1);

multiplicador++;
}
