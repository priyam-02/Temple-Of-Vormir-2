var bar_width = health_level

draw_set_color(border_color);
draw_rectangle(x_pos, y_pos, x_pos+border_width+2, y_pos + bar_height+1, true);



draw_set_color(c_red); 
draw_rectangle(x_pos, y_pos, x_pos + bar_width, y_pos + bar_height, false);


//draw_set_color(c_white);
//draw_text(camera_get_view_x(view_camera[0]), y_pos, "Oxygen: ");







