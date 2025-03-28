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

part = 0;

if (tower.name == "Ice Tower") {
	part = part_system_create(part_snow);
	part_system_position(part, x-sprite_width/2*global.scale+10, y-sprite_height/2*global.scale+10);
	part_system_layer(part, layer_get_id("Instances"));
}