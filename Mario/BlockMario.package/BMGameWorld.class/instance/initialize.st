initialization
initialize

	super initialize.
	self
		stopStepping;
		gameObjects: OrderedCollection new;
		keyboardListener: DNMKeyboardListener new;
		physics: BMPhysics new;
		initializeStyle;
		initializeBackground;
		initializeGround;
		initializePlatforms;
		initializeMario;
		initializeGumbas;
		drawGameObjects;
		startStepping.
	