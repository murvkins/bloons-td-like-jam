draw_self();

if (global.coins >= self.towerEnum.cost) {	
	draw_set_color(c_black);
} else {
	draw_set_color(c_red);
}

draw_text(x-15, y-35, self.towerEnum.cost);
draw_set_color(c_white);