accessing
addEdge: anEdge

	[anEdge addDependent: self.
	^ self edges addLast: anEdge] ensure: [self changed]