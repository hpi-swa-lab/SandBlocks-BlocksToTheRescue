game loop
processRound

	self 
		moveSnakes;
		detectCollisions;
		spawnFodderIfNeeded;
		drawGameObjects.
	