var time = 1;

if (aoeradius < maxradius) {
	aoeradius += 0.1;
	image_xscale = aoeradius
	image_yscale = aoeradius;
} else if (aoeradius >= maxradius && aoealpha == 1) {
		var enemies = ds_list_create();
		var _r = 100;
		var _x = self.x;
		var _y = self.y;
		with (oEnemy) {
			if (point_distance(_x,_y, x, y) <= _r+(sprite_width/2))  {
		        rFreezetimer = 60;
			}
		}
		aoealpha -= 0.1;		
	} else {
		aoealpha -= 0.1;		
		if (aoealpha <= 0) {
			instance_destroy();
		}
}
image_alpha = aoealpha;
alarm[0] = time;





