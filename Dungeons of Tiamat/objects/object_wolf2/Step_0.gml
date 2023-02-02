/// @description Insert description here
// You can write your code in this editor

switch (wolfstate)
{
	case ENEMYSTATE.IDLE: enemystate_idle();
	break;
	
	case ENEMYSTATE.HIT: enemystate_hit();
	break;
	
	case ENEMYSTATE.DEAD: enemystate_dead();
	break;
}

if(direction>90)
{
	image_xscale = -1;	
}
else
{
	image_xscale = 1;
}