collision attack protocoll
collisionWith: anObject
	super collisionWith: anObject.
	self state onCollisionWith: anObject.