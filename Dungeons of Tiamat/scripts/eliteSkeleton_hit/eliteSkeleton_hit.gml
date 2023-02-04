// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function eliteSkeleton_hit(_damage){

eliteskeletonhp -= _damage;

	if(eliteskeletonhp <= 0)
	{
		instance_destroy();	
	}

}