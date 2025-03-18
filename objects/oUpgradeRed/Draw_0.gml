draw_self();

if (global.coins >= towerid.towermods[mod_index].cost) {
	instance_destroy();
	instance_create_layer(x, y, "upgrades", oUpgradeParent, {sprite_index: sUpgradeBackGreen, towerid: towerid, mod_index: mod_index});
}