as yet unclassified
initializeWith: anEdge

	self 
		edge: anEdge;
		arrowSpec: 3@2;
		makeForwardArrow;
		layoutPolicy: CenteredLayout new;
		label: self createLabel;
		addMorph: self label.
	anEdge addDependent: self.