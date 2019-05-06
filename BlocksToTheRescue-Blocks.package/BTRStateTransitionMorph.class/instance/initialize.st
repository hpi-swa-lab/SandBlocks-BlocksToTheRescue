initialization
initialize

	super initialize.
	self nameMorph: self transition name asMorph.
	self nameMorph setProperty: #morphicLayerNumber toValue: 90.
	self
		name: 'Transition: ', self transition name;
		borderColor: Color white;
		beStraightSegments;
		makeOpen;
		makeForwardArrow;
		setProperty: #activateOnShift toValue: false;
		setProperty: #morphicLayerNumber toValue: 100;
		setVertices: {self startPosition. self endPosition};
		addHandles.