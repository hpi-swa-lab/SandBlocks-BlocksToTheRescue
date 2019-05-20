accessing
stateNamed: aSymbol ifAbsent: aBlockClosure

	^ self states
		at: aSymbol
		ifAbsent: aBlockClosure