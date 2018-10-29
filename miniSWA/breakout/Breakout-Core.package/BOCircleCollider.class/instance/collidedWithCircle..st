collision
collidedWithCircle: aBOCircleCollider

	(self hasCollided: aBOCircleCollider)
		ifFalse: [^ self noCollisionWith: aBOCircleCollider].

	^ BOCollisionResult new
		firstCollider: self;
		secondCollider: aBOCircleCollider;
		yourself