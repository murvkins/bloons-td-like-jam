var x1 = snapToGrid(x);
var y1 = snapToGrid(y);
draw_sprite_ext(sprite_index, image_index, x1, y1,1,1,0,col,1);
draw_set_color(c_grey);
draw_set_alpha(0.25);
draw_circle(x1, y1, tower.range, false);
draw_set_color(c_white);
draw_set_alpha(1);