accessing
startState

	^ self
		stateNamed: self startStateName
		ifAbsent: [self states
			ifEmpty: [nil]
			ifNotEmpty: [self states anyOne]]