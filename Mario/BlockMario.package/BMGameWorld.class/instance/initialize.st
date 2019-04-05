initialization
initialize

	super initialize.
	self
		stopStepping;
		gameObjects: OrderedCollection new;
		converter: DNMKeycodeConverter new;
		physics: (DNMPhysics new gameWorld: self);
		initializeStyle;
		initializeBackground;
		initializeGround;
		initializePlatforms;
		initializeMario;
		startStepping.
	