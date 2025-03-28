draw_self();

if (!towerid.towermods[mod_index].purchased) {
	if (global.coins < towerid.towermods[mod_index].cost && affordable) {	
		affordable = false;
		clickable = false;
		if (array_length(towerid.towermods) > 1) {
			sprite_index = sUpgradeBackRed;
		} else {
			sprite_index = sUpgradeBackRedBig;
		}	
	} else if (global.coins >= towerid.towermods[mod_index].cost && !affordable) {	
		affordable = true;
		clickable = !towerid.towermods[mod_index].purchased;
		if (array_length(towerid.towermods) > 1) {
			sprite_index = sUpgradeBackGreen;
		} else {
			sprite_index = sUpgradeBackGreenBig;		
		}
	}
}