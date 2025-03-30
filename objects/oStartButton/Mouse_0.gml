with (oSpawn) alarm[0] = 120;
instance_destroy();
global.level++;

global.musictrack = 2;
with(oMusicButton) alarm[2] = 1;

with (oCommentBox) instance_destroy();