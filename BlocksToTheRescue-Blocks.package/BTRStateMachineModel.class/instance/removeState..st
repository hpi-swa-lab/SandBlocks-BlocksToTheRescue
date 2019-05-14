accessing
removeState: aSymbolOrBTRState

	^ aSymbolOrBTRState isSymbol
		ifTrue: [self removeStateNamed: aSymbolOrBTRState]
		ifFalse: [self removeStateNamed: aSymbolOrBTRState name]