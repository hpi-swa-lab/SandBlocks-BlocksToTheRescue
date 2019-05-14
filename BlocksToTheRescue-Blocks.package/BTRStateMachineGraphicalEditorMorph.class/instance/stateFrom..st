accessing
stateFrom: aSymbolOrBTRState

	^ aSymbolOrBTRState isSymbol
			ifTrue: [self stateMachineModel stateNamed: aSymbolOrBTRState]
			ifFalse: aSymbolOrBTRState