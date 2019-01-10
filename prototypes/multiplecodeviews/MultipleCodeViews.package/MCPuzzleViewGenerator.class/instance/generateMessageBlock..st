as yet unclassified
generateMessageBlock: aMethodNode

	^ (aMethodNode arguments size = 2 and: [aMethodNode name asString includesSubString: 'if'])
		ifTrue: [self generateIfBlock: aMethodNode]
		ifFalse: [self generateGenericBlock: aMethodNode]