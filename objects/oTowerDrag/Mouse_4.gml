if (col == c_white) {
	instance_create_depth(mouse_x, mouse_y, -1, tower.object);
	global.coins -= self.towerEnum.cost;
	if (global.coins < self.towerEnum.cost) {
		instance_destroy();
	}
}