draw_set_color(c_white);
draw_set_font(fSegoeUI_20);
draw_set_halign(fa_left);
var starty = 20;
var texty = 20;
var spacing = 28;
draw_text(620,texty,"Round:");
texty += spacing;
draw_text(620,texty,"Money:");
texty += spacing;
draw_text(620,texty,"Lives:");
draw_set_halign(fa_right);
texty = starty;
draw_text(room_width - 20,20,string(global.level));
texty += spacing;
draw_text(room_width - 20,texty,string(global.coins));
texty += spacing;
draw_text(room_width - 20,texty,string(global.hp));
draw_set_halign(fa_center);
var buildtowersy = 110;
draw_text(620 + (room_width-20-620) / 2,buildtowersy,"Build Towers");
draw_set_halign(fa_left);
draw_line(632, buildtowersy+27, room_width - 35, buildtowersy+27);
draw_line(632, buildtowersy+28, room_width - 35, buildtowersy+28);

var displaytower = noone;

if (global.instance_selected != noone && global.new_tower_hover == noone) {
	if (instance_exists(global.instance_selected)) {
	
	displaytower = global.instance_selected;
	
	draw_set_color(c_green);
	draw_set_font(fSegoeUI_20Bold);
	draw_set_halign(fa_center);
	draw_text(630+(room_width - 30 - 630)/2,200, displaytower.towerEnum.name);
	draw_line(630, 229, 770, 229);
	draw_line(630, 230, 770, 230);
	draw_set_font(fSegoeUI_14Bold);
	draw_set_halign(fa_right);
	draw_text(620+(room_width - 30 - 630)/2, 233, "Cost: ");
	draw_text(620+(room_width - 30 - 630)/2, 258, "Speed: ");
	draw_set_font(fSegoeUI_14);
	draw_set_halign(fa_left);
	draw_text(620+(room_width - 30 - 635)/2, 233, string(displaytower.towerEnum.cost));
	draw_text(620+(room_width - 30 - 635)/2, 258, displaytower.towerEnum.tower_speed);
	draw_set_color(c_green);
	
	var buytext = "";
	var towermod = displaytower.towerEnum.towermods[0];
	var mods = array_length(displaytower.towerEnum.towermods);
	var xleft = 626;
	var xwidth = 0;
	var sellprice = displaytower.towerEnum.cost;
	
	for (var i = 0; i < mods; i++) {
		towermod = displaytower.towerEnum.towermods[i];
		buytext = "Buy for:";		
		switch (mods) {
		case 1:			
			if (global.coins < towermod.cost) {
				buytext = "Can't Afford";
			}
			xwidth = 150;
			break;			
		case 2:
			if (global.coins < towermod.cost) {
				buytext = "Can't Afford";
			}
			xwidth = 70;
			
			break;
		}
		
		if (displaytower.towerEnum.purchasedmods[i]) {
			buytext = "Already bought";
			sellprice += displaytower.towerEnum.towermods[i].cost;
		}
		
		xleft = 626 + (i * xwidth) + (i * 10);
		draw_set_color(c_white);
		draw_set_font(fSegoeUI_12Bold);
		draw_set_halign(fa_center);
		draw_text_ext(xleft+xwidth/2, 335, towermod.name, 19, xwidth-10);
		
		draw_set_font(fSegoeUI_13Bold);
		draw_text_ext(xleft+xwidth/2, 425, towermod.cost, 19, xwidth-10);
		
		draw_set_font(fSegoeUI_12);	
		var buyh = string_height_ext(buytext, 16, xwidth-10)-2.5;
		draw_text_ext(xleft+xwidth/2, 425-buyh, buytext, 16, xwidth-10);
		
		draw_set_font(fSegoeUI_20);
		draw_text(701, 456, string_concat("Sell for: ", string(sellprice * 0.8)));
	}
	} else {
		global.instance_selected = noone;
	}
} else if (global.new_tower_hover != noone) {
	displaytower = global.new_tower_hover;
	draw_set_color(c_green);
	draw_set_font(fSegoeUI_20Bold);
	draw_set_halign(fa_center);
	draw_text(630+(room_width - 30 - 630)/2,200, displaytower.towerEnum.name);
	draw_line(630, 229, 770, 229);
	draw_line(630, 230, 770, 230);
	draw_set_font(fSegoeUI_14Bold);
	draw_set_halign(fa_right);
	draw_text(620+(room_width - 30 - 630)/2, 233, "Cost: ");
	draw_text(620+(room_width - 30 - 630)/2, 258, "Speed: ");
	draw_set_font(fSegoeUI_14);
	draw_set_halign(fa_left);
	draw_text(620+(room_width - 30 - 635)/2, 233, string(displaytower.towerEnum.cost));
	draw_text(620+(room_width - 30 - 635)/2, 258, displaytower.towerEnum.tower_speed);
	draw_set_font(fSegoeUI_12);
	draw_text_ext(630,290, displaytower.towerEnum.description, 20, 140);
	draw_set_color(c_white);
}