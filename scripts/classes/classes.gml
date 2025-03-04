function Tower () constructor {
	name = "";
	object = oTowerNormal;
	cost = 0;	
	range = 0;
	fire_rate = 0; //bullets per second
	damage = 0;
	aoe = false;
	effect = "none";
	bullet_speed = 0;
	bullet_direction = "at-target";
}

function Enemy () constructor {
	name = "";
	object = oEnemy;
	spd = 0;
	hp = 0;	
}