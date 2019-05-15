execution
activateEdge: anEdge with: aValue

	^ aValue == self class ignoreEdge
		ifFalse: [self activeEdges at: anEdge put: aValue. true]
		ifTrue: [false]
	

	