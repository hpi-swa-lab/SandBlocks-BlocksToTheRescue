collision
onCollisionWith: aBOEntity do: aBlockClosure

	(self collisionStrategy collidedWith: aBOEntity collisionStrategy)
		onCollisionDo: aBlockClosure.