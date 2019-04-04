instance-creation
gumbaState
	^DNMMovingGameElementState new
		movementStrategy: (DNMMovementStrategySimplePatrol new);
		image: (DNMImageRessourceManager singleton getRessource: #gumba);
		maxSpeed: (3 @ 60);
		acceleration: (3 @ 10);
		attackDirections: {#left . #right . #bottom};
		faction: #enemyFaction;
		onTakeDamageBlock: [:me | me representedObject changeToState: #squashedGumbaState];
		yourself