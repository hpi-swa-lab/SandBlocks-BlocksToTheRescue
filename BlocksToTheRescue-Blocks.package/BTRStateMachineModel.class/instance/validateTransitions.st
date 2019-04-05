validation
validateTransitions

	self states do: [ :state |
		state transitions values
			do: [ :transition |
				(self hasStateNamed: transition targetStateSelector)
					ifFalse: [^ BTRInvalidStateMachineException
						signal: 'Invalid target state ', transition targetStateSelector, ' in transition ', transition name
						onState: state
						andTransition: transition]]].