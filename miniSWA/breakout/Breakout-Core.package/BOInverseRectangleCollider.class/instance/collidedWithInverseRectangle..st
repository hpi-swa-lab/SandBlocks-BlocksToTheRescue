collision
collidedWithInverseRectangle: aBOInverseRectangleCollider

	^ (self resultWith: aBOInverseRectangleCollider)
		collided: true;
		yourself