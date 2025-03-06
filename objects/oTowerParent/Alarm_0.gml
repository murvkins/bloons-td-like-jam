if (instance_exists(objectToShoot)) {
	//if target is still alive, shoot
	//determine bullet types
	var bttl = tower.bullet_ttl;
	switch(tower.bullet_direction) {
	case "at-target":		
		instance_create_layer(x, y, "bullets", oBullet, {speed: tower.bullet_speed, direction:point_direction(x,y, objectToShoot.x, objectToShoot.y), damage: tower.damage, ttl: bttl});			
		break;
	case "spread":
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
		if (tower.aoe && tower.name == "Freeze") {
			instance_create_layer(x, y, "bullets", freezeAoE);
		}
		break;
	}
	alarm[0] = game_get_speed(gamespeed_fps) * 1 / tower.fire_rate;
} else {
	shooting = false;
}