/// @description endless spawning

var b = random_range(0, 1);
var bloon = noone;

switch (round(b)) {
	case 0:
		bloon = oBlackBloon;
		break;
	case 1:
		bloon = oWhiteBloon;
		break;
}

instance_create_layer(x, y, "bloons", bloon);

randomise();
alarm[3] = clamp(game_get_speed(gamespeed_fps) * (0.05 + random(0.25)) - endlessspawnmod, 1, 999);
if (alarm[4] = -1) alarm[4] = game_get_speed(gamespeed_fps) * 10;