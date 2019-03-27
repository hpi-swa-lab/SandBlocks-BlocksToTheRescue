accessing
addNode: aNode

	[^ self nodes addLast: aNode] ensure: [self changed]