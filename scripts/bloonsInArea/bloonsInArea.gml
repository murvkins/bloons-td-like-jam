function bloonsInArea(radius, x1, y1){
	var bloons = [];
	with(oBloonParent) {
		if (point_distance(x1, y1, x, y) <= (radius + sprite_width/2)) {
			array_push(bloons, id);
		}
	}
	return bloons;
}

function firstBloon(radius, x1, y1) {	
	var bloon = noone;
	with(oBloonParent) {
		if (point_distance(x1, y1, x, y) <= (radius + sprite_width/2) && self.rFreezetimer = 0) {			
			if (bloon == noone) {
				bloon = self;
			} else {
				if (path_position > bloon.path_position) {
					bloon = self;
				}
			}
			
		}
	}
	return bloon;
}

function firstBloonFiltered(radius, x1, y1, filter) {	
	var bloon = noone;
	with(oBloonParent) {
		if (point_distance(x1, y1, x, y) <= (radius + sprite_width/2) && self.bloon.name != filter) {			
			if (bloon == noone) {
				bloon = self;
			} else {
				if (path_position > bloon.path_position) {
					bloon = self;
				}
			}
			
		}
	}
	return bloon;
}