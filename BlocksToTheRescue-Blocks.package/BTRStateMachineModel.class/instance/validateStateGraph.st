validation
validateStateGraph

	(self hasStateNamed: self startStateName)
		ifFalse: [^ BTRInvalidStateMachineException
			signal: 'Unknown start state ', self startStateName].
	self validateTransitions.