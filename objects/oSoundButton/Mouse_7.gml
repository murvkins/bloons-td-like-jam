if (audioon) {
	audio_group_set_gain(audiogroup_default, 0, 0);
	sprite_index = audio_off;
} else {
	audio_group_set_gain(audiogroup_default, 1, 0);
	sprite_index = audio_on;
}

audioon = !audioon;