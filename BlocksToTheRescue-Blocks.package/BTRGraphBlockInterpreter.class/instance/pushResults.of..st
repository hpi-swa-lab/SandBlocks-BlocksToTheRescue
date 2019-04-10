as yet unclassified
pushResults: anArray of: aNode

	(self results includesKey: aNode)
		ifFalse: [(self graph outgoing: aNode) with: anArray do: [:edge :value | self activeEdges at: edge put: value]]
		ifTrue: [self results at: aNode put: anArray].