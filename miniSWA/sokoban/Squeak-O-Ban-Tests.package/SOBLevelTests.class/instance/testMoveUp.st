as yet unclassified
testMoveUp

	| level |
	level := self getTestLevel.
	level moveUp.
	self assert: self initialPlayerPosition + (0 @ -1) equals: level playerPosition. 