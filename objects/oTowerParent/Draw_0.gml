draw_self();
if (mouseOver(x-sprite_width/2,y-sprite_height/2,sprite_width, sprite_height)) {
	draw_circle(x, y, tower.range, true);
}

if (objectToShoot == noone) {
	//if no target, check for new target
	objectToShoot = instance_nearest(x, y, oEnemy);
}

if (objectToShoot == noone) {
	shooting = false;
} else {
	if (instance_exists(objectToShoot)) {
		if (point_distance(x, y, objectToShoot.x, objectToShoot.y) <= tower.range+(oEnemy.sprite_width/2)) {
			//if target is in range
			if (!shooting) {
				//if not shooting, turn on shooting
				if (alarm_get(alarm[0]) == 0 ) alarm[0] = 1;
				shooting = true;
			}
			if (tower.rotate) {		
				image_angle += sin(degtorad(point_direction(x,y,objectToShoot.x, objectToShoot.y) - image_angle - 90))*5;			
			}
		}
	} else {
		alarm[0] = game_get_speed(gamespeed_fps) * 1 / tower.fire_rate;
		objectToShoot = noone;
		shooting = false;
	}
}