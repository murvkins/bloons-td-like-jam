/// @description firing alarm
randomize();
if (instance_exists(objectToShoot)) {
	//if target is still alive, shoot	
	if (point_distance(x, y, objectToShoot.x, objectToShoot.y) <= (tower.range * range_mod)+(oBloonParent.sprite_width/2)) { 
		//determine bullet types
		
		var bttl = tower.bullet_ttl * range_mod;
		switch(tower.bullet_direction) {
		case "at-target":		
			if (tower.name != "Bomb Tower") {
				var mx = x + 20;
				var my = y;
				var ang = -degtorad(image_angle);

				var a = cos(ang);
				var b = -sin(ang);
				var c = sin(ang);
				var d = cos(ang);

				var dx = mx - x;
				var dy = my - y;
				var nx = a * dx + b * dy;
				var ny = c * dx + b * dy;

				nx += x;
				ny += y;			
				instance_create_layer(nx, ny, "bullets", oBullet, {speed: tower.bullet_speed, direction:point_direction(x,y, objectToShoot.x, objectToShoot.y), damage: tower.damage, ttl: bttl, life: 1+bullet_life_mod});				
				audio_play_sound(snd_shooting5, 10, false, 1, 0, random_range(0.85, 1.12));
			} else {
				instance_create_layer(x, y, "bullets", oCannonBall, {speed: tower.bullet_speed, direction: point_direction(x,y, objectToShoot.x, objectToShoot.y), radiusmod: radius_mod, ttl: bttl});				
				audio_play_sound(snd_cannon_firing, 10, false, 1, 0, random_range(0.85, 1.2));
			}
			break;
		case "8-way":
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x-10,y), damage: tower.damage, ttl: bttl});
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x,y-10), damage: tower.damage, ttl: bttl});
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x+10,y), damage: tower.damage, ttl: bttl});
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x,y+10), damage: tower.damage, ttl: bttl});
		
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x+10,y-10), damage: tower.damage, ttl: bttl});
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x+10,y+10), damage: tower.damage, ttl: bttl});
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x-10,y-10), damage: tower.damage, ttl: bttl});
			instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x-10,y+10), damage: tower.damage, ttl: bttl});
			audio_play_sound(snd_shooting, 10, false, 1, 0, random_range(0.85, 1.15));			
			audio_play_sound(snd_shooting, 10, false, 1, 0,  random_range(0.85, 1.15));
			break;
		case "none":
			if (tower.name == "Ice Tower") {
				instance_create_layer(x, y, "bullets", freezeAoE, {range: tower.range*range_mod, freezemod: freeze_mod, rangemod: range_mod});
				audio_play_sound(snd_ice, 10, false, 1, 0, random_range(0.95, 1.05));				
			}
			break;
		}
		alarm[1] = game_get_speed(gamespeed_fps) * 1 / tower.fire_rate / fire_rate_mod;
	} else {
		//out of range, wait for it to be in range
		alarm[1] = 1;
	}
} else {
	alarm[1] = 1;
}