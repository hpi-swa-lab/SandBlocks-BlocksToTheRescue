game state
gameOver

	self tetromino: nil.
	self changed.
	UIManager default inform: 'Game Over!'.