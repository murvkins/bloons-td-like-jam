/// @description wait for blend to end

if (audio_sound_get_gain(music_tracks[global.musictrack]) = 1) {
	if (audio_is_playing(music_tracks[trackplaying])) {
		audio_stop_sound(music_tracks[trackplaying]);
		audio_sound_gain(music_tracks[trackplaying], 1, 0);
	}
	trackplaying = global.musictrack;
	alarm[0] = 1;
} else {
	alarm[3] = 1;
}