function bloonsInArea(radius, x1, y1){
	var bloons = [];
	with(oBloonParent) {
		if (point_distance(x1, y1, x, y) <= (radius + sprite_width/2)) {
			array_push(bloons, id);
		}
	}
	return bloons;
}