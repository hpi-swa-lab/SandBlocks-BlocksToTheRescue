as yet unclassified
testMoveRight

	| level |
	level := self getTestLevel.
	level moveRight.
	self assert: self initialPlayerPosition + (1 @ 0) equals: level playerPosition. 