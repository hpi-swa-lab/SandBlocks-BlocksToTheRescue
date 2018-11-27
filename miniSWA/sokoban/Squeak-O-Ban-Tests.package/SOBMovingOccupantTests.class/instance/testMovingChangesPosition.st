as yet unclassified
testMovingChangesPosition

	| occupant start destination |
	occupant := SOBMovingOccupant new.
	start := 3 @ 3.
	destination := 6 @ 6.
	occupant moveTo: start.
	self assert: start equals: occupant position.
	occupant moveTo: destination.
	self assert: destination equals: occupant position. 