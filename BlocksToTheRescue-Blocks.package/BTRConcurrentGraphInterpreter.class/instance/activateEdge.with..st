execution
activateEdge: anEdge with: aValue

	(super activateEdge: anEdge with: aValue)
		ifTrue: [(self semaphores at: anEdge) signal].