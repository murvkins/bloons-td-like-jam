if (spawn_count) < spawn_amount {
	instance_create_layer(x, y, "enemies", oEnemy);
	spawn_count++;
	alarm[0] = spawn_rate;
}