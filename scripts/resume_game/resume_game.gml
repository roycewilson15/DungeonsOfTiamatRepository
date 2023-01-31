// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resume_game(){

	// if paused on level 1 
	if(room_previous(forest_level1))
	{
		room_goto(forest_level1)
	}
	
	// if paused on level 2
	// if(room_previous(level2name))
	//{
	//	room_goto(level2name)
	//}
	
	// if paused on level 3
	// if(room_previous(level3name))
	//{
	//	room_goto(level3name)
	//}
}