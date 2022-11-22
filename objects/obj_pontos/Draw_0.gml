/// @description Insert description here
// You can write your code in this editor

//Desenhando a maior pontuação	
	draw_set_font(fnt_pontos);
	
	draw_text(160, 180, "Maior pontuação: " + string(_pontos));
	
	draw_text(160, 280, "Inimigos mortos: " + string(global.total_inimigos));
	
	draw_text(160, 380, "Total de mortes: " + string(global.total_mortes));
	
	draw_set_font(-1);

if (_pontos < global.max_pontos){
	var _incrementa_pontos = global.max_pontos * 0.005;
	_pontos += _incrementa_pontos;
}