collision
testCollisionWith: aBOEntity

	(self boundsCollideWith: aBOEntity) ifFalse: [^ self].
	self flag: #todo.
	
	"Transcript showln: self asString, '->', aBOEntity."
	"self collisionHandlers at: aBOEntity class
		ifPresent: [:collisionHandler |
			collisionHandler ifNil: [^ self].
			(self shouldHandleCollisionWith: aBOEntity) ifFalse: [^ self].
			collisionHandler value: aBOEntity]."