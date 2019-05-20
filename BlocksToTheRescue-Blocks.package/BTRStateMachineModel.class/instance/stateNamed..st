accessing
stateNamed: aSymbol

	^ self 
		stateNamed: aSymbol
		ifAbsent: [^ BTRInvalidStateMachineException signal: 'Unknown state "', aSymbol, '"' ]