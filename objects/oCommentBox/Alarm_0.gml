/// @description fade in

if (image_alpha < 1) {
	image_alpha += 0.05;
	alarm[0] = 1;	
} else {
	alarm[1] = game_get_speed(gamespeed_fps) * 8;
}