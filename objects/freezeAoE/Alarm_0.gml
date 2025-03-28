if (aoeradius < maxradius) {
	aoeradius += 0.1 * rangemod;
	image_xscale = aoeradius
	image_yscale = aoeradius;
} else if (aoeradius >= maxradius && aoealpha == 1) {
		var bloons = bloonsInArea(range, x, y);
		if (array_length(bloons) > 0) {			
			for (var i = 0; i < array_length(bloons); i++) {
				if (bloons[i].bloon.name != "white") {
					bloons[i].rFreezetimer = 90 * freezemod;
				}
			}
		}
		aoealpha -= 0.1;		
	} else {
		aoealpha -= 0.1;		
		if (aoealpha <= 0) {
			instance_destroy();
		}
}
image_alpha = aoealpha;
alarm[0] = 1;