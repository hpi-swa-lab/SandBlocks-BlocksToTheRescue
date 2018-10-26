collision
testCollisionWith: aBOEntity

	self onCollisionWith: aBOEntity
		do: [:collision |
			self handleCollision: collision with: aBOEntity.
			aBOEntity handleCollision: collision with: self].