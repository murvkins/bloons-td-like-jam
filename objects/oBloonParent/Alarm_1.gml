/// @description spawn lower tier bloons
var spawn = spawnOnDeath(bloon.tier);
var pp = 0.97;
if (array_length(spawn) > 0) {
	for (var i = 0; i < array_length(spawn); i++) {		
		instance_create_layer(x, y, "bloons", spawn[i], {pathpos: path_position * pp});
		pp += 0.04;
	}
}

global.coins += bloon.reward;
instance_destroy();
var snd = audio_play_sound(snd_pop, 10, false);
audio_sound_gain(snd, 0.25, 0.4);
audio_sound_pitch(snd, random_range(0.85, 1.15));