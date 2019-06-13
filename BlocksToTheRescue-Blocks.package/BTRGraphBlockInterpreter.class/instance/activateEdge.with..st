execution
activateEdge: anEdge with: aValue

	^ aValue == self class ignoreEdge
		ifFalse: [(self activeEdges at: anEdge) addLast: aValue. true]
		ifTrue: [false]
	

	