instance-creation
squashedGumbaState
	^DNMMovingGameElementState new
		movementStrategy: DNMMovementStrategyNone new;
		image: (DNMImageRessourceManager singleton getRessource: #squashed_gumba);
		onEnterBlock: [:me | me addAlarm: #onTimer after: 1000. me representedObject playSound: #gumbaSound];
		onTimerBlock: [:me | (me representedObject) removeFromWorld];
		faction: #harmlessFaction;
		attackStrength: #weak;
		defenseStrength: #godly;
		maxSpeed: (0 @ 60); 
		acceleration: (0 @ 0);
		yourself
	
		