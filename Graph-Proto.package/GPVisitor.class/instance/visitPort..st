as yet unclassified
visitPort: aGPPort

	^ aGPPort hasConnection
		ifTrue: [self visit: aGPPort connectedPort block view]
		ifFalse: [self lastElement]