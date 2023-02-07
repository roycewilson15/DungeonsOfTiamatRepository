function change_volume(){
	
	var type = menu_option[page]

	switch(type)
	{
		case 0: audio_master_gain(argument0); break;
		default: break;
	}
}