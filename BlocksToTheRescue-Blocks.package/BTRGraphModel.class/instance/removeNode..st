accessing
removeNode: aNode

	[aNode removeDependent: self.
	self edges 
		select: [:each | each key = aNode or: [each value = aNode]] 
		thenDo: [:each | self removeEdge: each].
	^ self nodes remove: aNode] ensure: [self changed]