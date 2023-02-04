// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//holds the movement controls
function playerstate_free(){

	//player left and right movement
	//move left
	if(keyLeft){
		x -= 10;
		sprite_index = player_walking;
		image_xscale = 1;
	}
	//move right
	else if(keyRight){
		x += 10;
		sprite_index = player_walking;
		image_xscale = -1;
	}
	//not moving
	else{
		sprite_index = player_idle;	
	}
	//if player presses attack key PLAYERSTATE is changed to attack
	if(keyAttack) 
	{
		var playerCenterx = x +sprite_width /2;
		var playerCentery = y +sprite_height /2;
		
		var LEN = 190;
		var hitboxX = lengthdir_x(LEN,direction) + playerCenterx;
		var hitboxY = lengthdir_y(LEN,direction) + playerCentery;
		
		instance_create_depth(hitboxX, hitboxY, depth, object_attackhitbox);
		
		state = PLAYERSTATE.ATTACK;
	}
}