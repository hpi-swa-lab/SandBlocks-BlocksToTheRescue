running
handleUnknownTransition: aSymbol for: aBTRStateMachine

	self unknownTransitionHandler
		ifNotNil: [:handler | handler valueWithPossibleArgs: {self. aSymbol. aBTRStateMachine. #unknownTransition}]
		ifNil: [self model handleUnknownTransition: aSymbol inState: self for: aBTRStateMachine]