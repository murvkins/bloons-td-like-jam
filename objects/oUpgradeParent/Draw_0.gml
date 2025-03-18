draw_self();

if (!towerid.towermods[mod_index].purchased && global.coins < towerid.towermods[mod_index].cost) {
	instance_destroy();
	if (array_length(towerid.towermods[mod_index]) == 1) {
		instance_create_layer(x, y, "upgrades", oUpgradeRed, {towerid: towerid});
	} else {
		instance_create_layer(x, y, "upgrades", oUpgradeRedBig, {towerid: towerid});
	}
}
