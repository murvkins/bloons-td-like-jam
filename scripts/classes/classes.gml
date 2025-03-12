function Tower () constructor {
	name = "";
	object = oTowerNormal;
	cost = 0;	
	range = 0;
	fire_rate = 0; //bullets per second
	damage = 0;
	bullet_speed = 0;
	bullet_direction = "at-target";
	bullet_ttl = 1;
	rotate = false;
	tower_speed = "";
	description = "";
	towermods = [];
	purchasedmods = [];
	sellprice = 0;
}

function Enemy () constructor {
	name = "";
	object = oBloonParent;
	spd = 0;	
	tier = 0;
	survivedamage = 0;
	immunity = "none";
	reward = 0;
}

function TowerUpgrade () constructor {
	name = "";
	purchased = false;
	cost = 0;
	mod_dartlife = 0;
	mod_range = 0;
	mod_fire_rate = 0;
	mod_freeze_timer = 0;
	mod_aoe_radius = 0;
}