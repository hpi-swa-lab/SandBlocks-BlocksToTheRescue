execution
pushResults: anObject of: aNode
	
	| resultingArray |
	resultingArray := anObject isArray
		ifFalse: [ {anObject} ]
		ifTrue: [ anObject ].
		
	(self results includesKey: aNode)
		ifFalse: [self activateEdges: (self graph outgoing: aNode) with: resultingArray]
		ifTrue: [self activateNode: aNode with: resultingArray].