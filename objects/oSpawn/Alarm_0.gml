/// @description next level

//get the next wave
var wavespawn = getCurrentWave();
var spawnorder = [];

for (var t = 0; t < 6; t++) {
	if (wavespawn[t] > 0) {
		for (var b = 0; b < wavespawn[t]; b++) {
			array_push(spawnorder, t);
		}
	}
}

spawn_queue = array_shuffle(spawnorder);

alarm[1] = 1;