///@description fade away

if (image_alpha > 0) {
	image_alpha -= 0.05;
	alarm[1] = 1;
} else {
	instance_destroy();
}
