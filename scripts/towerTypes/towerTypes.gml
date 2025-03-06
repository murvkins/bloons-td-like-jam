function NormalTower () : Tower () constructor {
	name = "Normal"
	object = oTowerNormal;
	cost = 50;
	range = 100;
	fire_rate = 2;
	damage = 1;
	aoe = false;
	bullet_speed = 5;
	bullet_direction = "at-target";
	bullet_ttl = 5;
	rotate = true;
}


function FastTower () : Tower () constructor {
	name = "Fast";
	object = oTowerFast;
	cost = 75;
	range = 80;
	fire_rate = 4;
	damage = 1;
	aoe = false;
	bullet_speed = 10;
	bullet_direction = "at-target";
	bullet_ttl = 3;
	rotate = true;
}

function EightWayTower () : Tower () constructor {
	name = "EightWay";
	object = oTowerEightWay;
	cost = 100;
	range = 100;
	fire_rate = 1;
	damage = 1;
	aoe = false;
	bullet_speed = 10;
	bullet_direction = "8-way";
	bullet_ttl = 0.17;
	rotate = false;
}

function FreezeTower () : Tower () constructor {
	name = "Freeze";
	object = oTowerFreeze;
	cost = 100;
	range = 100;
	fire_rate = 0.25;
	damage = 0;
	aoe = true;
	bullet_speed = 0;
	bullet_direction = "none";
	bullet_ttl = 0.17;
	rotate = false;
}

function CannonTower () : Tower () constructor {
	name = "Cannon";
	object = oTowerCannon;
	cost = 100;
	range = 100;
	fire_rate = 0.25;
	damage = 3;
	aoe = true;
	bullet_speed = 5;
	bullet_direction = "at-target";
	bullet_ttl = 0.34;
	rotate = true;
}