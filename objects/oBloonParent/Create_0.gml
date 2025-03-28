image_xscale = global.scale;
image_yscale = global.scale;
bloon = bloonEnum;
path_start(path0, bloon.spd * global.spd_mod, 0, 1 );
path_position = pathpos;
bullet_inst = noone;

_uniUV = shader_get_uniform(shdrFreeze, "u_uv");
_uniTime = shader_get_uniform(shdrFreeze, "u_time");
_uniSpeed = shader_get_uniform(shdrFreeze, "u_speed");
//_uniSection = shader_get_uniform(shdrRainbow, "u_section");
//_uniSaturation = shader_get_uniform(shdrRainbow, "u_saturation");
_uniBrightness = shader_get_uniform(shdrFreeze, "u_brightness");
_uniMix = shader_get_uniform(shdrFreeze, "u_mix");

_time = 0.5;
_speed = 0.5;
_section = 0.5;
_saturation = 0.7;
_brightness = 1.25;
_mix = 1;