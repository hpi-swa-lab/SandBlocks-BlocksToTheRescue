testing
rectangleCollided: aBORectangleCollider

	^ aBORectangleCollider collisionBounds
	intersectsCircle: self radius
	at: self position