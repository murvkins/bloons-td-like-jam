/// @description spawn lower tier bloons
var spawn = spawnOnDeath(bloon.tier);
var pp = 0.97;
if (array_length(spawn) > 0) {
	show_debug_message(array_length(spawn));
	for (var i = 0; i < array_length(spawn); i++) {		
		instance_create_layer(x, y, "bloons", spawn[i], {pathpos: path_position * pp});
		pp += 0.04;
	}
}

global.coins += bloon.reward;
instance_destroy();