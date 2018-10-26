collision
noCollisionWith: aBOCollisionBound

	^ BONoCollisionResult new
			firstCollider: self;
			secondCollider: aBOCollisionBound;
			yourself