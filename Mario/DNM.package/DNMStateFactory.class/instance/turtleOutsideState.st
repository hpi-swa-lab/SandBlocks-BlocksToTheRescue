instance-creation
turtleOutsideState
	^DNMMovingGameElementState new
		movementStrategy: DNMMovementStrategySimplePatrol new;
		onTakeDamageBlock: [:me | me representedObject changeToState: #turtleInsideState];
		image: (DNMImageRessourceManager singleton getRessource: #turtle);
		faction: #enemyFaction;
		attackStrength: #normal;
		defenseStrength: #normal;
		attackDirections: {#left . #right . #down};
		maxSpeed: (1 @ 60);
		acceleration: (2 @ 10);
		yourself
	
		