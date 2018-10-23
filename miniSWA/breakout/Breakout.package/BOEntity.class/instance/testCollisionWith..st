entity-collision
testCollisionWith: aBOEntity

	self collisionHandlers at: aBOEntity class
		ifPresent: [:collisionHandler |
			(self couldHandleCollisionWith: aBOEntity) ifFalse: [^ self].
			collisionHandler value: aBOEntity].