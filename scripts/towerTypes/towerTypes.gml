function NormalTower () : Tower () constructor {
	name = "Dart Tower"
	object = oTowerNormal;
	cost = 250;
	range = 100;
	fire_rate = 1.5;
	damage = 1;
	aoe = false;
	bullet_speed = 10;
	bullet_direction = "at-target";
	bullet_ttl = 5;
	rotate = true;
	description = "Shoots a single dart. Can upgrade to piercing darts and long range darts.";
	tower_speed = "Fast";
	towermods = [new PiercingDarts(), new LongRange()];
	sellprice = 200;
}


function FastTower () : Tower () constructor {
	name = "Super Tower";
	object = oTowerFast;
	cost = 4000;
	range = 150;
	fire_rate = 5;
	damage = 1;
	aoe = false;
	bullet_speed = 10;
	bullet_direction = "at-target";
	bullet_ttl = 3;
	rotate = true;
	description = "Super Tower shoots a continuous stream of darts and can mow down even the fastest and most stubbon bloons.";
	tower_speed = "Hypersonic";
	towermods = [new EpicRange()];
	sellprice = 3500;
}

function EightWayTower () : Tower () constructor {
	name = "Tack Tower";
	object = oTowerEightWay;
	cost = 400;
	range = 100;
	fire_rate = 1;
	damage = 1;
	aoe = false;
	bullet_speed = 10;
	bullet_direction = "8-way";
	bullet_ttl = 0.17;
	rotate = false;
	description = "Shoots volley of tacks in 8 directions. Can upgrade its shoot range and its speed.";
	tower_speed = "Medium";
	towermods = [new FasterShooting(), new ExtraRangeTacks()];
	sellprice = 320;
}

function FreezeTower () : Tower () constructor {
	name = "Ice Tower";
	object = oTowerFreeze;
	cost = 850;
	range = 100;
	fire_rate = 0.25;
	damage = 0;
	aoe = true;
	bullet_speed = 0;
	bullet_direction = "none";
	bullet_ttl = 0;
	rotate = false;
	description = "Freezes nearby bloons. Frozen bloons are immune to darts and tacks, but bombs will destroy them. Can upgrade to increased speed time, and larger radius.";
	tower_speed = "Slow";
	towermods = [new LongFreezeTime(), new WideFreezeRadius()];
	sellprice = 680;
}

function CannonTower () : Tower () constructor {
	name = "Bomb Tower";
	object = oTowerCannon;
	cost = 900;
	range = 150;
	fire_rate = 0.75;
	damage = 1;
	aoe = true;
	bullet_speed = 5;
	bullet_direction = "at-target";
	bullet_ttl = 0.5;
	rotate = true;
	description = "Launches a bomb that explodes on impact. Can upgrade to bigger bombs and longer range.";
	tower_speed = "Medium";
	towermods = [new BiggerBombs(), new ExtraRangeBombs()];
	sellprice = 720;
}