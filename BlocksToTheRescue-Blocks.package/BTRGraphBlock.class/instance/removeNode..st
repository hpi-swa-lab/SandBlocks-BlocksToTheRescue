accessing
removeNode: aNode

	[^ self nodes remove: aNode] ensure: [self changed]