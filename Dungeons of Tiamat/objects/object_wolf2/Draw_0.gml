/// @description Insert description here
// You can write your code in this editor

if !(isHit) draw_self();

//does the flashing affect when hit by hitbox
if (isHit)
{
	gpu_set_fog(true, c_white, 0 , 0);
	draw_self();
	gpu_set_fog(false, c_white, 0 , 0);
	
}