function NormalTower () : Tower () constructor {
	name = "Normal"
	object = oTowerNormal;
	cost = 50;
	range = 100;
	fire_rate = 2;
	damage = 1;
	aoe = false;
	effect = "none";
	bullet_speed = 5;
	bullet_direction = "at-target";
	bullet_ttl = 3;
}


function FastTower () : Tower () constructor {
	name = "Fast";
	object = oTowerFast;
	cost = 75;
	range = 80;
	fire_rate = 4;
	damage = 1;
	aoe = false;
	effect = "none";
	bullet_speed = 10;
	bullet_direction = "at-target";
	bullet_ttl = 3;
}

function EightWayTower () : Tower () constructor {
	name = "EightWay";
	object = oTowerEightWay;
	cost = 100;
	range = 100;
	fire_rate = 1;
	damage = 1;
	aoe = false;
	effect = "none";
	bullet_speed = 10;
	bullet_direction = "8-way";
	bullet_ttl = 0.17;
}