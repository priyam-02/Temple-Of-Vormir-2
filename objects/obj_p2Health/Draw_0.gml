
var bar_width = health_level

draw_set_color(border_color);
draw_rectangle(xpos, ypos, xpos+border_width+2, ypos + bar_height+1, true);



draw_set_color(c_blue); 
draw_rectangle(xpos, ypos, xpos + bar_width, ypos + bar_height, false);


//draw_set_color(c_white);
//draw_text(camera_get_view_x(view_camera[0]), y_pos, "Oxygen: ");







