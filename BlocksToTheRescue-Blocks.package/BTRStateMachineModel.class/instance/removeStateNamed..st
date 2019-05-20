accessing
removeStateNamed: aSymbol

	| state |
	Transcript showln: 'model remove state: ', aSymbol.
	state := self states removeKey: aSymbol.
	self
		changed: #states;
		changed: #removedState with: state.
	state
		changed: #removed;
		breakDependents.
	self changed.
	^ state