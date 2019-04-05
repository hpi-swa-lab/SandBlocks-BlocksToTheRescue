public interface
removeObject: anObject
	collisionObjects remove: anObject ifAbsent: [].
	movingObjects remove: anObject ifAbsent: [].
	
