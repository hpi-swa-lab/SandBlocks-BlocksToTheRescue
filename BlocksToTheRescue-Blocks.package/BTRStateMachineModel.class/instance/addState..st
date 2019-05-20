accessing
addState: aSymbol

	| state |
	state := self states at: aSymbol put: (self pvtCreateState: aSymbol).
	self
		changed: #states;
		changed: #addedState with: state;
		changed.
	state
		changed: #created;
		addDependent: self.
	^ state