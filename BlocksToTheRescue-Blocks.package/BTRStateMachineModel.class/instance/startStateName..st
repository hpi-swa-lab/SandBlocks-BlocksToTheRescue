accessing
startStateName: aSymbol
	startStateName := aSymbol.
	self changed: #startState with: (aSymbol ifNotNil: [self startState]).
	self changed.