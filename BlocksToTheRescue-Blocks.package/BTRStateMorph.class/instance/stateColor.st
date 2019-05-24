accessing
stateColor

	^ self state isFinalState
		ifTrue: [self class finalStateColor]
		ifFalse: [self class defaultStateColor]