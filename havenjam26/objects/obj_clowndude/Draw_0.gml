if sprite_index == spr_clowndude_eepy {
	draw_set_halign(fa_center);
	draw_text(x, y + 70, "^^^ Click the clown to start ^^^");
}
if sprite_index == spr_clowndude_angy {
	draw_set_halign(fa_center);
	draw_text(x, y + 70, "Health: " + string(global.clownhealth));
}
draw_self();