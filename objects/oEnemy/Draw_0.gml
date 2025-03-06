draw_self();
draw_healthbar(x - sprite_width/2, y+sprite_height/2 + 5,x+sprite_width/2, y+sprite_height/2+10, enemy.hp / enemy.maxhp * 100, c_black, c_red, c_green, 0, true, false);