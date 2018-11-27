as yet unclassified
testMoveLeft

	| level |
	level := self getTestLevel.
	level moveLeft.
	self assert: self initialPlayerPosition + (-1 @ 0) equals: level playerPosition. 