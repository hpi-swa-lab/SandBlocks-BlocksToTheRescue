initialization
initialize

	super initialize.
	self configureForKids.
	self addMorph: (gameField := BOGameField new).