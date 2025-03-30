/// @description play next track

if (global.musictrack > array_length(music_tracks)) global.musictrack = 0;
if (global.gameover) global.musictrack = 4;

if (!audio_is_playing(music_tracks[trackplaying]) && !audio_is_playing(music_tracks[global.musictrack])) {
	//show_debug_message(string_concat("track: ", string(trackplaying)));
	//show_debug_message(string_concat("audio status: ", string(audio_is_playing(music_tracks[trackplaying]))));	
	if (global.musictrack != trackplaying) {
		trackplaying = global.musictrack;
		if (trackplaying == 1 || trackplaying == 3) {
			//loop audio
			audio_play_sound(music_tracks[trackplaying], 100, false, 1);
			show_debug_message(string_concat("{1}Looping track: ", string(music_tracks[trackplaying])));
		} else {
			//play next track
			if (trackplaying > array_length(music_tracks) - 1) trackplaying = 0;
			global.musictrack = trackplaying;
			 audio_play_sound(music_tracks[trackplaying], 100, false, 1);
			show_debug_message(string_concat("{1}Playing next track: ", string(music_tracks[trackplaying])));					
		}
	} else {	
		if (trackplaying == 1 || trackplaying == 3) {
			//loop audio
			audio_play_sound(music_tracks[trackplaying], 100, false, 1);
			show_debug_message(string_concat("{2}Looping track: ", string(music_tracks[trackplaying])));
		} else {		
			//play next track
			trackplaying++;
			if (trackplaying > array_length(music_tracks) - 1) trackplaying = 0;
			global.musictrack = trackplaying;			
			audio_play_sound(music_tracks[trackplaying], 100, false, 1);
			show_debug_message(string_concat("{2}Playing next track: ", string(music_tracks[trackplaying])));					
		}
	}
}

alarm[0] = 1;