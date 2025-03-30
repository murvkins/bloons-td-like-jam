/// @description spawn lower tier bloons
var spawn = spawnOnDeath(bloon.tier);
var pp = 0.98;

if (array_length(spawn) > 0) {
	for (var i = 0; i < array_length(spawn); i++) {		
		instance_create_layer(x, y, "bloons", spawn[i], {pathpos: path_position * pp});
		pp += 0.03;
	}
}
global.coins += bloon.reward;
if (global.level = 51) global.endlesskillcount++;

instance_destroy();