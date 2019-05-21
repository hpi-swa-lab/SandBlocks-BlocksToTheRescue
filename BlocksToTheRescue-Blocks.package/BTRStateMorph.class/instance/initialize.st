initialization
initialize

	super initialize.
	self
		name: self state name;
		addMorphCentered: self nameMorph;
		borderStyle: (BorderStyle width: 1 color: Color black);
		cornerStyle: #rounded;
		updateStyle;
		setProperty: #morphicLayerNumber toValue: 80;
		initializeDockingPoints.