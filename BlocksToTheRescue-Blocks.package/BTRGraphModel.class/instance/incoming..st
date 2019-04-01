accessing
incoming: aNode

	^ self edges select: [:each | each value = aNode]