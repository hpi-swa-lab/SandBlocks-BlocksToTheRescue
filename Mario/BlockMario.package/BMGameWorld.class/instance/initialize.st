initialization
initialize

	super initialize.
	self
		stopStepping;
		gameObjects: OrderedCollection new;
		converter: DNMKeycodeConverter new;
		keyboardListener: DNMKeyboardListener new;
		physics: (DNMPhysics new gameWorld: self);
		initializeStyle;
		initializeBackground;
		initializeGround;
		initializePlatforms;
		initializeMario;
		initializeGumbas;
		startStepping.
	