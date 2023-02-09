/// @description Insert description here
// You can write your code in this editor

if(ableToHit == true)
{
	
	player_hit(1);//deals 1 damage to player
	playerIsHit = true;//set to true to create flash effect 
	ableToHit = false;//set to false so that player gets break from being hit 
	alarm[0] = 3;//alarm for playerishit
	alarm[1] = 20;//alarm for abletohit

}
