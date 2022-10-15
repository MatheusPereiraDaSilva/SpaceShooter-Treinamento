/// @description Insert description here
// You can write your code in this editor

instance_destroy();
instance_create_layer(x, y, "Tiros", obj_explosao_inimigos);
obj_player.perde_vida();

//show_debug_message(obj_player.vida);
