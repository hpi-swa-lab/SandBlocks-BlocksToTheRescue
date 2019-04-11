evaluating
handleUnknownTransition: aSymbol inState: aBTRState for: aBTRStateMachine

	self unknownTransitionHandler
		ifNotNil: [:handler | handler valueWithPossibleArgs: {aSymbol. aBTRState. aBTRStateMachine}]
		ifNil: [^ BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' onState: aBTRState]