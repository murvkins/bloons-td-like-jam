draw_self();
//if (mouseOver(x-sprite_width/2,y-sprite_height/2,sprite_width, sprite_height) || global.instance_selected == id) {
//	draw_circle(x, y, tower.range, true);
//}

if (instance_exists(objectToShoot) && tower.rotate) {
	image_angle += sin(degtorad(point_direction(x,y,objectToShoot.x, objectToShoot.y) - image_angle - 90))*20;
}

if (global.instance_selected == id) {
	rangevisible = true;
}

if (global.instance_selected != id && rangevisible) {
	rangevisible = false;
}

if (rangevisible && rangeinst == noone) {
	var range_mod = 0;
	for (var i = 0; i < array_length(tower.towermods); i++) {
		if (tower.towermods[i].purchased) fire_rate_mod += tower.towermods[i].mod_range;
	}
	if (range_mod == 0) range_mod = 1;
	rangeinst = instance_create_layer(self.x, self.y, "towerranges", oRange);	
	rangeinst.image_xscale = self.towerEnum.range * 2 / rangeinst.sprite_width * range_mod;
	rangeinst.image_yscale = rangeinst.image_xscale;
	rangeinst.image_alpha = 0.4;
} else {
	if (!rangevisible && rangeinst != noone) {
		if (instance_exists(rangeinst)) instance_destroy(rangeinst);
		rangevisible = false;
		rangeinst = noone;
		show_debug_message("destroyed");
	}
}