accessing
addState: aSymbol

	| state |
	state := self states at: aSymbol put: (self pvtCreateState: aSymbol).
	self changed: #addedState with: state.
	self changed.
	^ state