updating
gameOver
	self gameStatus: #gameOver.
	self mario removeFromWorld.
	DNMSound singleton shutDownSoundsRequestedFrom: self.
	DNMSound singleton play: #gameOverSound for: self.
	self ui showGameOver.