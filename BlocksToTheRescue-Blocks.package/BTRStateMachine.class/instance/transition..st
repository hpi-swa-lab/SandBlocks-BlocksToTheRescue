evaluating
transition: aSymbol

	| transition newState |
	transition := self currentState transitions
		at: aSymbol
		ifAbsent: [ ^ BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' ].
	newState := self model stateNamed: transition targetStateName.
	self currentState leave.
	self currentState: newState.
	self currentState enter.