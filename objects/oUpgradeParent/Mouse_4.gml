if (!tower.towermods[index].purchased && global.coins >= tower.towermods[index].cost) {
	global.coins -= tower.towermods[index].cost;
	tower.towermods[index].purchased = true;
}