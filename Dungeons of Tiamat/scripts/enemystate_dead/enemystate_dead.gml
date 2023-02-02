// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_dead(){
	if(sprite_index != wolf_death)
	{
		image_xscale = -1
		sprite_index = wolf_death;
		
	}
}