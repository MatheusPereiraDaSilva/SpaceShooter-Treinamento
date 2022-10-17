/// @description Insert description here
// You can write your code in this editor

//Quando o inimigo é destruído essa função é executada
//show_debug_message("O inimigo está morto");


if (instance_exists(obj_control)){
//Quando o inimigo morre, o método de pontos é ativado
	instance_destroy();
}

dropa_item(chance);
