/// @description spawn bloons

var bloon;
var b = array_pop(spawn_queue);

switch (b) {
	case 0:
		bloon = oRedBloon;
		break;
	case 1:
		bloon = oBlueBloon;
		break;
	case 2:
		bloon = oGreenBloon;	
		break;
	case 3:
		bloon = oYellowBloon;
		break;
	case 4:
		bloon = oBlackBloon;
		break;
	case 5:
		bloon = oWhiteBloon;
		break;
}

instance_create_layer(x, y, "bloons", bloon);

if (array_length(spawn_queue) != 0) {
	randomise();
	alarm[1] = random_range(7, 20) - round(global.level / 10);
	show_debug_message(alarm[1]);
} else {
	alarm[2] = 1;
}