/// @description Insert description here
// You can write your code in this editor

//player left and right movement
if(keyboard_check(vk_left)){
	x -= 10;
	sprite_index = player_walking;
	image_xscale = 1;
}
else if(keyboard_check(vk_right)){
	x += 10;
	sprite_index = player_walking;
	image_xscale = -1;
}
else{
	sprite_index = player_idle;	
}


