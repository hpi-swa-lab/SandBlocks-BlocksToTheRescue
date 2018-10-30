collision
collidedWithRectangle: aBORectangleCollider

	(self rectangleCollided: aBORectangleCollider)
		ifFalse: [^ self noCollisionWith: aBORectangleCollider].

	^ BOCollisionResult new
		firstCollider: self;
		secondCollider: aBORectangleCollider;
		yourself