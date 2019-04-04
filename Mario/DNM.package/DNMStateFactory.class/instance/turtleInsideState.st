instance-creation
turtleInsideState
	 ^DNMMovingGameElementState new
		movementStrategy: DNMMovementStrategyNone new;
		onEnterBlock: [:me | me addAlarm: #onTimer after: 5000];
		onTimerBlock: [:me | me representedObject changeToState: #turtleOutsideState];
		onCollisionBlock: [:anObject :me | 
			(anObject isNeitherAboveOrBelow: (me representedObject))
				ifTrue: [me representedObject changeToState: #turtleProjectileState]];
		image: (DNMImageRessourceManager singleton getRessource: #turtle_shell);
		faction: #harmlessFaction;
		attackStrength: #weak;
		defenseStrength: #godly;
		maxSpeed: (6 @ 60);
		acceleration: (1 @ 10)
		yourself
	
		