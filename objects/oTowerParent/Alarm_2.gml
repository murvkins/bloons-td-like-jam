/// @description Insert description here
// You can write your code in this editor

fire_rate_mod = 0;
radius_mod = 0;
freeze_mod = 0;
bullet_life_mod = 0;
range_mod = 0;
for (var i = 0; i < array_length(tower.towermods); i++) {
	if (tower.towermods[i].purchased) {
		fire_rate_mod += tower.towermods[i].mod_fire_rate;
		radius_mod += tower.towermods[i].mod_aoe_radius;
		freeze_mod += tower.towermods[i].mod_freeze_timer;
		bullet_life_mod += tower.towermods[i].mod_dartlife;
		range_mod += tower.towermods[i].mod_range;
	}
}
if (fire_rate_mod == 0) fire_rate_mod = 1;
if (radius_mod == 0) radius_mod = 1;
if (freeze_mod == 0) freeze_mod = 1;
if (range_mod == 0) range_mod = 1;