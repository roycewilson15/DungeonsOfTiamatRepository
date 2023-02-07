// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_music(){

	if (room == start_screen)
	{
		audio_play_sound(mStart_Screen, 1, false);	
	}
	if (room == town_level)
	{
		audio_play_sound(mTown_Lvl1, 1, false);	
	}
	if (room == forest_level1)
	{
		audio_play_sound(mForest, 1, false);	
	}
	if (room == deepforest_level2)
	{
		audio_play_sound(mEntrance_Lvl3, 1, false);	
	}
	if (room == cave_level)
	{
		audio_play_sound(mBoss_Lvl3, 1, false);	
	}
	
}

////var room = argument0;

//	switch(room)
//	{
//		case room = start_screen: 
//			audio_play_sound(mStart_Screen, 1, true);
//		break;
		
//		case town_level:
//			audio_play_sound(mTown_Lvl1, 1, true);
//		break;
		
//		case forest_level1:
//			audio_play_sound(mForest, 1, true);
//		break;
		
//		case deepforest_level2:
//			audio_play_sound(mEntrance_Lvl3, 1, true);
//		break;
		
//		case cave_level:
//			audio_play_sound(mBoss_Lvl3, 1, true);
//		break;
		
//		default: 
//		exit; 
//		break;
//	}