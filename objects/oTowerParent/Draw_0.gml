draw_self();
if (mouseOver(x-sprite_width/2,y-sprite_height/2,sprite_width, sprite_height)) {
	draw_circle(x, y, tower.range, true);
}

var en = instance_nearest(x, y, oEnemy);
if (en != noone) {	
	//target on field
	if (point_distance(x, y, en.x, en.y) <= tower.range+(oEnemy.sprite_width/2)) {
		//if target is in range
		if (!shooting) {
			//if not shooting, turn on shooting
			alarm[0] = 1;
			shooting = true;
		}
		
		//set target as nearest enemy object
		objectToShoot = en;
		//draw_line(x, y, en.x, en.y);
	} else {
		//target is not in range, turn of shooting
		shooting = false;
		objectToShoot = noone;
	}
}