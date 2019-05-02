initialization
initialize

	super initialize.
	self nameMorph: self transition name asMorph.
	self
		name: 'Transition: ', self transition name;
		borderColor: Color random;
		beStraightSegments;
		makeOpen;
		makeForwardArrow;
		extent: 50 asPoint.