var timetogo = delta_time/1000000;
if funnytime <= 0 && sprite_index == spr_clowndude_sad {
	sprite_index = spr_clowndude_angy;
	if vsp == 0 {
		vsp = -3;
	}
} else if funnytime > 0 && sprite_index != spr_clowndude_eepy {
	funnytime -= timetogo;
}
//if y + vsp - 50 <= 50 {
//	vsp = -vsp;
//	y = 50;
//}
//if y + vsp + 50 >= room_height - 50 {
//	vsp = -vsp;
//	y = room_height - 50;
//}
y += vsp * timetogo * 100;
if y - 50 <= 0 && sign(vsp) == -1 || y + 50 >= room_height && sign(vsp) == 1 {
	vsp = -vsp;
	show_debug_message(vsp);
	if y - 50 <= 0 {
		y = 51;
	} else {
		y = room_height - 51;
	}
}
if global.clownhealth <= 0 {
	instance_destroy();
	room = rm_win;
}