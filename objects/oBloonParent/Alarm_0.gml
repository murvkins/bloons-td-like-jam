/// @description freeze timer
if (rFreezetimer > 0) {
	path_speed = 0;
	rFreezetimer--;
	alarm[0] = 1;
} else {
	path_speed = bloon.spd * global.spd_mod;
}