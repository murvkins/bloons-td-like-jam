draw_self();

if (instance_exists(objectToShoot) && tower.rotate) {
	image_angle += sin(degtorad(point_direction(x,y,objectToShoot.x, objectToShoot.y) - image_angle - 90))*20;
}

if (global.instance_selected == id) {
	rangevisible = true;
	
}

if (global.instance_selected != id && rangevisible) {
	rangevisible = false;
}

for (var i = 0; i < array_length(towerEnum.towermods); i++) {
	if (towerEnum.towermods[i].purchased != purchasedmods[i]) {
		purchasedmods[i] = true;
		alarm[2] = 1;
		break;
	}
}

if (range_mod != cur_range_mod) {
	if (instance_exists(rangeinst)) instance_destroy(rangeinst);
	rangeinst = noone;
}

if (rangevisible && rangeinst == noone) {	
	rangeinst = instance_create_layer(self.x, self.y, "towerranges", oRange);	
	rangeinst.image_xscale = self.towerEnum.range * 2 / rangeinst.sprite_width * range_mod;
	rangeinst.image_yscale = rangeinst.image_xscale;
	rangeinst.image_alpha = 0.3;
} else {
	if (!rangevisible && rangeinst != noone) {
		if (instance_exists(rangeinst)) instance_destroy(rangeinst);
		rangevisible = false;
		rangeinst = noone;
	}
}