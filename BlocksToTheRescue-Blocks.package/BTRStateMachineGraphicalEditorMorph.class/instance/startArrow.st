accessing
startArrow
	^ startArrow ifNil: [startArrow := PolygonMorph new
		borderColor: BTRStateTransitionMorph transitionColor;
		initializeAsArrow;
		setVertices: {0@0. Point r: self startArrowLength degrees: 45};
		yourself]