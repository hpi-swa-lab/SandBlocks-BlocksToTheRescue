*BlocksToTheRescue-Core
lookup: aStringOrSymbol

	| originalNewSymbols originalSymbolTable |
	aStringOrSymbol isBTRBlockModel ifTrue: [^ aStringOrSymbol].
	originalNewSymbols := NewSymbols.
	originalSymbolTable := SymbolTable.
	^(originalNewSymbols like: aStringOrSymbol) ifNil: [
		originalSymbolTable like: aStringOrSymbol ]