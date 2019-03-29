accessing
addNode: aNode

	[aNode addDependent: self.
	^ self nodes addLast: aNode] ensure: [self changed]