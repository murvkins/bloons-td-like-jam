draw_self();
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_set_font(fSegoeUI_14Bold);
draw_set_halign(fa_left);
var text = getComment();
if global.level > 0 && global.level < 50 {
	text = "Round " + string(global.level) + " passed. " + string(101-global.level) + " money added. " + getComment();
}
draw_text_ext(60, 475, text, 19, 500);
draw_set_alpha(1);
draw_set_color(c_white);