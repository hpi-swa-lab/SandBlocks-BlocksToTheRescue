as yet unclassified
createEdgeViewFor: anAssociation

	^ LineMorph new
		color: Color black;
		lineWidth: 5;
		arrowSpec: 3@2;
		makeForwardArrow;
		yourself