draw_self();

if (global.coins >= towerid.towermods[0].cost) {
	instance_destroy();
	instance_create_layer(x, y, "upgrades", oUpgradeParent, {sprite_index: sUpgradeBackGreenBig, towerid: towerid, mod_index: 0});
}