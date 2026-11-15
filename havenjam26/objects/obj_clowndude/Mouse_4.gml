audio_play_sound(mus_main, 0, true);
instance_destroy(obj_logo);
with obj_ball {
	var thisthing = irandom_range(0, 1);
	if thisthing == 0 {
		thisthing = -1;
	}
	hsp = thisthing;
	vsp = irandom_range(-5, 5);
	show_debug_message(vsp);
	visible = true;
}
with obj_paddle {
	visible = true;
}
sprite_index = spr_clowndude_sad;