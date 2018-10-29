collision
collidedWithRectangle: aBORectangleCollider

	(self hasCollided: aBORectangleCollider)
		ifFalse: [^ self noCollisionWith: aBORectangleCollider].

	^ BOCollisionResult new
			firstCollider: self;
			secondCollider: aBORectangleCollider;
			yourself