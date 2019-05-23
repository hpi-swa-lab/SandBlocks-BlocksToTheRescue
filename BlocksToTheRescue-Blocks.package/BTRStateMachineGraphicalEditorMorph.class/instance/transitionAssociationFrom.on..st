accessing
transitionAssociationFrom: aSymbolOrBTRStateTransition on: aSymbolOrBTRState

	^ (self stateFrom: aSymbolOrBTRState) in: [:state |
		state -> (aSymbolOrBTRStateTransition isSymbol
			ifTrue: [state transitionNamed: aSymbolOrBTRStateTransition]
			ifFalse: [aSymbolOrBTRStateTransition])]