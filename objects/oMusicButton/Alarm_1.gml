/// @description wait for audio group to be loaded

if (audio_group_is_loaded(group_music)) {
	audio_play_sound(audioStart, 1, false);
	alarm[0] = 10;
} else {
	alarm[1] = 1;
}