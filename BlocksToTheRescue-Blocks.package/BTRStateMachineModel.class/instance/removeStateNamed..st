accessing
removeStateNamed: aSymbol

	| state |
	state := self states removeKey: aSymbol.
	self states do: [:each | each removeTransitionsTo: aSymbol].
	self changed: #removedState with: state.
	state
		changed: #removed;
		breakDependents.
	self changed.
	^ state