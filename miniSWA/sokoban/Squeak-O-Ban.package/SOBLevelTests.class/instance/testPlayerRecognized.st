as yet unclassified
testPlayerRecognized

	| level |
	level := self getTestLevel.
	self assert: (level at: self initialPlayerPosition) occupant equals: level player.
	self assert: self initialPlayerPosition equals: level player position. 