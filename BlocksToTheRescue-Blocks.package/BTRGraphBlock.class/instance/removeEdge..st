accessing
removeEdge: anEdge

	[^ self edges remove: anEdge] ensure: [self changed]