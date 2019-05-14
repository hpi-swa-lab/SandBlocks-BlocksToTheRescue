accessing
removeTransitionNamed: aSymbol

	| transition |
	transition := self transitions removeKey: aSymbol.
	self changed: #transitions.
	transition changed: #removed.
	^ transition