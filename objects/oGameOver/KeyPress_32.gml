if (global.gameover) {
	with (oTowerParent) instance_destroy();
	room_restart();
}