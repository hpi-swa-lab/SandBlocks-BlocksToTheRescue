event handling
mouseDown: evt

	(self allEntitiesOfType: BOPaddle) do: [:entity | entity handleBallSpawn].