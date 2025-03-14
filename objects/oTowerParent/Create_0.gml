shooting = false;
objectToShoot = noone;
aoeradius = 0;
tower = self.towerEnum;
rangevisible = true;
rangeinst = noone;
cur_range_mod = 0;

alarm[0] = 1;
alarm[1] = 1;

purchasedmods = [];
for (var i = 0; i < array_length(towerEnum.towermods); i++) {
	array_push(purchasedmods, false);
}

fire_rate_mod = 1;
radius_mod = 1;
freeze_mod = 1;
bullet_life_mod = 0;
range_mod = 1;