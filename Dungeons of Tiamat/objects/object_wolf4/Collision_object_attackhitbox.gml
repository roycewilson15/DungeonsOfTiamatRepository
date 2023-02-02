/// @description Insert description here
// You can write your code in this editor


//when there is collision set isHit to true which creates the flash
isHit = true;
alarm[0] = 3;

//call wolf hit that will destroy the wolf when hp = 0
wolf_hit(1);//1 damage dealt

//destroys the hitbox(other) on contact with wolf
with (other) instance_destroy();
