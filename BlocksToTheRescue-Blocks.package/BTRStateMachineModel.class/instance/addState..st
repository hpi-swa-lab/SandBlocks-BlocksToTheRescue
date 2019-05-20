accessing
addState: aSymbol

	| state |
	state := self states at: aSymbol put: (self pvtCreateState: aSymbol).
	self
		"changed: #states;"
		changed: #addedState with: state.
	"state changed: #created."
	self changed.
	^ state