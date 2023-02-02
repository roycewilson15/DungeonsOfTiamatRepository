// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function playerstate_attack(){

//start the attack
	if(sprite_index != player_attack)
	{
		sprite_index = player_attack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	//use attack hitbox and check for hits
	mask_index = player_attack_hitbox;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,object_wolf1,hitByAttackNow,false);
	
	if(hits > 0)
	{
		for(var i = 0; i < hits; i++)
		{
			//if this instance has not been hit by this attack
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID) == -1)
			{
				ds_list_add(hitByAttack,hitID);
				with(hitID)
				{
				   // this is where you add input of what happens when enemy is hit	
				   
				   
				   
				}
				
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = player_idle;
	
	if(animation_end())
	{
		sprite_index = player_idle;	
		state = PLAYERSTATE.FREE;
	}
}