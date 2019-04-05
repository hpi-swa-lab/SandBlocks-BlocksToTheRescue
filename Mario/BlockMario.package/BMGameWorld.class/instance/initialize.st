initialization
initialize

	super initialize.
	self
		stopStepping;
		gameObjects: OrderedCollection new;
		converter: DNMKeycodeConverter new;
		initializeStyle;
		initializeBackground;
		initializeGround;
		initializePlatforms;
		initializeMario;
		startStepping.
	