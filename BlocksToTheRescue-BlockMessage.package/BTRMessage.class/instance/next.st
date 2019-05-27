as yet unclassified
next

	^ iterator < (self parameterFields size * 2)
		ifTrue: [self iterator: self iterator + 1. self tokenAt: iterator]
		ifFalse: [self iterator: 0. false].
		