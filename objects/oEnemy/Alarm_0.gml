if (rFreezetimer > 0) {
	path_speed = 0;
	rFreezetimer--;
	alarm[0] = 1;
	
} else {
	path_speed = enemy.spd;
}