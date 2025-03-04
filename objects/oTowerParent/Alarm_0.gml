if (instance_exists(objectToShoot)) {
	//if target is still alive, shoot
	//determine bullet types
	switch(tower.bullet_direction) {
	case "at-target":		
		var bullet = instance_create_depth(x, y, -9, oBullet);	
		bullet.speed = tower.bullet_speed;
		bullet.direction = point_direction(x,y,objectToShoot.x, objectToShoot.y);
		bullet.damage = tower.damage;
		alarm[0] = game_get_speed(gamespeed_fps) * 1 / tower.fire_rate;
		break;
	case "spread":
		break;
	case "4-way":		
		instance_create_depth(x, y, -9, oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x,y)});
		instance_create_depth(x, y, -9, oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x,y-10)});
		instance_create_depth(x, y, -9, oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x+10,y)});
		instance_create_depth(x, y, -9, oBullet, {speed: tower.bullet_speed, direction: point_direction(x,y,x-10,y+10)});
		break;
	}
	//alarm[0] = tower.fire_rate / gamespeed_fps;
} else {
	shooting = false;
}