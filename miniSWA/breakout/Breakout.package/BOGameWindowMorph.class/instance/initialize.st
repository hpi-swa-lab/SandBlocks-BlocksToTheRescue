initialization
initialize

	super initialize.
	gameField := BOGameField new.
	self
		configureForKids;
		initializeContent.