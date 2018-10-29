collision
noCollisionWith: aBOCollisionStrategy

	^ BONoCollisionResult new
			firstCollider: self;
			secondCollider: aBOCollisionStrategy;
			yourself