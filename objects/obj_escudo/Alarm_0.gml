/// @description Insert description here
// You can write your code in this editor

image_index -= 1;

if(image_index == -1){
	instance_destroy();
} else {
	image_alpha -= .2;
}

alarm[0] = room_speed * 2;