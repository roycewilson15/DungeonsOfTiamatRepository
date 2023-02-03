/// @description make player flash if hit 
// You can write your code in this editor


if !(playerIsHit) draw_self();

//does the flashing affect when hit by hitbox
if (playerIsHit)
{
	gpu_set_fog(true, c_red, 0 , 0);
	draw_self();
	gpu_set_fog(false, c_red, 0 , 0);
	
}