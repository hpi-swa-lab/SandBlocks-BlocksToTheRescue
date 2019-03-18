initialization
initialize

	super initialize.
	
	colorStringMorph := #'#00000000' asMorph.
	self extent: colorStringMorph extent.
	self addMorphCentered: colorStringMorph.
	self updateText.
	
	PluggableButtonMorph roundedButtonCorners
		ifTrue: [self cornerStyle: #rounded].