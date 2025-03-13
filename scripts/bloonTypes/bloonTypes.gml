function RedBloon () : Enemy () constructor {
	color = "red"
	object = oBloonParent;
	spd = 1;
	tier = 1;
	survivedamage = 1;
	reward = 1;
}


function BlueBloon () : Enemy () constructor {
	name = "blue"
	object = oBloonParent;
	spd = 1.4;	
	tier = 2;
	survivedamage = 2;
	reward = 2;
}

function GreenBloon () : Enemy () constructor {
	name = "green"
	object = oBloonParent;
	spd = 1.8;
	tier = 3;
	survivedamage = 3;
	reward = 3;
}

function YellowBloon () : Enemy () constructor {
	name = "yellow"
	object = oBloonParent;
	spd = 3.2;
	tier = 4;
	survivedamage = 4;
	reward = 4;
}

function BlackBloon () : Enemy () constructor {
	name = "black"
	object = oBloonParent;
	spd = 1.8;
	tier = 5;
	survivedamage = 9;
	reward = 9;
}

function WhiteBloon () : Enemy () constructor {
	name = "white"
	object = oBloonParent;
	spd = 2;
	tier = 5;
	survivedamage = 9;
	reward = 9;
}

function spawnOnDeath(tier) {
	var deathspawn = [
		[],
		[oRedBloon],
		[oBlueBloon],
		[oGreenBloon],
		[oYellowBloon, oYellowBloon]
	];
	
	var index = tier - 1;
	if (index < 0) index = 0;
	return deathspawn[index];
}