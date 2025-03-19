function PiercingDarts () : TowerUpgrade () constructor {
	name = "Piercing Darts";
	purchased = false;
	cost = 210;
	mod_dartlife = 1;
	mod_range = 0;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = dart_sharp;
}

function LongRange () : TowerUpgrade () constructor {
	name = "Long Range";
	purchased = false;
	cost = 100;
	mod_dartlife = 0;
	mod_range = 1.5;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = dart_longrange;
}

function FasterShooting () : TowerUpgrade () constructor {
	name = "Faster Shooting";
	purchased = false;
	cost = 250;
	mod_dartlife = 0;
	mod_range = 0;
	mod_fire_rate = 1.5;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = faster_shooting;
}

function ExtraRangeTacks () : TowerUpgrade () constructor {
	name = "Extra Range Tacks";
	purchased = false;
	cost = 150;
	mod_dartlife = 0;
	mod_range = 1.5;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = dart_longrange;
}

function LongFreezeTime () : TowerUpgrade () constructor {
	name = "Long Freeze Time";
	purchased = false;
	cost = 450;
	mod_dartlife = 0;
	mod_range = 0;
	mod_fire_rate = 0;
	mod_freeze_timer = 2;
	mod_aoe_radius = 0;
	image = longfreeze;
}

function WideFreezeRadius () : TowerUpgrade () constructor {
	name = "Wide Freeze Radius";
	purchased = false;
	cost = 300;
	mod_dartlife = 0;
	mod_range = 1.5;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = wide_freeze;
}

function BiggerBombs () : TowerUpgrade () constructor {
	name = "Bigger Bombs";
	purchased = false;
	cost = 650;
	mod_dartlife = 0;
	mod_range = 0;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 1.5;
	image = biggerbombs;
}

function ExtraRangeBombs () : TowerUpgrade () constructor {
	name = "Extra Range Bombs";
	purchased = false;
	cost = 250;
	mod_dartlife = 0;
	mod_range = 1.5;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = bomb_longrange;
}

function EpicRange () : TowerUpgrade () constructor {
	name = "Epic Range";
	purchased = false;
	cost = 2400;
	mod_dartlife = 0;
	mod_range = 2;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
	image = dart_longrange;
}

function deleteAllUpgradeBacks() {
	with (oUpgradeParent) instance_destroy();	
	with (oUpgradeRed) instance_destroy();
	with (oUpgradeRedBig) instance_destroy();
	with (oSellButton) instance_destroy();
	with (oUpgradeTemp) instance_destroy();
}

function drawUpgradeBacks(tower) {
	var towermods = tower.towermods;
	var mods = array_length(towermods);
	var xwidth = 0;
	var xleft = 0;
	var back = 0;
	for (var i = 0; i < mods; i++) {
		switch (mods) {
			case 1:			
				xwidth = 150;
				xleft = 626;
				if (global.coins < towermods[i].cost && !tower.towermods[i].purchased) {
					instance_create_layer(xleft, 290, "upgrades", oUpgradeRedBig, {towerid: tower});					
				} else {
					instance_create_layer(xleft, 290, "upgrades", oUpgradeParent, {sprite_index: sUpgradeBackGreenBig, towerid: tower, mod_index: i});
				}	
				instance_create_layer(xleft+xwidth/2, 295, "Instances", oUpgradeTemp, {sprite_index: towermods[i].image, image_xscale: 0.5, image_yscale: 0.5}); //upgrade image
				break;			
			case 2:
				xwidth = 70;
				xleft = 626 + (i * xwidth) + (i * 10);
				if (global.coins < towermods[i].cost && !tower.towermods[i].purchased) {
					instance_create_layer(xleft, 290, "upgrades", oUpgradeRed, {towerid: tower});
					
				} else {
					instance_create_layer(xleft, 290, "upgrades", oUpgradeParent, {sprite_index: sUpgradeBackGreen, towerid: tower, mod_index: i});
				}	
				instance_create_layer(xleft+xwidth/2, 295, "Instances", oUpgradeTemp, {sprite_index: towermods[i].image, image_xscale: 0.5, image_yscale: 0.5}); //upgrade image
				break;			
			}
	}
	instance_create_layer(626, 453, "upgrades", oSellButton);
}