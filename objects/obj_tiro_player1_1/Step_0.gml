/// @description Insert description here
// You can write your code in this editor

//Diminuindo a escala do tiro

//Lerp é uma função de aproximação, eu faço o meu valor chegar em outro valor por uma porcentagem
//lerp (valor que eu tenho, valor para chegar, porcentagem de aproximação)

//Fazendo meu xscale chegar no valor original que é 1
image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_xscale, 1, 0.5);


