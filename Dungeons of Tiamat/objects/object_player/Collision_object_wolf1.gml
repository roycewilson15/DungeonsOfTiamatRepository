/// @description Insert description here
// You can write your code in this editor

if(ableToHit == true)
{
	player_hit(1);// 1 damage to player
	playerIsHit = true; // set player is hit to true to allow flash effect
	ableToHit = false; //set to false so player gets a break from being hit
	alarm[0] = 3; //sets alarm to change isHit to true to produce flash
	alarm[1] = 20;//sets alarm to change ableToHit back to true
}
