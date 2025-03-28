var time = 1;

if (aoeradius < maxradius) {
	aoeradius += 0.25;
	image_xscale = aoeradius
	image_yscale = aoeradius;
} else if (aoeradius >= maxradius && aoealpha == 1) {
		var bloons = bloonsInArea(sprite_width/2, x, y);
		audio_play_sound(snd_bomb, 10, false, 1, 0, random_range(0.75, 1.15));		
		if (array_length(bloons) > 0) {			
			for (var i = 0; i < array_length(bloons); i++) {				
				if (bloons[i].bloon.name != "black") {
					bloons[i].alarm[1] = 1;
					sprite_index = death;
					audio_play_sound(snd_pop, 10, false, random_range(0.5, 0.75), 0, random_range(0.85, 1.15));
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
alarm[0] = time;