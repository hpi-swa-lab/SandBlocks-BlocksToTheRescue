instance-creation
turtleProjectileState
	^DNMMovingGameElementState new
		movementStrategy: DNMMovementStrategySimplePatrol new;
		image: (DNMImageRessourceManager singleton getRessource: #turtle_shell);
		faction: #aggressiveFaction;
		attackStrength: #strong;
		defenseStrength: #normal;
		attackDirections: {#front . #down};
		maxSpeed: (24 @ 60);
		acceleration: (15 @ 10);
		yourself
	
		