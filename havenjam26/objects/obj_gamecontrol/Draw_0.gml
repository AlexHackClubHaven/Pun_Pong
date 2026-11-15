draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(0, 0, "Score: " + string(global.scr));
draw_set_halign(fa_right);
draw_text(room_width, 0, "Remaining balls: " + string(global.balls));
if !instance_exists(obj_ball) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if room != rm_win {
		draw_text_transformed(room_width/2, room_height/2, "GAME OVER", 5, 5, 0);
	} else {
		draw_text_transformed(room_width/2, room_height/2, "YOU WIN!", 5, 5, 0);
	}
	draw_text(room_width/2, room_height/2 + 180, "Final score: " + string(global.scr));
	draw_text(room_width/2, room_height/2 - 180, "Press SPACE to retry");
}