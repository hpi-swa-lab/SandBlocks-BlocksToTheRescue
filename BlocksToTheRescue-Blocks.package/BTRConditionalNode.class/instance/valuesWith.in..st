as yet unclassified
valuesWith: arguments in: aContext
	
	arguments first
		ifTrue: [self activateEdgeAt: 1 with: nil]
		ifFalse: [self activateEdgeAt: 2 with: nil]