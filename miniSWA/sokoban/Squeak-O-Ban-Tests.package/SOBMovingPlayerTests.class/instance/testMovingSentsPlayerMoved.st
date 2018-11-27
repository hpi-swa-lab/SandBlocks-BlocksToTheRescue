as yet unclassified
testMovingSentsPlayerMoved

	| player observer destination |
	player := SOBPlayer new.
	observer := SOBTestObserver new.
	player addDependent: observer.
	destination := -2 @ -2.
	player moveTo: destination.
	self assert: (observer hasSeen: #playerMoved).