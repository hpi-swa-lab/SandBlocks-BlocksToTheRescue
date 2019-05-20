accessing
removeStateNamed: aSymbol

	| state |
	state := self states removeKey: aSymbol.
	self
		changed: #states;
		changed: #removedState with: state;
		changed.
	state
		changed: #removed;
		breakDependents.
	^ state