// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_hit(_damage){

flash = true;
wolfhp -= _damage;

	if(wolfhp > 0)
	{
		state = ENEMYSTATE.HIT;
		
	}
	else
	{
	  state = ENEMYSTATE.DEAD;	
	}

}