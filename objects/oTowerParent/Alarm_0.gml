/// @description targeting alarm

if (objectToShoot == noone) {
	//if no target, check for new target
	objectToShoot = instance_nearest(x, y, oBloonParent);
}

if (instance_exists(objectToShoot)) {
	//check if target's out of range
	if (point_distance(x, y, objectToShoot.x, objectToShoot.y) > (tower.range * range_mod) + (oBloonParent.sprite_width/2)) {
		//reset objectToShoot to nothing so it goes to the next nearest target
		objectToShoot = noone;		
	}
} else {
	//if target doesn't exist anymore
	objectToShoot = noone;	
}

alarm[0] = 1;