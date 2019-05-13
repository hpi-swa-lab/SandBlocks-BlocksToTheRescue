accessing
removeStateNamed: aSymbol

	| state |
	state := self states removeKey: aSymbol.
	self changed: #states.
	state changed: #removed.
	^ state