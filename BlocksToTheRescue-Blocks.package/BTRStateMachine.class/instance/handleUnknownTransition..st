running
handleUnknownTransition: aSymbol

	[self model handleUnknownTransition: aSymbol inState: self currentState]
		on: BTRInvalidStateMachineException
		do: [self currentState handleUnknownTransition: aSymbol].