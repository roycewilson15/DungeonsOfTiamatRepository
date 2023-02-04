// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zombie_hit(_damage){

zombiehp -= _damage;

	if(zombiehp <= 0)
	{
		instance_destroy();	
	}
}