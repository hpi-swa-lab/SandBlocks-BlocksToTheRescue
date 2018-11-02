event handling
brickDestroyed: aBOBrick

	self score: self score + aBOBrick points.
	self changed: #score with: self score.
	self brickEntities isEmpty ifTrue: [self gameWon].