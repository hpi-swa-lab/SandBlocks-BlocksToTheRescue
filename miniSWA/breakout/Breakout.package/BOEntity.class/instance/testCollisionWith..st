entity-collision
testCollisionWith: aBOEntity

	self collisionHandlers at: aBOEntity class
		ifPresent: [:collisionHandler |
			collisionHandler ifNil: [^ self].
			(self shouldHandleCollisionWith: aBOEntity) ifFalse: [^ self].
			collisionHandler value: aBOEntity].