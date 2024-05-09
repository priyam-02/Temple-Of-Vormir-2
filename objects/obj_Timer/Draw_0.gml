var x_pos = 75;
var y_pos = 125;

//var minutes = floor(timer / 60);
//var seconds = timer mod 60;


draw_set_halign(fa_left);
draw_set_font(fnt_timer);
draw_set_color(c_white);

//draw_text(x_pos, y_pos, "Timer: " + string(minutes) + ":" + string(seconds));


var draw_seconds;
draw_seconds = floor (seconds);
if (seconds <= 10) && (minutes < 10)
{
	draw_text (x_pos, y_pos, "Timer: " + string (minutes) + ":0" + string (draw_seconds));
}else if (seconds > 10) && (minutes >= 10)
	{
		draw_text (x_pos, y_pos, string (minutes) + ":" + string (draw_seconds));
		}else if (seconds < 10) && (minutes >= 10)
		{
			draw_text (x_pos, y_pos, "Timer: " + string (minutes) + ":0" + string (draw_seconds));
			}
			else if (seconds >= 10) && (minutes < 10)
			{
				draw_text (x_pos, y_pos, "Timer: " + string (minutes) + ":" + string (draw_seconds));
				}
