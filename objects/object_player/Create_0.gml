

//establish state variable, which is state the character is in
state = PLAYERSTATE.FREE;

//tracks what has been hit by the player
hitByAttack = ds_list_create();

//enum is like a global variable 
enum PLAYERSTATE
{
	FREE,//free to move around 
	ATTACK//attacking state
	
	
}