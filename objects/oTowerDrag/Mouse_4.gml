var x1 = snapToGrid(x);
var y1 = snapToGrid(y);

if (col == c_white) {
	instance_create_layer(x1, y1, "towers", tower.object);
	global.coins -= self.towerEnum.cost;
	if (global.coins < self.towerEnum.cost) {
		instance_destroy();
	}
}