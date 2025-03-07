draw_self();
if (mouseOver(x-sprite_width/2,y-sprite_height/2,sprite_width, sprite_height)) {
	draw_circle(x, y, tower.range, true);
}

if (instance_exists(objectToShoot) && tower.rotate) {
	image_angle += sin(degtorad(point_direction(x,y,objectToShoot.x, objectToShoot.y) - image_angle - 90))*20;
}