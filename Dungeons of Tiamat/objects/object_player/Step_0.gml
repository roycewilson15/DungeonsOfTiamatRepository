/// @description Insert description here
// You can write your code in this editor


//movement and attack variables so you can move with different keys
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyAttack = keyboard_check(vk_space);

//switch statment to call scripts for attack or movement
switch (state)
{
	case PLAYERSTATE.FREE: playerstate_free();
	break;
	
	case PLAYERSTATE.ATTACK: playerstate_attack();
	break;
	
}

