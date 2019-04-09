validation
validateTransitions

	self states do: [ :state |
		state transitions values
			do: [ :transition |
				(self hasStateNamed: transition targetStateName)
					ifFalse: [^ BTRInvalidStateMachineException
						signal: 'Invalid target state ', transition targetStateName, ' in transition ', transition name
						onState: state
						andTransition: transition]]].