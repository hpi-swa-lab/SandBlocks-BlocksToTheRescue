accessing
transitionNamed: aSymbol

	^ self transitions
		at: aSymbol
		ifAbsent: [^ BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' onState: self]