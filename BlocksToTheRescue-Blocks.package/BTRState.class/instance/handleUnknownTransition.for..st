running
handleUnknownTransition: aSymbol for: aBTRStateMachine

	self unknownTransitionHandler
		ifNotNil: [:handler | handler valueWithPossibleArgs: {aSymbol. self. aBTRStateMachine}]
		ifNil: [self model handleUnknownTransition: aSymbol inState: self for: aBTRStateMachine]