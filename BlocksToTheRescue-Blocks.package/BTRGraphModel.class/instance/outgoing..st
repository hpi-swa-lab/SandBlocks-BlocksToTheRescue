accessing
outgoing: aNode

	^ self edges select: [:each | each key = aNode]