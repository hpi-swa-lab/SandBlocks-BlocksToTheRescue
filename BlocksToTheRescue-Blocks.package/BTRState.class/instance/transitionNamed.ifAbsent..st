accessing
transitionNamed: aSymbol ifAbsent: aBlockClosure

	^ self transitions
		at: aSymbol
		ifAbsent: aBlockClosure