collision
noCollisionWith: aBOCollisionStrategy

	^ self resultWith: aBOCollisionStrategy;
		collided: false;
		yourself