as yet unclassified
testMoveDown

	| level |
	level := self getTestLevel.
	level moveDown.
	self assert: self initialPlayerPosition + (0 @ 1) equals: level playerPosition. 