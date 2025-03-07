x = mouse_x;
y = mouse_y;

var x1 = snapToGrid(x);
var y1 = snapToGrid(y);

if (place_meeting(x1,y1,oReg) or place_meeting(x1,y1,oTowerParent)) {
	col = c_red;	
} else {
	col = c_white;
}

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}