entities
destroyBrick: aBOBrick

	self score: self score + aBOBrick points.
	self destroyEntity: aBOBrick.
	self brickEntities isEmpty ifTrue: [self message: 'You won!'].