execution
activateEdge: anEdge with: aValue

	super activateEdge: anEdge with: aValue.
	(self semaphores at: anEdge) signal.