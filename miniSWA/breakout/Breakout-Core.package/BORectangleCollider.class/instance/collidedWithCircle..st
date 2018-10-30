collision
collidedWithCircle: aBOCircleCollider

	(self circleCollided: aBOCircleCollider)
		ifFalse: [^ self noCollisionWith: aBOCircleCollider].

	^ BOCollisionResult new
		firstCollider: self;
		secondCollider: aBOCircleCollider;
		yourself