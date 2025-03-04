x = mouse_x;
y = mouse_y;

if (place_meeting(x,y,oReg) or place_meeting(x,y,oTowerParent)) {
	col = c_red;	
} else {
	col = c_white;
}

if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
}