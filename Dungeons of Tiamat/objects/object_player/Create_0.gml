

//establish state variable, which is state the character is in
state = PLAYERSTATE.FREE;
playermaxhp = 3;
global.playerhp = playermaxhp;


playerIsHit = false;
ableToHit = true;
//tracks what has been hit by the player
hitByAttack = ds_list_create();

//enum is like a global variable 
enum PLAYERSTATE
{
	FREE,//free to move around 
	ATTACK//attacking state
	
	
}