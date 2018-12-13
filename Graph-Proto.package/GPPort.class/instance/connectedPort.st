as yet unclassified
connectedPort

	^ self hasConnection
		ifTrue: [self connection otherSideOf: self]
		ifFalse: []