deletion
removeFromWorld
	physics ifNotNil: [physics removeObject: self].
	self delete.