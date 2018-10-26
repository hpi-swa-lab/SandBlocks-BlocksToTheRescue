entities
collideEntities

	self allCollidingEntities combinations: 2 atATimeDo: [:entities |
		entities first testCollisionWith: entities second].