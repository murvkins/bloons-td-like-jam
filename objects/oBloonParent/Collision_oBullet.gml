if (other.life > 0 && other.id != bullet_inst && self.rFreezetimer == 0) {
	alarm[1] = 1; //self destruct
	sprite_index = death;
	audio_play_sound(snd_pop, 10, false, random_range(0.5, 0.75), 0, random_range(0.85, 1.15));
	image_angle = random_range(1, 360);
	image_xscale = 1.5 + random_range(-0.25, 0);
	image_yscale = 1.5 + random_range(-0.25, 0);
	bullet_inst = other.id;
	if (other.life == 1) {
		instance_destroy(other);
	} else {
		other.life -= 1;
	}	
}