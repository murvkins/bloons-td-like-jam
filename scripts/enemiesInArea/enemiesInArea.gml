function enemiesInArea(radius, x1, y1){
	var enemies = [];
	with(oEnemy) {
		if (point_distance(x1, y1, x, y) <= (radius + sprite_width/2)) {
			array_push(enemies, id);
			show_debug_message(enemies);
		}
	}
	return enemies;
}