/// @description Insert description here
// You can write your code in this editor

instance_destroy();
instance_create_layer(x, y, "Tiros", obj_explosao_inimigos);
obj_control.ganha_pontos(pontos);
obj_player.perde_vida();
//show_debug_message(obj_player.vida);

instance_create_layer(0, 0, layer, obj_shaking);