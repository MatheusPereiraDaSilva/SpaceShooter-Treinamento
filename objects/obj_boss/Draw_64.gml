/// @description Insert description here
// You can write your code in this editor

//Desenhando a barra de vida do Boss
//Desenhando a minha barra de vida com 30 pixels de altura
//Convertendo o valor da vida atual do boss em um número entre 0 e 100
//vida_atual dividida por vida_max vai retornar um valor entre 0 e 1 enquanto vida_atual
//Menor ou igual a vida_max, depois ao multiplicar esse resultado por 100

var _vida = (vida_atual / vida_max) * 100;

draw_healthbar(200, 20, 1820, 30, _vida, c_black, c_maroon, c_lime, 0, true, 1);

