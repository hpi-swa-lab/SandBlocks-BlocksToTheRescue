initialization
initialize

	super initialize.
	self nameMorph: (UpdatingStringMorph on: self transition selector: #name).
	self
		name: 'Transition: ', self transition name;
		borderColor: Color random;
		beStraightSegments;
		makeOpen;
		"nudgeForLabel: ???"
		makeForwardArrow;
		extent: 50 asPoint;
		addMorph: self nameMorph.