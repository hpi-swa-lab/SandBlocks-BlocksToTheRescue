validation
validateStateGraph

	(self hasStateNamed: self startStateSelector)
		ifFalse: [^ BTRInvalidStateMachineException
			signal: 'Unknown start state ', self startStateSelector].
	self validateTransitions.