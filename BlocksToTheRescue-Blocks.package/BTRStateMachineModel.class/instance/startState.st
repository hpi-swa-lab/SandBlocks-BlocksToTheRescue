accessing
startState

	^ self
		stateNamed: self startStateName
		ifAbsent: [self states anyOne]