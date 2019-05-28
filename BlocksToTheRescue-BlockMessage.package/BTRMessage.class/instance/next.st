as yet unclassified
next

	^ iterator < self selectorWithArgs size
		ifTrue: [self iterator: self iterator + 1. self tokenAt: iterator]
		ifFalse: [self iterator: 0. false].
		