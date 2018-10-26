as yet unclassified
collidedWithRectangle: aBORectangleCollision

	(self bounds intersect: aBORectangleCollision bounds)
		ifFalse: [^ self noCollisionWith: aBORectangleCollision].

	^ BOCollisionResult new
			firstCollider: self;
			secondCollider: aBORectangleCollision;
			yourself