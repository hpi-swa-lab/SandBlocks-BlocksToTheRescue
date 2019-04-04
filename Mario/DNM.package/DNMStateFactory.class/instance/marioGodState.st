instance-creation
marioGodState
	^self marioState
		specialKeycodeDictionary: 
			(Dictionary new 
				add: (#h->[:me | me representedObject changeToState: #marioState]);
				yourself);
		maxSpeed: (12 @ 60);
		faction: #aggressiveFaction;
		attackDirections: {#left . #right . #top};
		attackStrength: #godly;
		defenseStrength: #godly;
		acceleration: (12 @ 60);
		yourself
	
		