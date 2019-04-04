updating
update
	self physics updateMovingObjects.
	(self isGameOver) ifTrue: [self gameOver].
	self
		updateOffset;
		updateUI.