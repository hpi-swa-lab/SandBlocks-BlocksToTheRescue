state interface
onCollisionWith: anObject
	self movementStrategy collisionWith: anObject.
	self onCollisionBlock value: anObject value: self.