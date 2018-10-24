as yet unclassified
testBoxIsMoved

	| level box boxposition |
	level := self getTestLevel.
	boxposition := self initialPlayerPosition + (1 @ 0).
	box := (level at: boxposition) occupant.
	self assert: box isBox.
	level moveRight.
	self assert: boxposition + (1 @ 0) equals: box position.
	self assert: box equals: (level at: (boxposition  + (1 @ 0))) occupant. 