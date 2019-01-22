as yet unclassified
generateMessageBlock: aMethodNode connectedTo: aGPBlockView

	^ (aMethodNode arguments size = 2 and: [aMethodNode name asString includesSubString: 'if'])
		ifTrue: [self generateIfBlock: aMethodNode connectedTo: aGPBlockView]
		ifFalse: [self blockFor: aMethodNode connectedTo: aGPBlockView]