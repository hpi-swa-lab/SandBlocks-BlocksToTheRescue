initialization
initializeBackground
	self background: (BackgroundMorph new
		addMorph: (DNMImageRessourceManager singleton getRessource: #background);
		delta: (0 @ 0);
		width: self width;
		height: self height);
		yourself.
	self addMorph: background.
	
