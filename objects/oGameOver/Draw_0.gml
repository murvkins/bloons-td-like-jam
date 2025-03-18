if (global.hp <= 0) {
	global.hp = 0;
	global.gameover = true;
	with (oTowerParent) {
		alarm[0] = -1;
		alarm[1] = -1;
	}
	with (oBloonParent) {
		path_speed = 0;
	}
	global.instance_selected = noone;
	deleteAllUpgradeBacks();
	
	
	draw_set_color(c_grey);
	draw_set_alpha(0.8);
	var w = room_width * 0.75;
	var h = room_height * 0.5
	draw_rectangle((room_width - w)/2 , (room_height - h)/2, (room_width + w)/2, (room_height + h)/2, false);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(1)
	draw_set_color(c_red);
	draw_set_font(fSegoeUI_32Bold);

	draw_text(room_width/2,room_height/2, "Game Over");

	draw_set_font(fSegoeUI_28);

	draw_text(room_width/2,room_height/2+50, "Press Spacebar to restart");	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
}

