execution
activate: aNode at: anIndex with: aValue

	(self results includesKey: aNode)
		ifFalse: [self activateEdge: ((self graph outgoing: aNode) at: anIndex) with: aValue]
		ifTrue: [self activateNode: aNode with: {aValue}].