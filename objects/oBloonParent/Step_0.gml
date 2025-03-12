self.pathpos = path_position;

if (rFreezetimer > 0) {
	alarm[0] = 1;	
}

if (self.damage > 0) {
	bloondmg = self.damage;
	self.damage = 0;
}

if (bloondmg > 0) {
	alarm[1] = 1;	
}