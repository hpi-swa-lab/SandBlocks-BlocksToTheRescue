updating
gameWon
	self gameStatus: #won.
 	self physics removeEverything.
	self ui showVictory.