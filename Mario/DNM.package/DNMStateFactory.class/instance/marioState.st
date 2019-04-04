instance-creation
marioState
	^DNMMovingGameElementState new
		image: DNMMarioAnimation new;
		movementStrategy: DNMMovementStrategyKeyboardControlled new;
		abilityStrategy: DNMAbilityStrategyKeyboardControlled new;
		onTakeDamageBlock: [:me | me representedObject decreaseHealthByOneUnit];
		attackStrength: #normal;
		defenseStrength: #normal;
		attackDirections: {#down};
		maxSpeed: (9 @ 60);
		acceleration: (9 @ 60);
		yourself
	
		