/// @description Insert description here
// You can write your code in this editor
wolfstate = ENEMYSTATE.IDLE


wolfhp = 3;
isHit = false;

path_start(wolfpath1,2,path_action_reverse,1);

enum ENEMYSTATE
{
	IDLE,//idle
	WANDER,//walking around
	ATTACK,//attacking state
	HIT,
	DEAD
	
}
