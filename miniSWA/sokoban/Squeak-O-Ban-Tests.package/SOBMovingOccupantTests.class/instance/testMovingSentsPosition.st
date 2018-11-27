as yet unclassified
testMovingSentsPosition

	| occupant observer destination |
	occupant := SOBMovingOccupant new.
	observer := SOBTestObserver new.
	occupant addDependent: observer.
	destination := 10 @ 10.
	occupant moveTo: destination.
	self assert: (observer hasSeen: #position with: destination).