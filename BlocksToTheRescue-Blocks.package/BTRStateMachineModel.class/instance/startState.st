accessing
startState

	^ self hasStartState
		ifTrue: [self
			stateNamed: self startStateName
			ifAbsent: [nil]]
		ifFalse: [nil]