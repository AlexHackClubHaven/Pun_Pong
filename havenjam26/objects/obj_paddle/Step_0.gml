if visible == true {
	if keyboard_check(vk_up) && (y - 60) > 0 {
		y -= 3 * delta_time/10000;
	}
	if keyboard_check(vk_down) && (y + 60) < room_height {
		y += 3 * delta_time/10000;
	}
	if y - 60 < 0 {
		y = 60;
	}
	if y + 60 > room_height {
		y = room_height - 60;
	}
}