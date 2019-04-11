evaluating
handleUnknownTransition: aSymbol inState: aBTRState

	self unknownTransitionHandler
		ifNil: [^ BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' onState: aBTRState]
		ifNotNil: [:handler | handler value: aBTRState value: aSymbol].