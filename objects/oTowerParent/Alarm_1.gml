/// @description firing alarm

if (instance_exists(objectToShoot)) {
	//if target is still alive, shoot	
	if (point_distance(x, y, objectToShoot.x, objectToShoot.y) <= tower.range+(oBloonParent.sprite_width/2)) { 
		//determine bullet types
		var bttl = tower.bullet_ttl;
		switch(tower.bullet_direction) {
		case "at-target":		
			if (tower.name != "Bomb Tower") {
				instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction:point_direction(x,y, objectToShoot.x, objectToShoot.y), damage: tower.damage, ttl: bttl});
			} else {
				instance_create_layer(x, y, "bullets", oCannonBall, {speed: tower.bullet_speed, direction: point_direction(x,y, objectToShoot.x, objectToShoot.y), damage: tower.damage, ttl: bttl});
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
				instance_create_layer(x, y, "bullets", freezeAoE, {range: tower.range});
			}
			break;
		}
		alarm[1] = game_get_speed(gamespeed_fps) * 1 / tower.fire_rate;
	} else {
		//out of range, wait for it to be in range
		alarm[1] = 1;
	}
} else {
	alarm[1] = 1;
}