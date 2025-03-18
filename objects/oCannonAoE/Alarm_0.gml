var time = 1;

if (aoeradius < maxradius) {
	aoeradius += 0.25;
	image_xscale = aoeradius
	image_yscale = aoeradius;
} else if (aoeradius >= maxradius && aoealpha == 1) {
		var bloons = bloonsInArea(sprite_width/2, x, y);
		var bmb = audio_play_sound(snd_bomb, 10, false);
		audio_sound_pitch(bmb, random_range(0.75, 1.15));
		if (array_length(bloons) > 0) {			
			for (var i = 0; i < array_length(bloons); i++) {
				
				if (bloons[i].bloon.name != "black") {
					bloons[i].damage += self.damage;
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