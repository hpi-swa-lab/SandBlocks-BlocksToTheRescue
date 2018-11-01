entities
destroyBrick: aBOBrick

	self score: self score + aBOBrick points.
	self destroyEntity: aBOBrick.