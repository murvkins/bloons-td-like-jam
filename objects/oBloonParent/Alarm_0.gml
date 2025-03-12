/// @description freeze timer

if (rFreezetimer > 0) {
	path_speed = 0;
	rFreezetimer--;
	alarm[0] = 1;
	show_debug_message("frozen");
} else {
	path_speed = bloon.spd;
}