initialization
initialize

	super initialize.
	
	self name: #GameField;
		entityManagers: (IdentityDictionary newFrom: (
		{BOBrick. BOPaddle. BOBall}
		collect: [:class | class -> (BOEntityManager newFor: class)]));
		updateTickTime;
		layoutInset: 0;
		borderWidth: 0;
		initializeDefaultGameState.