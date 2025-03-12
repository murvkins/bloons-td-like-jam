/// @description targeting alarm

if (objectToShoot == noone) {
	//if no target, check for new target
	objectToShoot = instance_nearest(x, y, oBloonParent);
}

if (instance_exists(objectToShoot)) {
	//if it's not in range
	if (point_distance(x, y, objectToShoot.x, objectToShoot.y) > tower.range+(oBloonParent.sprite_width/2)) {
		//set new target
		objectToShoot = noone;		
	}
} else {
	objectToShoot = noone;	
}

alarm[0] = 1;