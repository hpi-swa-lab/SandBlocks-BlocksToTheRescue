accessing
addState: aSymbol

	| state |
	state := self states at: aSymbol put: (self pvtCreateState: aSymbol).
	self changed: #states.
	state changed: #created.
	^ state