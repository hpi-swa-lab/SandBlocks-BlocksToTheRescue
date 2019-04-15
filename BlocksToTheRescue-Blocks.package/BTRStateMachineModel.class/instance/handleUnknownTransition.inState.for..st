evaluating
handleUnknownTransition: aSymbol inState: aBTRState for: aBTRStateMachine

	self unknownTransitionHandler
		ifNotNil: [:handler | handler valueWithPossibleArgs: {aBTRState. aSymbol. aBTRStateMachine. #unknownTransition}]
		ifNil: [^ BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' onState: aBTRState]