as yet unclassified
otherSideOf: aPort

	^ self startMorph = aPort
		ifTrue: [self endMorph]
		ifFalse: [self startMorph]