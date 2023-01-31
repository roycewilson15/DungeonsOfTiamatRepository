if(!global.pause) exit;

var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 32, x_buffer = 16;
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;

// draw pause menu "back"
var c = c_black;
draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);


// draw elements on left side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer, lty;

var yy = 0; repeat(ds_height){
	lty = start_y + (yy*y_buffer);
	
	c = c_white;
	var xo = 0;
	
	if(yy == menu_option[page]){
		c = c_red;
		xo = -(x_buffer/2);	
	}
	
	draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c,c,c,c, 1);
	yy++;
}

// draw diving line
draw_line(start_x, start_y, start_x, lty+y_buffer)


// draw elements on right side
draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height){
	
	rty = start_y + (yy*y_buffer);
	switch(ds_grid[# 1, yy]){
		case menu_element_type.slider:
		
			var len = 64;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			c = c_white;
			
			draw_line_width(rtx, rty, rtx+len, rty, 2);
			
			if(inputting and yy == menu_option[page]) c = c_red;
			draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
			draw_text_color(rtx +(len * 1.2), rty, string(floor(circle_pos*100))+"%", c,c,c,c, 1);
			
		break;
			
		case menu_element_type.view:
			var current_array = ds_grid[# 2, yy];
			c = c_white;
			
			draw_text_color(rtx, rty, current_array, c,c,c,c, 1);
			
		break;
			
	}	
	
	yy++;
}

draw_set_valign(fa_top);

