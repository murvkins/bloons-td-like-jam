/// @description End level alarm

//if (instance_number(oRedBloon) <= 0 && instance_number(oBlueBloon) <= 0 && instance_number(oGreenBloon) <= 0 && instance_number(oYellowBloon) <= 0 && instance_number(oBlackBloon) <= 0 && instance_number(oWhiteBloon) <= 0) {	
if (instance_number(oBloonParent) <= 0) {
	//award money
	global.coins += 101 - global.level;
	instance_create_layer(614, 508, "Instances", oStartButton);
	instance_create_layer(40, 460, "Instances", oCommentBox);
} else {	
	alarm[2] = 1;
}