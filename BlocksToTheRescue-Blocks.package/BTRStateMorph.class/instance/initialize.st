initialization
initialize

	super initialize.
	self nameMorph: self state name asString asMorph.
	self
		name: 'State: ', self state name;
		color: Color white;
		borderStyle: (BorderStyle width: 1 color: Color black);
		cornerStyle: #rounded;
		extent: self nameMorph extent + (16@8);
		addMorphCentered: self nameMorph;
		setProperty: #morphicLayerNumber toValue: 80;
		initializeDockingPoints.