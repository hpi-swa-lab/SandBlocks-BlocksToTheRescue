*BlocksToTheRescue-Core
lookup: aStringOrSymbol

	| originalNewSymbols originalSymbolTable |
	originalNewSymbols := NewSymbols.
	originalSymbolTable := SymbolTable.
	^(originalNewSymbols like: aStringOrSymbol) ifNil: [
		originalSymbolTable like: aStringOrSymbol ]