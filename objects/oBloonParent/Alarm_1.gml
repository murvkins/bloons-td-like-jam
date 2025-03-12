/// @description Insert description here
// You can write your code in this editor
var spawn = spawnOnDeath(bloon.tier, bloondmg);
if (array_length(spawn) > 0) {
	for (var i = 0; i < array_length(spawn); i++) {
		instance_create_layer(x, y, "bloons", spawn[i], {pathpos: path_position});		
	}
}

global.coins += bloon.reward;
instance_destroy();