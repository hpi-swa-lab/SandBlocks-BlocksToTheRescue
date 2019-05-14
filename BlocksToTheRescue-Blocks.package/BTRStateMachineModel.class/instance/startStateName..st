accessing
startStateName: aSymbol
	startStateName := aSymbol.
	self changed: #startState with: self startState.