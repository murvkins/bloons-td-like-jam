musicon = true;

music_tracks = [];

if (!audio_group_is_loaded(group_music)) audio_group_load(group_music);

array_push(music_tracks, audioStart);
array_push(music_tracks, audioTowerLoop);
array_push(music_tracks, audioCombatStart);
array_push(music_tracks, audioCombatLoop);
array_push(music_tracks, audioCombatEnd);

trackplaying = 0;

global.musictrack = 0;
alarm[1] = 1;


