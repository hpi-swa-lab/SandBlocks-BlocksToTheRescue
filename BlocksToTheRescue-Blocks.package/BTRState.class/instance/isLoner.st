testing
isLoner

	^ self isStartState not
		and: [self outgoingTransitions isEmpty]
		and: [self incomingTransitions isEmpty]