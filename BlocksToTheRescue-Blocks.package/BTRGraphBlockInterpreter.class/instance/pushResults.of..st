execution
pushResults: anArray of: aNode

	(self results includesKey: aNode)
		ifFalse: [(self graph outgoing: aNode) with: anArray do: [:edge :value | self activateEdge: edge with: value]]
		ifTrue: [self activateNode: aNode with: anArray].