accessing
stateNamed: aSymbol

	^ self states
		at: aSymbol
		ifAbsent: [^ BTRInvalidStateMachineException signal: 'Unknown state "', aSymbol, '"' ]