accessing
stateColor

	^ self state isFinalState
		ifTrue: [self finalStateColor]
		ifFalse: [self defaultColor]