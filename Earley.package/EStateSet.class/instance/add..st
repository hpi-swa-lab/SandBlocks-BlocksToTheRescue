adding
add: anEState

	(self hasState: anEState)
		ifFalse: [self collection add: anEState]