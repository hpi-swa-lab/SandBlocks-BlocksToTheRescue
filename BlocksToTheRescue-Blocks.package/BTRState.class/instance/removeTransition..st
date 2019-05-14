accessing
removeTransition: aSymbolOrBTRStateTransition

	^ aSymbolOrBTRStateTransition isSymbol
		ifTrue: [self removeTransitionNamed: aSymbolOrBTRStateTransition]
		ifFalse: [self removeTransitionNamed: aSymbolOrBTRStateTransition name]