instance-creation
fireballProjectileState
	^DNMMovingGameElementState new
		movementStrategy: DNMMovementStrategyOneDirection new;
		onEnterBlock: [:me | me addAlarm: #onTimer after: 1000];
		onTimerBlock: [:me | (me representedObject) removeFromWorld];
		traversableBlock: [:aGameElement :me | aGameElement faction = me representedObject faction];
		onCollisionBlock: [:anObject :me | 
			((anObject isNeitherAboveOrBelow: (me representedObject)) and: (anObject isStatic)) 
				ifTrue: [(me representedObject) removeFromWorld]];
		image: (DNMImageRessourceManager singleton getRessource: #fireball);
		maxSpeed: (24 @ 60);
		attackDirections: {#left . #right . #bottom . #top};
		attackStrength: #normal;
		acceleration: (24 @ 20);
		yourself
	
		