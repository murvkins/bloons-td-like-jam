if (rFreezetimer > 0) {
	shader_set(shdrFreeze);
	var uv = sprite_get_uvs(sprite_index, image_index);
	shader_set_uniform_f(_uniUV, uv[0], uv[2]);
	shader_set_uniform_f(_uniSpeed, _speed);
	shader_set_uniform_f(_uniTime, rFreezetimer / 60);
	//shader_set_uniform_f(_uniSaturation, _saturation);
	shader_set_uniform_f(_uniBrightness, _brightness);
	//shader_set_uniform_f(_uniSection, _section);
	shader_set_uniform_f(_uniMix, _mix);
	draw_self();
	shader_reset();	
} else {
	draw_self();
}