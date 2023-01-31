
global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = ord("X");
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_down = vk_down;
global.key_up = vk_up;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page{
	main,
	audio,
	controls,
	height
}

enum menu_element_type{
	script_runner,
	page_transfer,
	slider,
	view
}

// create menu pages
ds_menu_main = create_menu_page(
	["RESUME",		menu_element_type.script_runner,	resume_game],
	["AUDIO",		menu_element_type.page_transfer,	menu_page.audio],
	["CONTROLS",	menu_element_type.page_transfer,	menu_page.controls],
	["EXIT",		menu_element_type.script_runner,	exit_game],
);
	
ds_menu_audio = create_menu_page(
	["MASTER",		menu_element_type.slider,			change_volume,		1,		[0,1]],
	["SOUNDS",		menu_element_type.slider,			change_volume,		1,		[0,1]],
	["MUSIC",		menu_element_type.slider,			change_volume,		1,		[0,1]],
	["BACK",		menu_element_type.page_transfer,	menu_page.main],
);

ds_menu_controls = create_menu_page(
	["MOVE LEFT:",		menu_element_type.view,			"A OR L-ARROW KEY"],
	["MOVE RIGHT:",		menu_element_type.view,			"D OR R-ARROW KEY"],
	["ATTACK ENEMY:",	menu_element_type.view,			"L CLICK"],
	["BACK",			menu_element_type.page_transfer,	menu_page.main],
);   

page = 0;
menu_pages = [ds_menu_main, ds_menu_audio, ds_menu_controls];

var i = 0, array_len = array_length(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_soundeffects);



