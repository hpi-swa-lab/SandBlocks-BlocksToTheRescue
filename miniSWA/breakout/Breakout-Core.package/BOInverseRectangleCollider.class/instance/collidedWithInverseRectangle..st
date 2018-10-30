collision
collidedWithInverseRectangle: aBOInverseRectangleCollider

	^ BOCollisionResult new
		firstCollider: self;
		secondCollider: aBOInverseRectangleCollider;
		yourself