initialization
initialize

	super initialize.
	
	self name: #GameField;
		entityManagers: (IdentityDictionary newFrom: (
			{BOBrick. BOPaddle. BOBall} collect: [:class |
				class -> class newManager]));
		collisionSystem: GMCollisionHandler new;
		updateTickTime;
		layoutInset: 0;
		borderWidth: 0;
		initializeDefaultGameState.