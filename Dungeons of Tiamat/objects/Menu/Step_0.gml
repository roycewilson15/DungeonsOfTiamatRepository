if(!global.pause) exit;

input_up_p		=	keyboard_check_pressed(global.key_up);
input_down_p	=	keyboard_check_pressed(global.key_down);
input_enter_p	=	keyboard_check_pressed(global.key_enter);

var ds_grid = menu_pages[page];
var ds_height = ds_grid_height(ds_grid);

if(inputting){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.slider:
			
			switch(menu_option[page]){
				case 0: break;
				case 1: break;
				case 2: break;
			}
			
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if(hinput !=0)
			{
				ds_grid[# 3, menu_option[page]] += hinput*0.01;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}	
		break;
	}
	
} 

else 
{
	var ochange = input_down_p - input_up_p;
	if(ochange != 0){
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height-1 ){ menu_option[page] = 0; }
		if(menu_option[page] < 0 ){ menu_option[page] = ds_height -1; }
	}
}

if(input_enter_p) {
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.view:
		case menu_element_type.slider:
			inputting = !inputting;
			break;
	}
}




