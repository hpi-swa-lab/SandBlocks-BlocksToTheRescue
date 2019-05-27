initialization
initialize

	super initialize.
	
	colorStringMorph := #'#00000000' asMorph.
	self extent: colorStringMorph extent.
	self borderWidth: 1.
	self borderColor: Color lightGray.
	self addMorphCentered: colorStringMorph.
	self updateText.
	
	PluggableButtonMorph roundedButtonCorners
		ifTrue: [self cornerStyle: #rounded].