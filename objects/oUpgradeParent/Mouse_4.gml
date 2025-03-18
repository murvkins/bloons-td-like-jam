if (!towerid.towermods[mod_index].purchased && global.coins >= towerid.towermods[mod_index].cost && !global.gameover) {
	global.coins -= towerid.towermods[mod_index].cost;
	towerid.towermods[mod_index].purchased = true;
}