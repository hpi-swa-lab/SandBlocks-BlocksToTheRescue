collision
collidedWithInverseRectangle: aBOInverseRectangleCollider

	(self inverseRectangleCollided: aBOInverseRectangleCollider)
		ifFalse: [^ self noCollisionWith: aBOInverseRectangleCollider].

	^ BOCollisionResult new
		firstCollider: self;
		secondCollider: aBOInverseRectangleCollider;
		yourself