/// @description blend track transition
alarm[0] = -1;

show_debug_message(string_concat("trackplaying: ", string(trackplaying)));
show_debug_message(string_concat("global track: ", string(global.musictrack)));

audio_sound_gain(music_tracks[trackplaying], 0, 1500);

audio_play_sound(music_tracks[global.musictrack], 100, false);
audio_sound_gain(music_tracks[global.musictrack], 0, 0);
audio_sound_gain(music_tracks[global.musictrack], 1, 1500);

alarm[3] = 1