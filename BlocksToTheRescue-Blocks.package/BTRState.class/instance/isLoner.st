testing
isLoner

	^ self outgoingTransitions isEmpty
		and: [self incomingTransitions isEmpty]