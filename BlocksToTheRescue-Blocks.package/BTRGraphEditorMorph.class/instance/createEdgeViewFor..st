as yet unclassified
createEdgeViewFor: anEdge

	^ LineMorph new
		color: Color black;
		lineWidth: 4;
		arrowSpec: 3@2;
		makeForwardArrow;
		layoutPolicy: CenteredLayout new;
		addMorph: (anEdge valueName asMorph color: Color white);
		yourself