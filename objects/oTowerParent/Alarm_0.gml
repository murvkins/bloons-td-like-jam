/// @description targeting alarm

if (objectToShoot == noone) {
	//if no target, check for new target
	switch(tower.name) {
	case "Ice Tower": 
		objectToShoot = firstBloonFiltered(tower.range * range_mod, x, y, "white");		
		break;
	case "Bomb Tower":
		objectToShoot = firstBloonFiltered(tower.range * range_mod, x, y, "black");		
		break;
	default:
		objectToShoot = firstBloon(tower.range * range_mod, x, y);
		break;
	}
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