global.coins += global.sellprice;
global.sellprice = 0;
instance_destroy(global.instance_selected);
deleteAllUpgradeBacks();
global.instance_selected = noone;