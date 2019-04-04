initialization
startNewGame
	gameWorld ifNil: [
		gameWorld := (DNMGameWorld newWithSpecification: self specification)
			position: 0@20;
			startNewGame;
			yourself].