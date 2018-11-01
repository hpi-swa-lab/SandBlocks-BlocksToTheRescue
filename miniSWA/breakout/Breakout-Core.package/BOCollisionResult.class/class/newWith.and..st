instance creation
newWith: ownCollisionStrategy and: otherCollisionStrategy

	^ self new
		ownCStrategy: ownCollisionStrategy;
		othersCStrategy: otherCollisionStrategy;
		yourself