accessing
transitionNamed: aSymbol

	^ self 
		transitionNamed: aSymbol
		ifAbsent: [BTRInvalidStateMachineException signal: 'Unknown transition "', aSymbol, '"' onState: self]