initialization
initialize
	super initialize.
	self 
		color: Color transparent;
		initializeGIFs;
		width: (animationsBySymbol at: currentGIF) width;
		height: (animationsBySymbol at: currentGIF) height;
		changeToStandRight.
