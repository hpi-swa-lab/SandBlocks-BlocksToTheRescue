instance-creation
catState
	^DNMMovingGameElementState new
		movementStrategy: (DNMMovementStrategySimplePatrol new);
		image: (DNMImageRessourceManager singleton getRessource: #cat);
		maxSpeed: (4 @ 60);
		acceleration: (4 @ 10);
		attackDirections: {#left . #right . #bottom};
		faction: #harmlessFaction;
		onTakeDamageBlock: [:me | me representedObject removeFromWorld];
		yourself