if (col == c_white) {
	instance_create_layer(mouse_x, mouse_y, "towers", tower.object);
	global.coins -= self.towerEnum.cost;
	if (global.coins < self.towerEnum.cost) {
		instance_destroy();
	}
}