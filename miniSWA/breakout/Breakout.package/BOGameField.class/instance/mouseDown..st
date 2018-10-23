event handling
mouseDown: evt

	self paddleManager entities do: [:entity | entity handleBallSpawn].