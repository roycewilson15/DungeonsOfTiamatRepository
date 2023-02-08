// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tiamat_hit(_damage){

tiamathp -= _damage;

	if(tiamathp <= 0)
	{
		instance_destroy();	
		
		//maybe can just load the win screen from here
	}
}