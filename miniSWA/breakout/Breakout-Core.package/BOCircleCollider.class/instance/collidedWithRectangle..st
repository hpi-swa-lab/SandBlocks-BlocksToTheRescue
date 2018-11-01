collision
collidedWithRectangle: aBORectangleCollider

	^ aBORectangleCollider circleCollided: (aBORectangleCollider resultWith: self)