var time = 1;

if (aoeradius < maxradius) {
	aoeradius += 0.25;
	image_xscale = aoeradius
	image_yscale = aoeradius;
} else if (aoeradius >= maxradius && aoealpha == 1) {
		var enemies = enemiesInArea(50, x, y);		
		if (array_length(enemies) > 0) {			
			for (var i = 0; i < array_length(enemies); i++) {				
				enemies[i].currenthp -= damage;
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
alarm[0] = time;