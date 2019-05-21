accessing
removeStateNamed: aSymbol

	| state |
	state := self states removeKey: aSymbol.
	self
		changed: #states;
		changed: #removedState with: state.
	state
		changed: #removed;
		breakDependents.
	self changed.
	^ state