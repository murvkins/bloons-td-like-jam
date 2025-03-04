if (global.coins >= self.towerEnum.cost) {	
	instance_create_depth(mouse_x, mouse_y, -9, oTowerDrag, {sprite_index: self.sprite_index, towerEnum: self.towerEnum});
	global.coins -= self.towerEnum.cost;
}