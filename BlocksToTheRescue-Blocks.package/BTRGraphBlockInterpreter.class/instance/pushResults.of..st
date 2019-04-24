execution
pushResults: anObject of: aNode
	
	| resultingArray |
	anObject isCollection
		ifFalse: [ resultingArray := {anObject} ].
		
	(self results includesKey: aNode)
		ifFalse: [self activateEdges: (self graph outgoing: aNode) with: resultingArray]
		ifTrue: [self activateNode: aNode with: resultingArray].