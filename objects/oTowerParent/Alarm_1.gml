/// @description firing alarm

if (instance_exists(objectToShoot)) {
	//if target is still alive, shoot	
	if (point_distance(x, y, objectToShoot.x, objectToShoot.y) <= tower.range+(oBloonParent.sprite_width/2)) { 
		//determine bullet types
		var fire_rate_mod = 0;
		var radius_mod = 0;
		var freeze_mod = 0;
		for (var i = 0; i < array_length(tower.towermods); i++) {
			if (tower.towermods[i].purchased) {
				fire_rate_mod += tower.towermods[i].mod_fire_rate;
				radius_mod += tower.towermods[i].mod_aoe_radius;
				freeze_mod += tower.towermods[i].mod_freeze_timer;
			}
		}
		if (fire_rate_mod == 0) fire_rate_mod = 1;
		if (radius_mod == 0) radius_mod = 1;
		if (freeze_mod == 0) freeze_mod = 1;
		var bttl = tower.bullet_ttl * fire_rate_mod;
		
		switch(tower.bullet_direction) {
		case "at-target":		
			if (tower.name != "Bomb Tower") {
				instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction:point_direction(x,y, objectToShoot.x, objectToShoot.y), damage: tower.damage, ttl: bttl});
			} else {
				instance_create_layer(x, y, "bullets", oCannonBall, {speed: tower.bullet_speed, direction: point_direction(x,y, objectToShoot.x, objectToShoot.y), damage: tower.damage, radiusmod: radius_mod, ttl: bttl});
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
		
			break;
		case "none":
			if (tower.name == "Ice Tower") {
				instance_create_layer(x, y, "bullets", freezeAoE, {range: tower.range, freezemod: freeze_mod, rangemod: radius_mod});
			}
			break;
		}
		alarm[1] = game_get_speed(gamespeed_fps) * 1 / tower.fire_rate * fire_rate_mod;
	} else {
		//out of range, wait for it to be in range
		alarm[1] = 1;
	}
} else {
	alarm[1] = 1;
}