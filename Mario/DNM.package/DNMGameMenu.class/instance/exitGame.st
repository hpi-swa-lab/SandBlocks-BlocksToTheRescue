initialization
exitGame
	gameWorld ifNotNil: [gameWorld delete. gameWorld := nil].