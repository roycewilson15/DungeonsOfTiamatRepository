// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_hit(_damage){

playerhp -= _damage;

	if(playerhp <= 0)
	{
		instance_destroy();
		room_restart();
	
	}
}