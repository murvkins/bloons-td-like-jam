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
}