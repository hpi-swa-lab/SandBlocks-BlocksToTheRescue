running
handleUnknownTransition: aSymbol

	self unknownTransitionHandler
		ifNil: [^ BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' onState: self]
		ifNotNil: [:handler | handler value: self value: aSymbol].