var tickertocker = delta_time/1000000;
if x + 20 < 0 || x - 20 > room_width {
	global.balls -= 1;
	if global.balls <= 0 {
		instance_destroy();
	}
	hsp = -sign(hsp);
	vsp = irandom_range(-5, 5);
	show_debug_message(vsp);
	x = room_width/2;
	y = room_height/2;
}
if place_meeting(x + (hsp * tickertocker * 100), y, obj_paddle) {
	hsp = -hsp * 1.2;
	global.scr += 1;
	vsp = irandom_range(-5, 5);
	show_debug_message(hsp);
	show_debug_message(vsp);
}
if visible == true && place_meeting(x + (hsp * tickertocker * 100), y, obj_clowndude) && instance_place(x + (hsp * tickertocker * 100), y, obj_clowndude).sprite_index == spr_clowndude_angy && instance_place(x + (hsp * tickertocker * 100), y, obj_clowndude).funnytime <= 0 {
	hsp = -hsp * 1.2;
	global.clownhealth -= 1;
	with instance_place(x + (hsp * tickertocker * 100), y, obj_clowndude) {
		funnytime = 2;
	}
	vsp = irandom_range(-5, 5);
	show_debug_message(hsp);
	show_debug_message(vsp);
}
if hsp > maxspd {
	hsp = maxspd;
}
if y - 20 <= 0 || y + 20 >= room_height {
	vsp = -vsp;
	if y - 20 <= 0 {
		y = 21;
	} else {
		y = room_height - 21;
	}
}
x += (hsp * tickertocker * 100);
y += (vsp * tickertocker * 100);