with (oSpawn) alarm[0] = 1;
instance_destroy();
global.level++;
if (global.level > 50) global.level = 1;