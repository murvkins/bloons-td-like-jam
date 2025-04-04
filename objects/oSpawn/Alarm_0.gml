/// @description next level

if (global.level <= 50) {
if (global.level >= 10) global.spd_mod = 2.3 + (global.level / 100);
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
} else {
	global.hp = 40;
	global.spd_mod = 3;
	alarm[3] = 1;
}