/// @description Insert description here
// You can write your code in this editor
if (musicon) {
	audio_group_set_gain(group_music, 0, 0);
	sprite_index = music_off;
} else {
	audio_group_set_gain(group_music, 1, 0);
	sprite_index = music_on;
}

musicon = !musicon;