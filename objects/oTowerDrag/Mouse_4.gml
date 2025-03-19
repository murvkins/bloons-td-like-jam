var x1 = snapToGrid(x);
var y1 = snapToGrid(y);

if (col == c_white) {
	var newid = instance_create_layer(x1, y1, "towers", tower.object, {image_xscale: global.scale, image_yscale: global.scale});
	global.coins -= newid.towerEnum.cost;
	global.instance_selected = newid;
	instance_destroy();
	drawUpgradeBacks(newid.towerEnum)
}