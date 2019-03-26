accessing
addEdge: anEdge

	[^ self edges addLast: anEdge] ensure: [self changed]