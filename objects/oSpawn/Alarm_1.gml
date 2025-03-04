if (instance_number(oEnemy) <= 0) {
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	global.hp += 10;
	global.spd += 0.1;
	spawn_rate *= 0.95;
	alarm[0] = spawn_rate;
}

alarm[1] = game_get_speed * 2;