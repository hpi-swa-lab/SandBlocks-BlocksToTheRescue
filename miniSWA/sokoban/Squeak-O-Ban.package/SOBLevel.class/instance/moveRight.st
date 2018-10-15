as yet unclassified
moveRight
	
	| destination |
	destination := self playerPosition + 1 @ 0. 
	(self at: destination isFree) ifTrue: 
		[self player moveRight.
		self updatePlayerPosition.]