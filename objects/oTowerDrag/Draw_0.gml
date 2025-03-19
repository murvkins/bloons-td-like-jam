var x1 = snapToGrid(x);
var y1 = snapToGrid(y);
draw_sprite_ext(sprite_index, image_index, x1, y1,global.scale,global.scale,0,col,1);
draw_set_color(c_dkgray);
draw_set_alpha(0.6);
draw_circle(x1, y1, tower.range, false);
draw_set_color(c_white);
draw_set_alpha(1);