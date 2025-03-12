if (global.instance_selected != id && global.instance_selected != noone) {
	with (oUpgradeGreen) instance_destroy();
	with (oUpgradeGreenBig) instance_destroy();
	with (oUpgradeRed) instance_destroy();
	with (oUpgradeRedBig) instance_destroy();
	with (oSellButton) instance_destroy();
}

global.instance_selected = id;

drawUpgradeBacks(towerEnum);

rangevisible = true;